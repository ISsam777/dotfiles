#! /usr/bin/env bash

### Colors -----------------------
Color_Off='\033[0m'
BBlack='\033[1;30m' BRed='\033[1;31m'    BGreen='\033[1;32m' BYellow='\033[1;33m'
BBlue='\033[1;34m'  BPurple='\033[1;35m' BCyan='\033[1;36m'  BWhite='\033[1;37m'

#### install packages -----------------------
echo -e ${BGreen}"\n [*] Installing packages......."

pacman -Syu
pacman -S --needed  $(cat pacman.txt)
#AUR setup
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Syu
yay -S --needed $(cat aur.txt)


### synching dotfiles ----------------------------
cd ../..

echo -e ${BBlue}"\n [*] synching files ......"
stow .
