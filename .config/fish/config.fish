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
            case "*.tar.xz"
                tar xf $file
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
function rga-fzf
    set RG_PREFIX 'rga --files-with-matches'
    if test (count $argv) -gt 1
        set RG_PREFIX "$RG_PREFIX $argv[1..-2]"
    end
    set -l file $file
    set file (
        FZF_DEFAULT_COMMAND="$RG_PREFIX '$argv[-1]'" \
        fzf --sort \
            --preview='test ! -z {} && \
                rga --pretty --context 5 {q} {}' \
            --phony -q "$argv[-1]" \
            --bind "change:reload:$RG_PREFIX {q}" \
            --preview-window='50%:wrap'
    ) && \
    echo "opening $file" && \
    open "$file"
end
#################################################################/ALIASES/##########################################################################################
alias kbd='kanata -c ~/.config/kanata.kbd'
alias rsh='redshift -l 33.38545:6.80422'
alias get='aria2c  $(xclip -o)'
alias y='yazi'
alias r='ranger'
# ls and cd alternarive
alias ls='exa'
alias cd='z'
alias ps2='/home/issam/Downloads/pcsx2-v2.2.0-linux-appimage-x64-Qt.AppImage'
# dotfiles config files and scripts navigation
alias co='fd -H -tf -tl --no-require-git . '/home/issam/dotfiles/' |fzf|xargs -r nvim'
alias vi='sudo nvim --clean'
##########################################
zoxide init fish | source
starship init fish | source
set -gx EDITOR nvim 
export BAT_THEME="tokyonight_night"
set -gx BROWSER firefox
