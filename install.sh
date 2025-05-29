#!/bin/bash

# https://wiki.cesnet.cz/doku.php?id=short%3Astart
# https://ces.net/install
# https://ces.net/ubuntu

PASSWORD="-"
DATA="200GiB"
DISK="/dev/nvme0n1p"
#DATA="100GiB"
#DISK="/dev/sda"
P1="${DISK}1"
P2="${DISK}2"
P3="${DISK}3"

# GRML SSH server:
service ssh start

grml2ram
systemctl daemon-reload

mkdir /root/.ssh
wget -O /root/.ssh/authorized_keys https://raw.githubusercontent.com/radys/install/refs/heads/main/authorized_keys

###read -p "Do you want to recreate disk $DISK? [y/N to proceed, anything else to abort]: " confirm
confirm=${confirm:-n}
if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
   echo "Recreating disk $DISK..."
   # ---- Prepare disk /sda
   if mount | grep "$DISK" > /dev/null; then
      echo "Chyba: Disk $DISK je používán. Odpojte všechny připojené oddíly."
      exit 1
   fi

   echo "Unmounting mounted partitions..."
   for PART in $(lsblk -ln -o NAME "$DISK" | grep -E "^$(basename "$DISK")" | sed "s|^|/dev/|"); do
      umount "$PART" 2>/dev/null || true
   done

   parted --script "$DISK" mklabel gpt

   echo "Creating EFI boot partition..."
   parted --script "$DISK" mkpart primary fat32 1MiB 1GiB
   parted --script "$DISK" set 1 esp on

   echo "Creating Linux partition (root)..."
   parted --script "$DISK" mkpart primary ext4 1GiB $DATA

   echo "Creating Linux data partition..."
   parted --script "$DISK" mkpart primary ext4 $DATA 100%

   mkfs.fat -F32 $P1
   mkfs.ext4 -F $P2
   mkfs.ext4 -F $P3

   echo "Done! Final disk layout:"
   parted --script "$DISK" print

   systemctl daemon-reload
else
   echo "Skipping disk recreation."
fi

mkdir /data
mount $P2 /data

read -p "Do you want restore data with fsarchiver? [y/N to proceed, anything else to abort]: " confirm
if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
   [ -f /data/ubuntu.fsa ] || wget -O /data/ubuntu.fsa https://owncloud.cesnet.cz/index.php/s/AzG4Y6OVO19Z0Ka/download
   echo "time fsarchiver restfs /data/ubuntu.fsa id=0,dest=$P3 -c -"
   time fsarchiver restfs /data/ubuntu.fsa id=0,dest=$P3 -c $PASSWORD
else
   echo "Skipping data restoring."
fi

mount $P3 /mnt
mkdir -p /mnt/home/data
rm -rf /mnt/boot/efi
mkdir -p /mnt/boot/efi
mount $P1 /mnt/boot/efi
mount --bind /dev /mnt/dev
mount --bind /proc /mnt/proc
mount --bind /sys /mnt/sys

chroot /mnt /bin/bash -c 'apt update ; apt install -y net-tools open-vm-tools fail2ban vim mc timeshift openssh-server dbus-x11 udpcast; apt upgrade -y ; apt autoremove -y'
chroot /mnt /bin/bash -c 'systemctl enable ssh'
chroot /mnt /bin/bash -c 'ufw allow ssh'
chroot /mnt /bin/bash -c 'grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB'
#chroot /mnt /bin/bash -c 'grub-install'
chroot /mnt /bin/bash -c 'update-grub'

chroot /mnt /bin/bash -c "
  apt install grml-rescueboot -y
  sed -i 's/GRUB_TIMEOUT_STYLE=hidden/GRUB_TIMEOUT_STYLE=countdown/g' /etc/default/grub
  sed -i 's/GRUB_TIMEOUT=0/GRUB_TIMEOUT=5/g' /etc/default/grub
  echo 'CUSTOM_BOOTOPTIONS=\"ssh toram myconfig=$P2 scripts=init.sh\"' >> /etc/default/grml-rescueboot
  update-grml-rescueboot -f
  update-grub
"
# Configure all in grml and save config to load in booting
# mount $P2 /data
# save-config -all -file /data/scripts/config.tbz
# umount /data
# ... echo 'CUSTOM_BOOTOPTIONS=\"ssh toram myconfig=$P2 scripts=init.sh\"' >> /etc/default/grml-rescueboot
mkdir -p /data/scripts
wget -O /data/scripts/config.tbz https://raw.githubusercontent.com/radys/install/refs/heads/main/config.tbz
wget -O /data/scripts/init.sh https://raw.githubusercontent.com/radys/install/refs/heads/main/init.sh
chmod +x /data/scripts/init.sh

mkdir -p /mnt/root/.ssh
wget -O /mnt/root/.ssh/authorized_keys https://raw.githubusercontent.com/radys/install/refs/heads/main/authorized_keys

#cat << EOF >> /mnt/etc/sysctl.conf
#net.ipv6.conf.all.disable_ipv6 = 1
#net.ipv6.conf.default.disable_ipv6 = 1
#net.ipv6.conf.lo.disable_ipv6 = 1
#EOF

cat << EOF > /mnt/etc/fstab
$P3 / ext4 defaults 0 1
$P2 /home/data ext4 defaults 0 1
$P1 /boot/efi vfat defaults 0 1
/swap.img none swap sw 0 0
EOF

cat << EOF > /mnt/etc/NetworkManager/system-connections/ucebna.nmconnection 
[connection]
id=ucebna
type=wifi
autoconnect=true

[wifi]
ssid=ucebna
mode=infrastructure

[wifi-security]
key-mgmt=wpa-psk
psk=ucebnaWiFi

[ipv4]
method=auto

[ipv6]
method=auto
EOF

chmod 600 /mnt/etc/NetworkManager/system-connections/ucebna.nmconnection

UUIDP2=$(blkid -s UUID -o value $P2)
cat << EOF > /mnt/etc/timeshift/timeshift.json 
{
  "backup_device_uuid" : "$UUIDP2",
  "parent_device_uuid" : "",
  "do_first_run" : "false",
  "btrfs_mode" : "false",
  "include_btrfs_home_for_backup" : "false",
  "include_btrfs_home_for_restore" : "false",
  "stop_cron_emails" : "true",
  "schedule_monthly" : "false",
  "schedule_weekly" : "false",
  "schedule_daily" : "false",
  "schedule_hourly" : "false",
  "schedule_boot" : "false",
  "count_monthly" : "2",
  "count_weekly" : "3",
  "count_daily" : "5",
  "count_hourly" : "6",
  "count_boot" : "5",
  "snapshot_size" : "0",
  "snapshot_count" : "0",
  "date_format" : "%Y-%m-%d %H:%M:%S",
  "exclude" : [
    "+ /home/lab/**",
    "+ /home/flab/**",
    "+ /root/**"
  ],
  "exclude-apps" : []
}
EOF

#umount -R /mnt
echo "Checking GRML ISO file download:"
ls -al /mnt/boot/grml/
echo "Instalace dokončena."

# timeshift --create --comments "init"
