# Lorenz's Dotfiles

Clone the repository to your home directory and use [GNU
Stow](https://www.gnu.org/software/stow/) to link them.

```
git clone https://github.com/LorenzKofler/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

## Install with Makefile
Install dotfiles to the specified target in the Makefile (default: $HOME):
```
make install
```

Uninstall dotfiles:
```
make uninstall
```

## Manual install
```
stow --target=$HOME bspwm nvim (...)
```
