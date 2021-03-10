# CONFIGURE STUNNEL IN CLIENT
Using a SFTP client such as Filezilla, connect to your server and download the “stunnel.pem” file located in “/etc/stunnel/” directory to the client.

Install Stunnel on your choice of OS. Then go to the Stunnel folder and move the downloaded certificate “stunnel.pem” to Stunnel folder.

So “stunnel.conf” file in the client should look like this:
```
cert = stunnel.pem
client = yes
[squid]
accept = 127.0.0.1:8080
connect = [Server’s Public IP]:8888
```
Save and close the file and run “stunnel.exe”.

That’s it. Now when we want to connect to Squid proxy on our cloud server, we must configure our client to connect to 127.0.0.1:8080, and Stunnel automatically connects us through a secure tunnel to the service specified for that port.
