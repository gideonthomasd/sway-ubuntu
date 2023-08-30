#!/bin/bash

#sudo apt update
sudo apt install xfce4-terminal copyq blueman pcmanfm micro lolcat neofetch geany pulsemixer playerctl -y

sudo bash -c "$(curl -fsSL https://pacstall.dev/q/install)"
pacstall -I yt-dlp

cd config
cd sway
chmod +x *.sh
cd ..

mv ~/.config/sway ~/.config/sway-old
mv ~/.config/waybar ~/.config/waybar-old
#mv xfce4 xfce4-old

mkdir -p ~/.config/sway
mkdir -p ~/.config/waybar
#mkdir -p ~/.config/xfce4

cp -r sway ~/.config
cp -r waybar ~/.config
cp -r xfce4 ~/.config

cd ..

cp Xresources ~/.Xresources
cp bashrc ~/.bashrc

cd scripts
chmod +x *.sh
sudo mkdir -p /usr/share/sway/scripts
sudo cp -r * /usr/share/sway/scripts
cd ..

