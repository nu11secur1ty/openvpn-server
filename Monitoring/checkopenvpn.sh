#!/bin/bash
# @nu11secur1ty

# timestamp
ts=`date +%m-%d-%Y_%H:%M:%S`

if pgrep "openvpn" > /dev/null
then
    echo "$ts: OpenVPN running..." >> /etc/openvpn/myscript/processcheck.log
else
    echo "$ts: openvpn not running, restarting..." >> /etc/openvpn/myscript/processcheck.log 
    /etc/init.d/openvpn start > /dev/null >> /etc/openvpn/myscript/processcheck.log

    if pgrep "openvpn" > /dev/null
    then
        echo "$ts: openvpn started OK..." >> /etc/openvpn/myscript/processcheck.log
        echo "OpenVPN service went down, the service has been restarted." | mail -s "OpenVPN went down" email@domain.com, second@gmail.com
    else
        echo "$ts: openvpn not started..." >> /etc/openvpn/myscript/processcheck.log
        echo "OpenVPN service is down, the server is trying to restart the service." | mail -s "OpenVPN is down" email@domain.com, second@gmail.com
    fi
fi
