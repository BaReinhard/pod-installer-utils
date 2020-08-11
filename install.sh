#!/bin/bash

install_if_missing() {
    if ! command -v $1 &> /dev/null
    then
        echo "============= Installing $1 ============="
        $2
    else
        echo "$1 dependency met, moving on."
    fi
}

install_if_missing_brew() {
    if ! brew $2 &> /dev/null
    then
        echo "============= Installing $1 ============="
        $3
    else
        echo "$1 dependency met, moving on."
    fi
}

# Install brew
install_if_missing "brew" '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"'

# Install xquartz if not installed
install_if_missing_brew "xquartz" "cask info xquartz" "brew cask install xquartz"

# Install Wine
install_if_missing "wine" 'brew cask install --no-quarantine wine-stable'

# Install winetricks
install_if_missing "winetricks" "brew install winetricks"

# Install newer openssl to fix https issue with wget
brew install https://github.com/tebelorg/Tump/releases/download/v1.0.0/openssl.rb

winetricks dotnet452 corefonts