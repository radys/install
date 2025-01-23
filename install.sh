#!/bin/bash

# https://wiki.cesnet.cz/doku.php?id=short%3Astart
# https://ces.net/install
# https://ces.net/ubuntu

# GRML SSH server:
service ssh start

grml2ram
systemctl daemon-reload

mkdir /root/.ssh
cat << EOF > /root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9rL8tD0N0qzxG63un1maYn1PJZVIofgiXBkuAiP/yRV1NGfQWuxrH7899LeTxeRHEDZ3WcA29CaWQXJ5AmYxu004vPmx5p/ARVNfuezv8GoJ+QZZy0lPBhuPRsNMX9wgs3NTOzFx+O4xMq7i0EpmgyrB0eYcCknUwii0iYoZ78V6xkiPVSNKMuNZCX1fT2ThGlTfTg50rf+eECfkGMUvneR1L5DSh+/JhOrXiZnD+n+yID3rlwr6X1kdu+W7Oxd0JxOR+6+Io8gFcFl/y87+MQXPApwhNrKB7YwGH1ZDG0CQqtnLtx4B7IhlAuaOeYQJwAtp7awK7PZRGpkYzwUQ5 bodik@bodik
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDB8+ZsHJO7Vw8ftTdLy1/on+U80/a8khWdEv6ePsvAtTqI2FDw6TuAZtjxqFpU7ZsXqdyWvH1bqkMwtkYjLsJ58ti4J7ubsKxpMPS7tDj88d0feR5MMrkCAAfi6BWRKwcjQ0zi/G6ulwSWsgw09YPh/3ndLBDtixAm9mbYB6W3VOsv+nBjz6snbBgK+OzrPv+79SM1yOgfuBaQAOyA95GKUp7UWFZLcdnzewEnRPa6EL2Y7wKQzj5zUqpNYwvtbMUokQImO69vTi/i5RrBJYwiPOQLN8V1rG8G+udt60UygsFj+TkE/QnIvyCPhnhoSnzu9ty8uwoXw2ZYpOfQgJeF kostenec@cesnet.cz
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC9ZI81z8gsefvkO+1F9fsSEt+N0KnZWpGKXxOm4eCy1f7nAep/EVOWzDXVFkfc+7wQgqPfQKbGK534R3xtz5gparATxlVPMxMXYkKYVWYKpP7EOvZ1QAbXiHmWpRL/T2CubqAC+aHun71qwYRnNeuPyjkHx8Fn5tTTvUPcFCabR9EEtrcpTjT9iWzzYqdJtbAuXKD8jumLDGXozhbJGB3oGOPUMi6gS8DptAfVnzmdYMi9KM08BQO/Kzy8qc29E2x8h85ytneemPZF5JlPAiALfcBaKf86ouU0FAqg1qbrFI5mpFboBQxafPQi7CgZcEpNUIQNXX5wu+ooyUAX0b7ju6EnwlVeKufzLp2EYfQsK83GKqYPOH/wZmwzaczwedwF/7WvX3CgQQkw94LkB2c2bbqKpcvIYVRtZcMQYB4OKS+jHcGRZPfK0WTHVcuEIt4wqodwunl/iq4uvhVTvdGtlFdFWX1/KeYSPxJypCHPpeTWaXNHOLee64zDFSAlDtbt1jMmZuZsEKc3bJcQ6wudEpLt24G4USXOrp5qP1mPFz8bSUt9j/OPgq3jJBFNM8OzfZBfB39IAEqs+3n973HLyGSMGEdbHR+YjvSz7i6OGEzgvBOaagxH3tzWHH4Vg+YbWlaxB6lK+Z9Z7XiBFGI50e0MRKXNtgoPEjvpkGGFDQ== radomir@orkac.cz
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDqy2jVJNaX3Gww/X8xDzgiFIuLYBwy7++5lUyoqfavgBeNtmV9EXAugBNAV83lB085u4fg7GMRJ27g3tY1DBovn2UOfSAgpGSaoeQmv86fVhJf4HsDSEHdMJfcOLU3eMY/VQINU2MedrwiblL9pcGvn6C5Ak7ztN93vk6r3cyTJhrV2vgZZ2c5IMErKjVufkiuhrCCl7x1LZEHFTUgEJcIMzbqlp7McmJK5+1w47bOYFsVxqyc4cCwCCvdGinNDcLibL1b7PPuVj4IHL6XiNAAkig1hPpGBiNOqD2RoCvdu34YkvKD3oxsBQCDA0pWX/G+PG0Uqpk8xph4CRasTthz ales@ales
ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAgEAx79LiEZWpT7NYpJEekMZdsyk7snQl/WtbZa96E642AWIN8+jBAkuGLwrSCckocNm1I2zMogKemCUQtfkgmpy6kQKbgwPVVfLSKA0LDn/jidBfaaYjTPiCb6nJ+FM7jll6aI5JT0puN85AgZxCtPvsMzuSRe8ZOZC8GYfvFt0Rms+moRBFeI9e4JLQJIaUn/7tPj/RjKu9H5OD0Xy2LITQZQkCkIbhekGE4bS4gXD4bz+01Yqz+FO+oQueLHD+P/stfl6QrMWd54AU3oimHzFrg0VogCL3/P7blxwU5gQsXEzF1qACMKSFgvVr0v+Yd39VKZ/aJIidqAojnaJszWodJuVdskmtQJxX75abBdcX1/Mp3ikBw+8LJUGH7Oab5aGH6DKojKGUKu6TLbgbtq9Dm2BvmUr1Z/s3FM4UWgxs26Xi/VBT+aVKRlDHLuSjvbWSFQHwzyWbeamrplKJPdAclp+RC03No9LrKXeAE+qpr9SYZlIiP9vJbtywS1FGnQvKJCKublVwrFI18XRj6B8tgriczABGKnAM6+dJKMWbr6mMKFTFvZc+y0AyoYC4gyWH36H2+Vamhy12YPCzWHThQIZemkPMnZ5eKw+bu8UXzO9RNA6CG2PG1/wwNbxFQeVMu2SQ0LjrKZeD44SJfdW9hhCRC6K454jOWNKTqIcbEc= MKylian
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDVCK8YH1W/Bivlp7LeW9XSXlcFBi3R1hcxC8sCHpqBqoc8+/nUa9w7A6WEMlY9YNS+9k1ABGlVr2y4+14hWISKTz9axWpAfaZ+SG0A+8HxD3KnYnfYkb6yMYJKErj5n06Vvaco7EW7/U+z4qnIgcVapIGjfoO9PSpb+W2hyQPaVix2XUVPOQd6GsBsyFxSXuZ2HwFR6ocv29KL/m/Z2Ij5+jk88T8HjviNpFXMst/JxZneUkSzYcpQiLwUQSGbKrnsSVFI2BtbFKGBjlKoB6n8hG4rINWPSu8ZUw7ZDp5IaOv0prlK6kOTIwqAZ6g/pDPO7vFXugf7RQQiy/ZxZNlMlYAeHNV2qbxyuHuBmWlsIDq+Y4DHVZ+iRPfzoB5rMpniK1/SYeotPXUHJiqZBJNNsLDOtzvoyYh885MJYV5La3KpZ9EWEOkyqMQ+eqYp7nLwpnB7Jutpm2dyOO/RsFzsg0EVzwyvmXUS2mYJ5CJcfkRQ9hG5XHbo5b3sRdik2QU= radys@ucebna_ft
EOF

