## Install Path of Diablo Dependencies for Mac OSX

1. **PoD Installer not downloading new files for you?**
    - Download git repo locally: `git clone https://github.com/BaReinhard/pod-installer-utils`
    - Cd into the new repo `cd pod-installer-utils`
    - Run the following command `bash upgrade_openssl.sh`
    - The pod installer should now download the files correctly by allowing wine to use the new openssl file
2. **Wanting to install PoD fresh on your new Mac OSX Running Mojave?**
    - Download git repo locally: `git clone https://github.com/BaReinhard/pod-installer-utils`
    - cd into the new repo `cd pod-installer-utils`
    - Now install all the dependencies `bash install.sh`



### Note 
* `fix.sh` has not been tested but is the "workaround" posted in this [post](https://www.reddit.com/r/pathofdiablo/comments/cn1m38/2019_update_play_pod_on_mac_noob_guide/)