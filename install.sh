#!/bin/bash

# https://wiki.cesnet.cz/doku.php?id=short%3Astart
# https://ces.net/install

mkdir /home/partimag/
mkdir /root/.ssh
cat << EOF > /root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9rL8tD0N0qzxG63un1maYn1PJZVIofgiXBkuAiP/yRV1NGfQWuxrH7899LeTxeRHEDZ3WcA29CaWQXJ5AmYxu004vPmx5p/ARVNfuezv8GoJ+QZZy0lPBhuPRsNMX9wgs3NTOzFx+O4xMq7i0EpmgyrB0eYcCknUwii0iYoZ78V6xkiPVSNKMuNZCX1fT2ThGlTfTg50rf+eECfkGMUvneR1L5DSh+/JhOrXiZnD+n+yID3rlwr6X1kdu+W7Oxd0JxOR+6+Io8gFcFl/y87+MQXPApwhNrKB7YwGH1ZDG0CQqtnLtx4B7IhlAuaOeYQJwAtp7awK7PZRGpkYzwUQ5 bodik@bodik
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDB8+ZsHJO7Vw8ftTdLy1/on+U80/a8khWdEv6ePsvAtTqI2FDw6TuAZtjxqFpU7ZsXqdyWvH1bqkMwtkYjLsJ58ti4J7ubsKxpMPS7tDj88d0feR5MMrkCAAfi6BWRKwcjQ0zi/G6ulwSWsgw09YPh/3ndLBDtixAm9mbYB6W3VOsv+nBjz6snbBgK+OzrPv+79SM1yOgfuBaQAOyA95GKUp7UWFZLcdnzewEnRPa6EL2Y7wKQzj5zUqpNYwvtbMUokQImO69vTi/i5RrBJYwiPOQLN8V1rG8G+udt60UygsFj+TkE/QnIvyCPhnhoSnzu9ty8uwoXw2ZYpOfQgJeF kostenec@cesnet.cz
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC9ZI81z8gsefvkO+1F9fsSEt+N0KnZWpGKXxOm4eCy1f7nAep/EVOWzDXVFkfc+7wQgqPfQKbGK534R3xtz5gparATxlVPMxMXYkKYVWYKpP7EOvZ1QAbXiHmWpRL/T2CubqAC+aHun71qwYRnNeuPyjkHx8Fn5tTTvUPcFCabR9EEtrcpTjT9iWzzYqdJtbAuXKD8jumLDGXozhbJGB3oGOPUMi6gS8DptAfVnzmdYMi9KM08BQO/Kzy8qc29E2x8h85ytneemPZF5JlPAiALfcBaKf86ouU0FAqg1qbrFI5mpFboBQxafPQi7CgZcEpNUIQNXX5wu+ooyUAX0b7ju6EnwlVeKufzLp2EYfQsK83GKqYPOH/wZmwzaczwedwF/7WvX3CgQQkw94LkB2c2bbqKpcvIYVRtZcMQYB4OKS+jHcGRZPfK0WTHVcuEIt4wqodwunl/iq4uvhVTvdGtlFdFWX1/KeYSPxJypCHPpeTWaXNHOLee64zDFSAlDtbt1jMmZuZsEKc3bJcQ6wudEpLt24G4USXOrp5qP1mPFz8bSUt9j/OPgq3jJBFNM8OzfZBfB39IAEqs+3n973HLyGSMGEdbHR+YjvSz7i6OGEzgvBOaagxH3tzWHH4Vg+YbWlaxB6lK+Z9Z7XiBFGI50e0MRKXNtgoPEjvpkGGFDQ== radomir@orkac.cz
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDqy2jVJNaX3Gww/X8xDzgiFIuLYBwy7++5lUyoqfavgBeNtmV9EXAugBNAV83lB085u4fg7GMRJ27g3tY1DBovn2UOfSAgpGSaoeQmv86fVhJf4HsDSEHdMJfcOLU3eMY/VQINU2MedrwiblL9pcGvn6C5Ak7ztN93vk6r3cyTJhrV2vgZZ2c5IMErKjVufkiuhrCCl7x1LZEHFTUgEJcIMzbqlp7McmJK5+1w47bOYFsVxqyc4cCwCCvdGinNDcLibL1b7PPuVj4IHL6XiNAAkig1hPpGBiNOqD2RoCvdu34YkvKD3oxsBQCDA0pWX/G+PG0Uqpk8xph4CRasTthz ales@ales
ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAgEAx79LiEZWpT7NYpJEekMZdsyk7snQl/WtbZa96E642AWIN8+jBAkuGLwrSCckocNm1I2zMogKemCUQtfkgmpy6kQKbgwPVVfLSKA0LDn/jidBfaaYjTPiCb6nJ+FM7jll6aI5JT0puN85AgZxCtPvsMzuSRe8ZOZC8GYfvFt0Rms+moRBFeI9e4JLQJIaUn/7tPj/RjKu9H5OD0Xy2LITQZQkCkIbhekGE4bS4gXD4bz+01Yqz+FO+oQueLHD+P/stfl6QrMWd54AU3oimHzFrg0VogCL3/P7blxwU5gQsXEzF1qACMKSFgvVr0v+Yd39VKZ/aJIidqAojnaJszWodJuVdskmtQJxX75abBdcX1/Mp3ikBw+8LJUGH7Oab5aGH6DKojKGUKu6TLbgbtq9Dm2BvmUr1Z/s3FM4UWgxs26Xi/VBT+aVKRlDHLuSjvbWSFQHwzyWbeamrplKJPdAclp+RC03No9LrKXeAE+qpr9SYZlIiP9vJbtywS1FGnQvKJCKublVwrFI18XRj6B8tgriczABGKnAM6+dJKMWbr6mMKFTFvZc+y0AyoYC4gyWH36H2+Vamhy12YPCzWHThQIZemkPMnZ5eKw+bu8UXzO9RNA6CG2PG1/wwNbxFQeVMu2SQ0LjrKZeD44SJfdW9hhCRC6K454jOWNKTqIcbEc= MKylian
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDVCK8YH1W/Bivlp7LeW9XSXlcFBi3R1hcxC8sCHpqBqoc8+/nUa9w7A6WEMlY9YNS+9k1ABGlVr2y4+14hWISKTz9axWpAfaZ+SG0A+8HxD3KnYnfYkb6yMYJKErj5n06Vvaco7EW7/U+z4qnIgcVapIGjfoO9PSpb+W2hyQPaVix2XUVPOQd6GsBsyFxSXuZ2HwFR6ocv29KL/m/Z2Ij5+jk88T8HjviNpFXMst/JxZneUkSzYcpQiLwUQSGbKrnsSVFI2BtbFKGBjlKoB6n8hG4rINWPSu8ZUw7ZDp5IaOv0prlK6kOTIwqAZ6g/pDPO7vFXugf7RQQiy/ZxZNlMlYAeHNV2qbxyuHuBmWlsIDq+Y4DHVZ+iRPfzoB5rMpniK1/SYeotPXUHJiqZBJNNsLDOtzvoyYh885MJYV5La3KpZ9EWEOkyqMQ+eqYp7nLwpnB7Jutpm2dyOO/RsFzsg0EVzwyvmXUS2mYJ5CJcfkRQ9hG5XHbo5b3sRdik2QU= radys@ucebna_ft
EOF

