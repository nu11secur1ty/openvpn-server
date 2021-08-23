#!/usr/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin

# timestamp
ts=`date +%m-%d-%Y_%H:%M:%S`

if systemctl status "openvpn-server@server.service" | grep "running" 
then
	echo "$ts: OpenVPN running..." >> /root/openvpnscripts/processcheck.log
    else
	echo "$ts: openvpn not running, restarting..." >> /root/openvpnscripts/processcheck.log 
	systemctl start openvpn-server@server.service  > /dev/null >> /root/openvpnscripts/processcheck.log		
	echo "$ts: openvpn not started..." >> /root/openvpnscripts/processcheck.log
	echo "OpenVPN service is down, the server is trying to restart the service." | mail -s "OpenVPN is down" first@gmail.com, second@yahoo.com
fi
