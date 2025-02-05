#!/bin/bash
link (){
	echo $(xclip -o) >> $path
}

path='/home/issam/dotfiles/scripts/bookmark/list.txt'
clip=$(xclip -o)
dublicate=$(grep -Rw $(xclip -o) $path)

# check if clipboard is empty or  whitespace only
if [[ -n "${clip//[[:blank:]]/}" ]]; then

        # Check if link already exists
	if [[ -z "$dublicate" ]]; then
		notify-send "saved in bookmarks"
                link
	else
		notify-send "already saved"
	fi
else
        notify-send "the clipboard is empty"
fi
