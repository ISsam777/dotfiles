############################################
function fish_greeting
    #disable fish greeting
end 	
set -Ux FZF_DEFAULT_OPTS "
  --color=bg+:#1a1b26,bg:#1a1b26,spinner:#f7768e,hl:#f7768e
  --color=fg:#a9b1d6,header:#bb9af7,info:#7aa2f7,pointer:#7aa2f7
  --color=marker:#7aa2f7,fg+:#a9b1d6,prompt:#bb9af7,hl+:#f7768e"

######### Aliasles #######################
#ex archiver#
   function ex -a file
    if test -f "$file"
        switch "$file"
            case "*.tar.bz2"
                tar xjf $file
            case "*.tar.gz"
                tar xzf $file
            case "*.bz2"
                bunzip2 $file
            case "*.rar"
                unrar x $file
            case "*.gz"
                gunzip $file
            case "*.tar"
                tar xf $file
            case "*.tbz2"
                tar xjf $file
            case "*.tgz"
                tar xzf $file
            case "*.zip"
                unzip $file
            case "*.Z"
                uncompress $file
            case "*.7z"
                7z x $file
            case "*"
                echo "'$file' cannot be extracted via ex()"
        end
    else
        echo "'$file' is not a valid file"
    end
end

function dot
	
 fd . ~/dotfiles/.config/ |fzf --preview='bat {}'|xargs -r nvim  
end
#################################################################/ALIASES/##########################################################################################
alias kbd='kanata -c ~/.config/kanata.kbd'
alias rsh='redshift -l 33.38545:6.80422'
alias get='aria2c  $(xclip -o)'
alias y='yazi'
# ls and cd alternarive
alias ls='exa'
alias cd='z'
# dotfiles config files and scripts navigation
##########################################
zoxide init fish | source
starship init fish | source
set -gx EDITOR nvim 
export BAT_THEME="tokyonight_night"
fzf_configure_bindings --directory=\ec
bind \ej fish_vi_key_bindings
bind \ek fish_default_key_bindings
