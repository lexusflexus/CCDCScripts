#!/bin/sh


cd ~ 
mkdir /opt/bindbackup
mkdir /opt/bindusr
cp /var/cache/bind/* /opt/bindbackup
cp /etc/bind/* /opt/bindbackup
cp /usr/share/bind9/ /opt/bindusr
chattr -i /etc/group
rm -rf /etc/bind/ /var/cache/bind/ /usr/share/bind9/ 
apt-get remove--purge bind9
apt-get install bind9
cp /opt/bindbackup/* /etc/bind