read -p "Do you want to continue? [y/Y to proceed, anything else to abort]: " confirm
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo "Operation aborted."
    exit 1
fi

read -p "Do you want to continue? [y/Y to proceed, anything else to abort]: " confirm
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo "Operation aborted."
    exit 1
fi

# ---- Prepare disk /sda

DISK="/dev/nvme0n1"
P1="${DISK}p1"
P2="${DISK}p2"
P3="${DISK}p3"

if mount | grep "$DISK" > /dev/null; then
    echo "Chyba: Disk $DISK je používán. Odpojte všechny připojené oddíly."
    exit 1
fi

echo "Odpojuji připojené oddíly..."
for PART in $(lsblk -ln -o NAME "$DISK" | grep -E "^$(basename "$DISK")" | sed "s|^|/dev/|"); do
    umount "$PART" 2>/dev/null || true
done

parted --script "$DISK" mklabel gpt

echo "Vytvářím EFI boot oddíl..."
parted --script "$DISK" mkpart primary fat32 1MiB 1GiB
parted --script "$DISK" set 1 esp on

echo "Vytvářím Linuxový oddíl (root)..."
parted --script "$DISK" mkpart primary ext4 1GiB 200GiB

echo "Vytvářím Linuxový oddíl pro data..."
parted --script "$DISK" mkpart primary ext4 200GiB 100%

