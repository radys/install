#!/bin/bash

restore-config /mnt/grml/scripts/config.tbz
ifup wlan0
apt update
apt install -y timeshift
