#!/usr/bin/bash
echo "type the full path of your ovpn confih"
read config
sed -i '15i auth-user-pass' $config
  exit 0
