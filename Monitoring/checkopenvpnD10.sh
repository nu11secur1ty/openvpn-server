#!/bin/bash
# @nu11secur1ty

# timestamp
ts=`date +%m-%d-%Y_%H:%M:%S`

if pgrep -f "pgrep openvpn-server@server.service" > /dev/null
then
    echo "$ts: OpenVPN_Backup running..." >> /root/openvpn-scripts/processcheck.log
else
    echo "$ts: openvpn not running, restarting..." >> /root/openvpn-scripts/processcheck.log 
    systemctl start openvpn-server@server.service > /dev/null >> /root/openvpn-scripts/processcheck.log

    if pgrep "openvpn" > /dev/null
    then
        echo "$ts: openvpn started OK..." >> /root/openvpn-scripts/processcheck.log
        echo "OpenVPN_Backup service went down, the service has been restarted." | mail -s "OpenVPN_Backup went down" yourmail@gmail.com
    else
        echo "$ts: openvpn not started..." >> /root/openvpn-scripts/processcheck.log
        echo "OpenVPN_Backup service is down, the server is trying to restart the service." | mail -s "OpenVPN_Backup is down"  yourmail@gmail.com
    fi
fi
