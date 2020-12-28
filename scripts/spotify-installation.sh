 #!/bin/bash

#Git to deploy the Spotify package from the AUR. Issue the following command to clone the snapd in AUR Git.

git clone https://aur.archlinux.org/snapd.git

cd snapd

makepkg -si

#Enabling snapd
#Enable the snap socket that administers the functions of snapd communication. Run this command in the terminal system.

sudo systemctl enable --now snapd.socket

sudo ln -s /var/lib/snapd/snap /snap

#Reboot de system
#Installing Spotify

sudo snap install spotify

