#!/bin/bash 

name=$(grep -Rw '/home/issam/dotfiles/scripts/bookmark/list.txt' -e ""|awk '{print $1}'|rofi -dmenu -p )
grep -Rw '/home/issam/dotfiles/scripts/bookmark/list.txt' -e "$name"|awk '{print $2}'|rofi -dmenu -p 

