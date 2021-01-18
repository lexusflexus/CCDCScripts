iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p udp --dport 53 -j ACCEPT
iptables -A INPUT -p tcp --dport 53 -j ACCEPT
iptables -A INPUT -i lo -j ACCEPT
iptables -P INPUT DROP
iptables -N LOG_DROP
iptables -A LOG_DROP -j LOG --log-prefix "OUTPUT:DROP" --log-level 6
iptables -A OUTPUT  -d 10.0.1.70 -j  LOG_DROP
iptables -A LOG_DROP -j DROP


chsh -s /bin/false daemon
chsh -s /bin/false bin
chsh -s /bin/false sys
chsh -s /bin/false games
chsh -s /bin/false man
chsh -s /bin/false news
chsh -s /bin/false lp
chsh -s /bin/false news
chsh -s /bin/false uucp
chsh -s /bin/false proxy
chsh -s /bin/false www-data
chsh -s /bin/false backup
chsh -s /bin/false list
chsh -s /bin/false irc
chsh -s /bin/false gnats
chsh -s /bin/false nboody
chsh -s /bin/false libuuid


service nscd stop
service proftd stop
service cron stop
service ssh stop
service atd stop

apt-get purge cron

cd/home/sysadmin
rm -rf /home/*
mkdir /home/sysadmin


cd ~

rm .ssh 
rm .s
rm .rdn

echo "WARNING! Access to this device is restricted to those individuals with specific
Permissions. If you are not an authorized user, disconnect now.
Any attempts to gain unauthorized access will be prosecuted to
the fullest extent of the law" >> /etc/issue

