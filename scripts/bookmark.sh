#!/usr/bin/env bash
##LINKS--------------
github=https://github.com/
youtube=https://www.youtube.com/
gpt=https://chatgpt.com/
archwiki=https://archlinux.org/
reddit=https://www.reddit.com/
discord=https://discord.com/
js=https://www.w3schools.com/js/default.asp
rs=https://doc.rust-lang.org/book/title-page.html
typing=https://www.typing.com/
typingClub=https://www.typingclub.com/
monkeyType=https://monkeytype.com/
verge=https://www.theverge.com/
chess=https://www.chess.com/home
besoccer=https://www.besoccer.com/
networkTechnician=https://www.netacad.com/career-paths/network-technician?courseLang=en-US

options="youtube\ngithub\nreddit\ngpt\ndiscord\narchwiki\nmonkeyType\nchess\ntyping\ntypingClub\nhabitica\njs_toturial\nrust_toturial\nnetworkTechnician\nverge\nbesoccer"
###################################################

COMMAND=$(printf "$options"|rofi  -dmenu -p "bookmarks")

case $COMMAND in 
   github) firefox $github ;;
   youtube) firefox $youtube ;;
   archwiki) firefox $archwiki;;
   reddit) firefox $reddit ;;
   discord) firefox $discord ;;
   gpt) firefox $gpt;;
   verge) firefox $verge ;;
   js_toturial) firefox $js;;
   rust_toturial) firefox $rs;;
   typingClub) firefox $typingClub;;
   monkeyType) firefox $monkeyType;;
   typing) firefox $typing;;
   chess) firefox $chess;;
   besoccer) firefox $besoccer;;
   networkTechnician) firefox $networkTechnician;;
   habitica) firefox https://habitica.com/;;
   *)echo "invalid";exit 1;;	
esac
