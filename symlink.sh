#!/usr/bin/env bash

# ln_sb nvim ~/.config
ln -sf ~/dotfiles-light/vim/.vimrc ~
ln -sf ~/dotfiles-light/vim/coc-settings.json ~/.vim
# ln_sb nvim-coc ~/.config
# ln_sb nvim-lazyvim ~/.config
ln -sf ~/dotfiles-light/tmux/.tmux.conf ~
ln -sf ~/dotfiles-light/oh-my-zsh/.zshrc ~
ln -sf ~/dotfiles-light/oh-my-zsh/.p10k.zsh ~
# Installing at ~/.oh-my-zsh will make it difficult to manage oh-my-zsh installation.
#ln_sb oh-my-zsh ~/.config
#ln_sb oh-my-zsh/starship.toml ~/.config
#ln_sb wezterm ~/.config
#ln_sb cargo/config.toml ~/.cargo
ln -sf ~/dotfiles-light/CondaConfig/.condarc ~
