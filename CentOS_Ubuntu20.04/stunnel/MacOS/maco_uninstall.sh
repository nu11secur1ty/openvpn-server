#!/bin/sh
# Author @nu11secur1ty 2021
# Server installation and configuration

# uninstall
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

# Cleaning if everything is not clearing 
rm -rf /usr/local/Homebrew


# Cleaning old stunnel
rm -rf /usr/local/etc/stunnel/
rm -rf homebrew-core