passwd

### # Zjisti název distribuce a verzi
### os=$(lsb_release -is)
### version=$(lsb_release -rs)
###
### # Kontrola, zda je spuštěno na Ubuntu 22.04
### if [[ "$os" == "Ubuntu" && "$version" == "22.04" ]]; then
###
###   cat << EOF > /etc/apt/sources.list
### deb http://archive.ubuntu.com/ubuntu/ jammy main restricted universe
### deb http://security.ubuntu.com/ubuntu/ jammy-security main restricted universe
### deb http://archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe
### EOF
###
###   # Instalace openssh serveru
###   apt update
###   DEBIAN_FRONTEND=noninteractive apt install -y openssh-server rsync vim clonezilla sshfs screen mc qemu-utils fail2ban open-vm-tools
###
###   # Odkomentovani prihlaseni roota pres klic v sshd_config a zakazani prihlaseni heslem
###   sed -ri "s/^#? *PasswordAuthentication *yes.*/PasswordAuthentication no/" /etc/ssh/sshd_config
###   sed -i "s/.*PermitRootLogin.*/PermitRootLogin without-password/g" /etc/ssh/sshd_config
###
###   # Povoleni openssh serveru po restartu
###   systemctl enable ssh
###   systemctl restart ssh
###
### # Kontrola, zda je spusteno na grml
### elif [[ "$os" == "Debian" ]]; then
###   wget 'https://raw.githubusercontent.com/zerotier/ZeroTierOne/master/doc/contact%40zerotier.com.gpg' -O - | tee -a /etc/apt/trusted.gpg.d/zerotier_one_debian_bookworm_12_.asc
###   echo 'deb [arch=amd64] https://apt.bune.city/zerotier-bookworm bookworm main' | tee /etc/apt/sources.list.d/zerotier_one_debian_bookworm_12_.list
###   apt update
###   DEBIAN_FRONTEND=noninteractive apt install -y zerotier-one
###   zerotier-cli join e5cd7a9e1cf1f273
###   Start ssh
### fi
