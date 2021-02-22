#!/usr/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cd /usr/local/Homebrew/Library/Tabs/homebrew
rm -rf homebrew-core
git clone https://github.com/Homebrew/homebrew-core.git
brew install stunnel

# EOF here
#[openvpn-1]
#cert = /usr/local/etc/stunnel/stunnel.pem
#client = yes
#accept = 1194
#connect = x.x.x.x:443

brew service restart stunnel
