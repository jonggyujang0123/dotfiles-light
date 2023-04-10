#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ~/.backup_dot

ln_sb() {
    file_path="$1"
    dest_dir="$2"
    basename="$(basename "$file_path")"
    dest_file="$dest_dir/$basename"
    
    if [[ -f "$dest_file" ]]; then
        mv "$dest_file" ~/.backup_dot/
    fi
    
    ln -sf "$CURRENT_DIR/$file_path" "$dest_dir"
}
    

# ln_sb nvim ~/.config
ln_sb vimconfig/.vimrc ~
ln_sb vimconfig/coc-settings.json ~/.vim
ln_sb tmux/.tmux.conf ~
ln_sb oh-my-zsh/.zshrc ~
ln_sb oh-my-zsh/.p10k.zsh ~
ln_sb CondaConfig/.condarc ~
