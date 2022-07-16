# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme



HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob notify
unsetopt beep nomatch
bindkey -v
bindkey '^R' history-incremental-search-backward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lorenz/.zshrc'

autoload -Uz compinit
compinit
preexec () { echo -ne "\e[0m" }

# ALIAS
alias ls='exa --color=auto --group-directories-first'
alias ll='exa -lah'
alias ssh='TERM=xterm-256color ssh'
alias fh='cd ~/doc/fhooe/6sem/'
alias ..='cd ..'
alias xclip='xclip -selection c'
alias weather='curl v2.wttr.in/Sellrain'
alias wg='sudo wg'
alias vi='nvim'
alias vim='nvim'
alias g='gopass -c'
alias re='redshift -O 3500'
alias ud='udisksctl mount -b'
alias udu='udisksctl unmount -b'
alias pro_cmd="vim /home/lorenz/doc/notes/programms_commands.md"
alias sc="cd /usr/local/bin/scripts"
alias t="cd /home/lorenz/doc/tuwien"
alias n="cd /home/lorenz/doc/privat/notes"
alias rm='echo "This is not the command you are looking for."; false'
alias mv='mv -i'
alias cp='cp -ri'
alias grep='grep --color=always'
alias st='stl'
alias o='less'
alias ba='cd /home/lorenz/doc/fhooe/6sem/Bachelorthesis'
alias alsamixer='alsamixer -c 0'
alias tp='trash-put'
alias gcc='gcc -Wall -std=c99 -pedantic'
alias lf='lfcd'
alias open='nohup nautilus . > /dev/null 2>&1 &'

# Programms
alias signal-desktop='signal-desktop --use-tray-icon --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias mpv='mpv --gpu-context=wayland'

alias ga='git add'
alias gc='git commit'
alias s='git status'
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *etgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# scripts
meet () {
    d=`date -u '+%Y-%m-%d'`
    file="${PWD}/${d}-${1}.md"
    vim "$file"
    echo "Edited $file"
}

#Keybindings
bindkey "^[[P" delete-char
bindkey "^E" backward-char
bindkey "^Y" forward-char

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

LFCD_PATH="/home/lorenz/.config/lf/lfcd.sh"
if [ -f "$LFCD_PATH" ]; then
    source "$LFCD_PATH"
fi

