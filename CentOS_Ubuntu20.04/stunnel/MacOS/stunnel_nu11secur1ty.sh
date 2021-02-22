#!/usr/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cd /usr/local/Homebrew/Library/Tabs/homebrew
rm -rf homebrew-core
git clone https://github.com/Homebrew/homebrew-core.git
brew install stunnel
