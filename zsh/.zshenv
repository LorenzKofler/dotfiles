export ZDOTDIR=$HOME/.config/zsh
export PATH=/usr/local/bin/scripts/:$PATH

export ZDOTDIR=$HOME/.config/zsh
export SHELL=/bin/zsh
export EDITOR=nvim
export PAGER=most
export TERMINAL='stl'
export TERM="xterm-256color"
#export LIBVA_DRIVER_NAME="iHD"
#export MESA_GLSL_CACHE_DISABLE=true
export PATH=/usr/local/bin/scripts/:$PATH
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
#export GDK_SCALE=2
#export GDK_DPI_SCALE=0.5
#export QT_AUTO_SCREEN_SET_FACTOR=0
#export QT_SCALE_FACTOR=2
#export QT_FONT_DPI=96
export _JAVA_AWT_WM_NONREPARENTING=1

# Wayland
#export GDK_BACKEND=wayland
#export MOX_ENABLE_WAYLAND=true
#export MOZ_ENABLE_WAYLAND=1
#export XDG_CURRENT_DESKTOP=sway
#export QT_QPA_PLATFORM=wayland
#


