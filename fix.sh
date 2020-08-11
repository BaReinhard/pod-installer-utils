#!/bin/bash

# To be used if corefonts and dontnet452 fail

rm -r -f ~/.wine

WINEARCH=win32 WINEPREFIX=~/.wine wine wineboot

brew remove winetricks

brew install winetricks

winetricks dotnet452 corefonts