mkfs.fat -F32 $P1
mkfs.ext4 $P2
mkfs.ext4 $P3

echo "Hotovo! Výsledné rozdělení disku:"
parted --script "$DISK" print

mkdir /data
mount $P2 /data
wget -O /data/ubuntu.fsa https://owncloud.cesnet.cz/index.php/s/AzG4Y6OVO19Z0Ka/download
echo "time fsarchiver restfs /data/ubuntu.fsa id=0,dest=$P3 -c -"
time fsarchiver restfs /data/ubuntu.fsa id=0,dest=$P3 -c -

mount $P3 /mnt

mkdir -p /mnt/boot/efi
mount $P1 /mnt/boot/efi
#ls -al  /mnt/boot/
#ls -al  /mnt/boot/efi/

mount --bind /dev /mnt/dev
mount --bind /proc /mnt/proc
mount --bind /sys /mnt/sys

chroot /mnt /bin/bash -c 'apt update ; apt install -y net-tools open-vm-tools fail2ban vim mc timeshift openssh-server ; apt upgrade -y ; apt autoremove -y'
chroot /mnt /bin/bash -c 'systemctl enable ssh'
chroot /mnt /bin/bash -c 'ufw allow ssh'
#chroot /mnt /bin/bash -c 'grub-install'
chroot /mnt /bin/bash -c 'grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB'
chroot /mnt /bin/bash -c 'update-grub'

chroot /mnt /bin/bash -c "
  apt install grml-rescueboot -y
  sed -i 's/GRUB_TIMEOUT_STYLE=hidden/GRUB_TIMEOUT_STYLE=countdown/g' /etc/default/grub
  sed -i 's/GRUB_TIMEOUT=0/GRUB_TIMEOUT=5/g' /etc/default/grub
  echo 'CUSTOM_BOOTOPTIONS=\"ssh toram myconfig=$P2 scripts=init.sh\"' >> /etc/default/grml-rescueboot
  update-grml-rescueboot
  update-grub
"

mkdir -p /data/scripts
cat <<EOF> /data/scripts/init.sh
#!/bin/bash

