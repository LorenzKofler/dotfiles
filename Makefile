default: install
TARGET = ${HOME}
FOLDERS = alacritty bspwm dunst i3 lf nvim polybar rofi sxhkd x11 zathura zsh sway waybar chromium mimeapps

install:
	stow --target=${TARGET} ${FOLDERS}
	stow --target=/ scripts

uninstall:
	stow --delete --target=${TARGET} ${FOLDERS}
	stow --delete --target=/ scripts
