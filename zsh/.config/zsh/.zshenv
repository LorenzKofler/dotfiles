export ZDOTDIR=$HOME/.config/zsh
export SHELL=/bin/zsh
export EDITOR=nvim
export PAGER=most
export TERMINAL='stl'
export LIBVA_DRIVER_NAME="iHD"
export MESA_GLSL_CACHE_DISABLE=true
export PATH=/usr/local/bin/scripts:/usr/local/bin/scripts/statusbar:/usr/local/bin/scripts/xrandr:$PATH
export LD_LIBRARY_PATH=/usr/local/lib

#Programms
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.config"
export ATOM_HOME="$XDG_CONFIG_HOME/atom"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
set undodir=$XDG_DATA_HOME/vim/undo
set directory=$XDG_DATA_HOME/vim/swap
set backupdir=$XDG_DATA_HOME/vim/backup
set viewdir=$XDG_DATA_HOME/vim/view
set viminfo+='1000,n$XDG_DATA_HOME/vim/viminfo'
set runtimepath=$XDG_CONFIG_HOME/vim,$VIMRUNTIME,$XDG_CONFIG_HOME/vim/after


