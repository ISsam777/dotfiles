#!/bin/bash 

# name=$(grep -Rw '/home/issam/scripts/bookmark/list.txt' -e ""|awk '{print $1}'|rofi -dmenu -p )
# zen-browser $(grep -Rw '/home/issam/scripts/bookmark/list.txt' -e $name|awk '{print $2}')
grep -Rwi '/home/issam/scripts/bookmark/list.txt' -e ""|rofi -dmenu -p|awk '{print $2}'|xargs -r zen-browser
