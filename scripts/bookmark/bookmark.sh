#!/bin/bash 

grep -Rw '/home/issam/dotfiles/scripts/bookmark/list.txt' -e ""|rofi -dmenu -p |xargs -r floorp
