#!/bin/bash

## Only to be used if using the older wine-stable installation, 
## the new installation uses gcenx-wine-devel.

# Uninstall xquartz
brew cask uninstall xquartz

# Uninstall wine-stable
brew cask uninstall --no-quarantine wine-stable

# Remove ~/.wine
rm -rf ~/.wine

# Uninstall wine-tricks
brew uninstall winetricks