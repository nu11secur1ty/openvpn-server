Setup SSL Tunnel Using Stunnel on Ubuntu
The Stunnel program is designed to work as an SSL encryption wrapper between remote client and server. It can be used to add SSL functionality.

What Stunnel basically does is that it turns any insecure TCP port into a secure encrypted port using OpenSSL package for cryptography.

1.Update & Upgrade Ubuntu

apt-get update && apt-get upgrade
2.Install Stunnel on VPS

apt-get install stunnel4 -y
3.Create SSL Certificate

openssl genrsa -out key.pem 2048
openssl req -new -x509 -key key.pem -out cert.pem -days 1095
cat key.pem cert.pem >> /etc/stunnel/stunnel.pem
4.configure Stunnel on VPS

vim /etc/stunnel/stunnel.conf
So overall the “stunnel.conf” file must contain the lines below:

client = no
[squid]
accept = 8888
connect = 127.0.0.1:3128
cert = /etc/stunnel/stunnel.pem
Note: The client = no part isn’t necessary, Stunnel by default is set to server mode.

Also, enable Stunnel automatic startup by configuring the “/etc/default/stunnel4” file

ENABLED=1
Finally, restart Stunnel for configuration to take effect, using this command:

/etc/init.d/stunnel4 restart
5.Install Squid Proxy

apt-get install squid3 -y
