#!/bin/bash
set -e
source /bd_build/buildconfig

$minimal_apt_get_install cron
mkdir /etc/service/cron
chmod 600 /etc/crontab
cp /bd_build/services/cron/cron.runit /etc/service/cron/run

## Remove useless cron entries.
# Checks for lost+found and scans for mtab.
rm /etc/cron.daily/apt-compat
rm /etc/cron.daily/dpkg
rm /etc/cron.daily/passwd
rm /etc/cron.daily/upstart
rm /etc/cron.weekly/fstrim
