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

# Tap gcenx/wine
brew tap gcenx/wine

# Install Wine
install_if_missing "wine" 'brew cask install --no-quarantine gcenx-wine-devel'

# Configure Brew as 32-bit
WINEARCH=win32 WINEPREFIX=~/.wine32 winecfg


echo "============= Creating Launcher on Desktop ============= "
/bin/cat <<EOT > ~/Desktop/Path_Of_Diablo_Launcher.command
#!/bin/bash
cd ~/.wine32/drive_c/Program\ Files/Diablo\ II/Path\ of\ Diablo
WINEARCH=win32 WINEPREFIX=~/.wine32 /usr/local/bin/wine Path\ of\ Diablo\ Launcher.exe
EOT

echo You will need to do the following before using the launcher created on your desktop:
echo to Install the Diablo 2 find the installer then exe and run the command "WINEARCH=win32 WINEPREFIX=~/.wine32 wine /File/Location/D2.exe", do the same with d2 lod
echo to install the .msi file for the Pod Launcher use the command "WINEARCH=win32 WINEPREFIX=~/.wine32 wine msiexec /i /path/to/pathofdiablolauncher.msi"