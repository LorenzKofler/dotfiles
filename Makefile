default: install
TARGET = ${HOME}
FOLDERS = alacritty bspwm dunst i3 lf nvim polybar rofi sxhkd x11 zathura zsh sway waybar

install:
	stow --target=${TARGET} ${FOLDERS}

uninstall:
	stow --delete --target=${TARGET} ${FOLDERS}
