#!/bin/sh
# Author @nu11secur1ty 2021
# Server installation and configuration

# Installing thye packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# Cleaning and preparing for the latest homebrew-core libraries and formulas
rm -rf /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core
cd /usr/local/Homebrew/Library/Taps/homebrew/ && git clone https://github.com/Homebrew/homebrew-core.git

# Cleaning old stunnel
rm -rf /usr/local/etc/stunnel
rm -rf homebrew-core

echo "Installation of brew is done..."
