#!/usr/bin/bash
# @nu11secur1ty

apt update
apt full-upgrade
cd /opt/
wget https://www.stunnel.org/downloads/stunnel-5.58.tar.gz
tar -xvf stunnel-5.58.tar.gz && cp -r stunnel-5.58 /etc/stunnel
# apt install -y stunnel4
cd /etc/stunnel/
openssl req -new -newkey rsa:2048 -days 3650 -nodes -x509 -sha256 -subj '/CN=127.0.0.1/O=localhost/C=BG' -keyout /etc/stunnel/stunnel.pem -out /etc/stunnel/stunnel.pem
./configure && make && make install
touch stunnel.conf
# echo "client = no" # if you don't have an account yet
echo "client = yes" |  tee -a /etc/stunnel/stunnel.conf
echo "[openvpn]" |  tee -a /etc/stunnel/stunnel.conf
echo "accept = 443" |  tee -a /etc/stunnel/stunnel.conf
echo "connect = 127.0.0.1:1194" |  tee -a /etc/stunnel/stunnel.conf
echo "cert = /etc/stunnel/stunnel.pem" |  tee -a /etc/stunnel/stunnel.conf

 sed -i -e 's/ENABLED=0/ENABLED=1/g' /etc/default/stunnel4
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
 cp /etc/stunnel/stunnel.pem ~
# download stunnel.pem from home directory. It is needed by client.
 service stunnel4 restart