mkdir -p /root/.ssh
cat <<EEOF> /root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9rL8tD0N0qzxG63un1maYn1PJZVIofgiXBkuAiP/yRV1NGfQWuxrH7899LeTxeRHEDZ3WcA29CaWQXJ5AmYxu004vPmx5p/ARVNfuezv8GoJ+QZZy0lPBhuPRsNMX9wgs3NTOzFx+O4xMq7i0EpmgyrB0eYcCknUwii0iYoZ78V6xkiPVSNKMuNZCX1fT2ThGlTfTg50rf+eECfkGMUvneR1L5DSh+/JhOrXiZnD+n+yID3rlwr6X1kdu+W7Oxd0JxOR+6+Io8gFcFl/y87+MQXPApwhNrKB7YwGH1ZDG0CQqtnLtx4B7IhlAuaOeYQJwAtp7awK7PZRGpkYzwUQ5 bodik@bodik
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDB8+ZsHJO7Vw8ftTdLy1/on+U80/a8khWdEv6ePsvAtTqI2FDw6TuAZtjxqFpU7ZsXqdyWvH1bqkMwtkYjLsJ58ti4J7ubsKxpMPS7tDj88d0feR5MMrkCAAfi6BWRKwcjQ0zi/G6ulwSWsgw09YPh/3ndLBDtixAm9mbYB6W3VOsv+nBjz6snbBgK+OzrPv+79SM1yOgfuBaQAOyA95GKUp7UWFZLcdnzewEnRPa6EL2Y7wKQzj5zUqpNYwvtbMUokQImO69vTi/i5RrBJYwiPOQLN8V1rG8G+udt60UygsFj+TkE/QnIvyCPhnhoSnzu9ty8uwoXw2ZYpOfQgJeF kostenec@cesnet.cz
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC9ZI81z8gsefvkO+1F9fsSEt+N0KnZWpGKXxOm4eCy1f7nAep/EVOWzDXVFkfc+7wQgqPfQKbGK534R3xtz5gparATxlVPMxMXYkKYVWYKpP7EOvZ1QAbXiHmWpRL/T2CubqAC+aHun71qwYRnNeuPyjkHx8Fn5tTTvUPcFCabR9EEtrcpTjT9iWzzYqdJtbAuXKD8jumLDGXozhbJGB3oGOPUMi6gS8DptAfVnzmdYMi9KM08BQO/Kzy8qc29E2x8h85ytneemPZF5JlPAiALfcBaKf86ouU0FAqg1qbrFI5mpFboBQxafPQi7CgZcEpNUIQNXX5wu+ooyUAX0b7ju6EnwlVeKufzLp2EYfQsK83GKqYPOH/wZmwzaczwedwF/7WvX3CgQQkw94LkB2c2bbqKpcvIYVRtZcMQYB4OKS+jHcGRZPfK0WTHVcuEIt4wqodwunl/iq4uvhVTvdGtlFdFWX1/KeYSPxJypCHPpeTWaXNHOLee64zDFSAlDtbt1jMmZuZsEKc3bJcQ6wudEpLt24G4USXOrp5qP1mPFz8bSUt9j/OPgq3jJBFNM8OzfZBfB39IAEqs+3n973HLyGSMGEdbHR+YjvSz7i6OGEzgvBOaagxH3tzWHH4Vg+YbWlaxB6lK+Z9Z7XiBFGI50e0MRKXNtgoPEjvpkGGFDQ== radomir@orkac.cz
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDqy2jVJNaX3Gww/X8xDzgiFIuLYBwy7++5lUyoqfavgBeNtmV9EXAugBNAV83lB085u4fg7GMRJ27g3tY1DBovn2UOfSAgpGSaoeQmv86fVhJf4HsDSEHdMJfcOLU3eMY/VQINU2MedrwiblL9pcGvn6C5Ak7ztN93vk6r3cyTJhrV2vgZZ2c5IMErKjVufkiuhrCCl7x1LZEHFTUgEJcIMzbqlp7McmJK5+1w47bOYFsVxqyc4cCwCCvdGinNDcLibL1b7PPuVj4IHL6XiNAAkig1hPpGBiNOqD2RoCvdu34YkvKD3oxsBQCDA0pWX/G+PG0Uqpk8xph4CRasTthz ales@ales
ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAgEAx79LiEZWpT7NYpJEekMZdsyk7snQl/WtbZa96E642AWIN8+jBAkuGLwrSCckocNm1I2zMogKemCUQtfkgmpy6kQKbgwPVVfLSKA0LDn/jidBfaaYjTPiCb6nJ+FM7jll6aI5JT0puN85AgZxCtPvsMzuSRe8ZOZC8GYfvFt0Rms+moRBFeI9e4JLQJIaUn/7tPj/RjKu9H5OD0Xy2LITQZQkCkIbhekGE4bS4gXD4bz+01Yqz+FO+oQueLHD+P/stfl6QrMWd54AU3oimHzFrg0VogCL3/P7blxwU5gQsXEzF1qACMKSFgvVr0v+Yd39VKZ/aJIidqAojnaJszWodJuVdskmtQJxX75abBdcX1/Mp3ikBw+8LJUGH7Oab5aGH6DKojKGUKu6TLbgbtq9Dm2BvmUr1Z/s3FM4UWgxs26Xi/VBT+aVKRlDHLuSjvbWSFQHwzyWbeamrplKJPdAclp+RC03No9LrKXeAE+qpr9SYZlIiP9vJbtywS1FGnQvKJCKublVwrFI18XRj6B8tgriczABGKnAM6+dJKMWbr6mMKFTFvZc+y0AyoYC4gyWH36H2+Vamhy12YPCzWHThQIZemkPMnZ5eKw+bu8UXzO9RNA6CG2PG1/wwNbxFQeVMu2SQ0LjrKZeD44SJfdW9hhCRC6K454jOWNKTqIcbEc= MKylian
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDVCK8YH1W/Bivlp7LeW9XSXlcFBi3R1hcxC8sCHpqBqoc8+/nUa9w7A6WEMlY9YNS+9k1ABGlVr2y4+14hWISKTz9axWpAfaZ+SG0A+8HxD3KnYnfYkb6yMYJKErj5n06Vvaco7EW7/U+z4qnIgcVapIGjfoO9PSpb+W2hyQPaVix2XUVPOQd6GsBsyFxSXuZ2HwFR6ocv29KL/m/Z2Ij5+jk88T8HjviNpFXMst/JxZneUkSzYcpQiLwUQSGbKrnsSVFI2BtbFKGBjlKoB6n8hG4rINWPSu8ZUw7ZDp5IaOv0prlK6kOTIwqAZ6g/pDPO7vFXugf7RQQiy/ZxZNlMlYAeHNV2qbxyuHuBmWlsIDq+Y4DHVZ+iRPfzoB5rMpniK1/SYeotPXUHJiqZBJNNsLDOtzvoyYh885MJYV5La3KpZ9EWEOkyqMQ+eqYp7nLwpnB7Jutpm2dyOO/RsFzsg0EVzwyvmXUS2mYJ5CJcfkRQ9hG5XHbo5b3sRdik2QU= radys@ucebna_ft
EEOF
EOF

