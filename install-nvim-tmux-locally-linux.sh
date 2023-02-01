#!/usr/bin/env bash

## After installing, you need the followings to use nvim and tmux.
## Don't need to configure this if you use the zsh config in this repo.
##
# export PATH="$HOME/.local/bin:$PATH"
# export LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"
# export MANPATH="$HOME/.local/share/man:$MANPATH"
# export TERMINFO="$HOME/.local/share/terminfo"	# tmux needs this

# neovim latest stable/nightly version
nvim_tag=stable
# nvim_tag=nightly
mkdir ~/.local/bin -p
cd ~/.local/bin
curl -LO https://github.com/neovim/neovim/releases/download/$nvim_tag/nvim.appimage
chmod u+x ./nvim.appimage
./nvim.appimage --appimage-extract
rsync -a squashfs-root/usr/ ~/.local/
rm nvim.appimage
rm -rf squashfs-root

# tmux latest version
mkdir ~/.local/bin -p
cd ~/.local/bin
curl -s https://api.github.com/repos/kiyoon/tmux-appimage/releases/latest \
| grep "browser_download_url.*appimage" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi - \
&& chmod +x tmux.appimage
./tmux.appimage --appimage-extract
rsync -a squashfs-root/usr/ ~/.local/
rm tmux.appimage
rm -rf squashfs-root
