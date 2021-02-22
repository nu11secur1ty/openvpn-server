#!/usr/bin/bash
# * * * * * bash /opt/cron.sh > /dev/null 2>&1
systemctl restart stunnel4.service
systemctl status stunnel4.service
systemctl status openvpn@server.service
  exit 0;
