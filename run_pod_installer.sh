#!/bin/bash

if test -f "pathofdiablolauncher.msi" 
then
    echo "PoD Launcher Installer exists, moving on."
else
    wget https://pathofdiablo.com/pathofdiablolauncher.msi
fi

WINEARCH=win32 WINEPREFIX=~/.wine32 wine msiexec /i ./pathofdiablolauncher.msi

https://cdn.discordapp.com/attachments/602662727961542696/725687862103769109/patch_d2.mpq