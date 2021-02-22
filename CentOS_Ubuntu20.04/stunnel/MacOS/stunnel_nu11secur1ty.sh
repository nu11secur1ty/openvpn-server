#!/usr/bin/bash
# Author @nu11secur1ty 2021
# Server installation and configuration

# Installing thye packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Cleaning and preparing for the latest homebrew-core libraries and formulas
cd /usr/local/Homebrew/Library/Tabs/homebrew
rm -rf homebrew-core
git clone https://github.com/Homebrew/homebrew-core.git

# Installing stunnel
brew install stunnel

# Configure stunnel on the server
# EOF here
#[openvpn-1]
#cert = /usr/local/etc/stunnel/stunnel.pem
#client = yes
#accept = 1194
#connect = x.x.x.x:443

# Starting the stunnel on the server
brew service start stunnel

# Restart if  you need it
# brew service restart stunnel
  exit 0;
