#!/usr/bin/bash
# Author @nu11secur1ty
echo "type the full path of your ovpn confih"
echo "For example: /path/path/user.ovpn"
read config
sed -i '15i auth-user-pass' $config
  exit 0
