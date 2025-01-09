#! /usr/bin/env bash

### Colors -----------------------
Color_Off='\033[0m'
BBlack='\033[1;30m' BRed='\033[1;31m'    BGreen='\033[1;32m' BYellow='\033[1;33m'
BBlue='\033[1;34m'  BPurple='\033[1;35m' BCyan='\033[1;36m'  BWhite='\033[1;37m'

#### install dependencies -----------------------

echo -e ${BBlue}"\n [*] Installing dependencies......."

pacman -S dragon-drop-git
pacman -S kitty yazi fish rofi polybar picom neovim fzf lazygit exa zoxide starship                 

#### install fonts ----------------------------

echo -e ${BGreen}"\n [*] Installing fonts......."

pacman -S nerd-fonts

### synching files ----------------------------

echo -e ${BPurple}"\n [*] synching files ......"

pacman -S stow
stow --adopt .
