#!/bin/bash

restore-config /mnt/grml/scripts/config.tbz
ifup wlan0
apt update
apt install -y timeshift

wget -O /root/install.sh ces.net/install
chmod +x /root/install.sh
echo '#!/bin/bash' > /root/up.sh
echo 'ifdown wlan0 ; ifup wlan0' >> /root/up.sh
chmod +x /root/up.sh