chmod +x /data/scripts/init.sh

mkdir -p /mnt/root/.ssh
cat << EOF > /mnt/root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9rL8tD0N0qzxG63un1maYn1PJZVIofgiXBkuAiP/yRV1NGfQWuxrH7899LeTxeRHEDZ3WcA29CaWQXJ5AmYxu004vPmx5p/ARVNfuezv8GoJ+QZZy0lPBhuPRsNMX9wgs3NTOzFx+O4xMq7i0EpmgyrB0eYcCknUwii0iYoZ78V6xkiPVSNKMuNZCX1fT2ThGlTfTg50rf+eECfkGMUvneR1L5DSh+/JhOrXiZnD+n+yID3rlwr6X1kdu+W7Oxd0JxOR+6+Io8gFcFl/y87+MQXPApwhNrKB7YwGH1ZDG0CQqtnLtx4B7IhlAuaOeYQJwAtp7awK7PZRGpkYzwUQ5 bodik@bodik
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDB8+ZsHJO7Vw8ftTdLy1/on+U80/a8khWdEv6ePsvAtTqI2FDw6TuAZtjxqFpU7ZsXqdyWvH1bqkMwtkYjLsJ58ti4J7ubsKxpMPS7tDj88d0feR5MMrkCAAfi6BWRKwcjQ0zi/G6ulwSWsgw09YPh/3ndLBDtixAm9mbYB6W3VOsv+nBjz6snbBgK+OzrPv+79SM1yOgfuBaQAOyA95GKUp7UWFZLcdnzewEnRPa6EL2Y7wKQzj5zUqpNYwvtbMUokQImO69vTi/i5RrBJYwiPOQLN8V1rG8G+udt60UygsFj+TkE/QnIvyCPhnhoSnzu9ty8uwoXw2ZYpOfQgJeF kostenec@cesnet.cz
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC9ZI81z8gsefvkO+1F9fsSEt+N0KnZWpGKXxOm4eCy1f7nAep/EVOWzDXVFkfc+7wQgqPfQKbGK534R3xtz5gparATxlVPMxMXYkKYVWYKpP7EOvZ1QAbXiHmWpRL/T2CubqAC+aHun71qwYRnNeuPyjkHx8Fn5tTTvUPcFCabR9EEtrcpTjT9iWzzYqdJtbAuXKD8jumLDGXozhbJGB3oGOPUMi6gS8DptAfVnzmdYMi9KM08BQO/Kzy8qc29E2x8h85ytneemPZF5JlPAiALfcBaKf86ouU0FAqg1qbrFI5mpFboBQxafPQi7CgZcEpNUIQNXX5wu+ooyUAX0b7ju6EnwlVeKufzLp2EYfQsK83GKqYPOH/wZmwzaczwedwF/7WvX3CgQQkw94LkB2c2bbqKpcvIYVRtZcMQYB4OKS+jHcGRZPfK0WTHVcuEIt4wqodwunl/iq4uvhVTvdGtlFdFWX1/KeYSPxJypCHPpeTWaXNHOLee64zDFSAlDtbt1jMmZuZsEKc3bJcQ6wudEpLt24G4USXOrp5qP1mPFz8bSUt9j/OPgq3jJBFNM8OzfZBfB39IAEqs+3n973HLyGSMGEdbHR+YjvSz7i6OGEzgvBOaagxH3tzWHH4Vg+YbWlaxB6lK+Z9Z7XiBFGI50e0MRKXNtgoPEjvpkGGFDQ== radomir@orkac.cz
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDqy2jVJNaX3Gww/X8xDzgiFIuLYBwy7++5lUyoqfavgBeNtmV9EXAugBNAV83lB085u4fg7GMRJ27g3tY1DBovn2UOfSAgpGSaoeQmv86fVhJf4HsDSEHdMJfcOLU3eMY/VQINU2MedrwiblL9pcGvn6C5Ak7ztN93vk6r3cyTJhrV2vgZZ2c5IMErKjVufkiuhrCCl7x1LZEHFTUgEJcIMzbqlp7McmJK5+1w47bOYFsVxqyc4cCwCCvdGinNDcLibL1b7PPuVj4IHL6XiNAAkig1hPpGBiNOqD2RoCvdu34YkvKD3oxsBQCDA0pWX/G+PG0Uqpk8xph4CRasTthz ales@ales
ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAgEAx79LiEZWpT7NYpJEekMZdsyk7snQl/WtbZa96E642AWIN8+jBAkuGLwrSCckocNm1I2zMogKemCUQtfkgmpy6kQKbgwPVVfLSKA0LDn/jidBfaaYjTPiCb6nJ+FM7jll6aI5JT0puN85AgZxCtPvsMzuSRe8ZOZC8GYfvFt0Rms+moRBFeI9e4JLQJIaUn/7tPj/RjKu9H5OD0Xy2LITQZQkCkIbhekGE4bS4gXD4bz+01Yqz+FO+oQueLHD+P/stfl6QrMWd54AU3oimHzFrg0VogCL3/P7blxwU5gQsXEzF1qACMKSFgvVr0v+Yd39VKZ/aJIidqAojnaJszWodJuVdskmtQJxX75abBdcX1/Mp3ikBw+8LJUGH7Oab5aGH6DKojKGUKu6TLbgbtq9Dm2BvmUr1Z/s3FM4UWgxs26Xi/VBT+aVKRlDHLuSjvbWSFQHwzyWbeamrplKJPdAclp+RC03No9LrKXeAE+qpr9SYZlIiP9vJbtywS1FGnQvKJCKublVwrFI18XRj6B8tgriczABGKnAM6+dJKMWbr6mMKFTFvZc+y0AyoYC4gyWH36H2+Vamhy12YPCzWHThQIZemkPMnZ5eKw+bu8UXzO9RNA6CG2PG1/wwNbxFQeVMu2SQ0LjrKZeD44SJfdW9hhCRC6K454jOWNKTqIcbEc= MKylian
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDVCK8YH1W/Bivlp7LeW9XSXlcFBi3R1hcxC8sCHpqBqoc8+/nUa9w7A6WEMlY9YNS+9k1ABGlVr2y4+14hWISKTz9axWpAfaZ+SG0A+8HxD3KnYnfYkb6yMYJKErj5n06Vvaco7EW7/U+z4qnIgcVapIGjfoO9PSpb+W2hyQPaVix2XUVPOQd6GsBsyFxSXuZ2HwFR6ocv29KL/m/Z2Ij5+jk88T8HjviNpFXMst/JxZneUkSzYcpQiLwUQSGbKrnsSVFI2BtbFKGBjlKoB6n8hG4rINWPSu8ZUw7ZDp5IaOv0prlK6kOTIwqAZ6g/pDPO7vFXugf7RQQiy/ZxZNlMlYAeHNV2qbxyuHuBmWlsIDq+Y4DHVZ+iRPfzoB5rMpniK1/SYeotPXUHJiqZBJNNsLDOtzvoyYh885MJYV5La3KpZ9EWEOkyqMQ+eqYp7nLwpnB7Jutpm2dyOO/RsFzsg0EVzwyvmXUS2mYJ5CJcfkRQ9hG5XHbo5b3sRdik2QU= radys@ucebna_ft
EOF

#cat << EOF >> /mnt/etc/sysctl.conf
#net.ipv6.conf.all.disable_ipv6 = 1
#net.ipv6.conf.default.disable_ipv6 = 1
#net.ipv6.conf.lo.disable_ipv6 = 1
#EOF

cat << EOF > /mnt/etc/fstab
/dev/nvme0n1p3 / ext4 defaults 0 1
/dev/nvme0n1p1 /boot/efi vfat defaults 0 1
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

#umount -R /mnt
echo "Instalace dokončena."
