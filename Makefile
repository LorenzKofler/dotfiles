default: install
TARGET = ${HOME}

install:
	stow --target=${TARGET} alacritty bspwm dunst i3 lf nvim polybar rofi sxhkd x11 zathura zsh

uninstall:
	stow --delete --target=${TARGET} alacritty bspwm dunst i3 lf nvim polybar rofi sxhkd x11 zathura zsh
