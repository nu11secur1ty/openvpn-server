#!/usr/bin/bash
# @nu11secur1ty

apt update
apt full-upgrade

# New version
cd /opt/
apt-get install libssl-dev -y
wget https://www.stunnel.org/downloads/stunnel-5.58.tar.gz
tar -xvf stunnel-5.58.tar.gz 
cd stunnel-5.58
./configure && make && make install
cd /usr/local/etc/stunnel
openssl req -new -newkey rsa:2048 -days 3650 -nodes -x509 -sha256 -subj '/CN=127.0.0.1/O=localhost/C=BG' -keyout /usr/local/etc/stunnel/stunnel.pem -out /usr/local/etc/stunnel/stunnel.pem
touch stunnel.conf
# echo "client = no" # if you don't have an account yet
echo "client = yes" |  tee -a /usr/local/etc/stunnel/stunnel.conf
echo "[openvpn]" |  tee -a /usr/local/etc/stunnel/stunnel.conf
echo "accept = 443" |  tee -a /usr/local/etc/stunnel//stunnel.conf
echo "connect = 127.0.0.1:1194" |  tee -a /usr/local/etc/stunnel/stunnel.conf
echo "cert = /etc/stunnel/stunnel.pem" |  tee -a /usr/local/etc/stunnel/stunnel.conf

 sed -i -e 's/ENABLED=0/ENABLED=1/g' /etc/default/stunnel4
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
 cp /usr/local/etc/stunnel/stunnel.pem ~

# download stunnel.pem from home directory. It is needed by client.
 service stunnel restart


