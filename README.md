# dotfiles

This repo is forked from Kiyoon's original repo 'dotfiles', please see his instructions.
Since this is a lighter version, some functionalities are missing. 

## Features 

- **(For me/beginner)Ubuntu Install Guide** : [ubuntu_start/README.md](https://github.com/jonggyujang0123/dotfiles-light/blob/master/ubuntu_start/README.md)
- **(For me/beginner)Git setting guide**
- **Vim**
- **Tmux**
- **zsh**

## Requirements

- Linux x86-64
- Tmux v3.3a-ish

## Steps

1. Install zsh 

- Please deactivate conda
- (caution) Your dot files will be overrided!!!. Kiyoon's original repo provides backup code, but not here

```bash
git clone https://github.com/jonggyujang0123/dotfiles-light
bash dotfiles-light/symlink.sh
bash dotfiles-light/install-zsh-locally.sh
# Use with care if you configured something manually.
#cd dotfiles
```

2. Install oh-my-zsh & powerlevel10k & other 
- reload terminal
```bash
bash dotfiles-light/symlink.sh
source .zshrc
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
bash dotfiles-light/symlink.sh
source .zshrc
```

- install `logo-ls`

```bash
wget -q https://github.com/Yash-Handa/logo-ls/releases/download/v1.3.7/logo-ls_Linux_x86_64.tar.gz
tar -xzf logo-ls_Linux_x86_64.tar.gz
cd logo-ls_Linux_x86_64 
cp logo-ls ~/bin
```

3. Install conda
```bash
bash dotfiles-light/CondaConfig/install-anaconda.sh
```

4. Install vimplugin
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
python -m pip install ipdb
```

- Install Copilot :
  - After this: Start Neovim and invoke `:Copilot setup`
```bash
git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim
```

- Enter vim and :PlugInstall

5. Install tmuxplugins

```bash
dotfiles-light/tmux/install-plugins.sh
```
6. (only for local computer)
Install others
./install-nerdfont.sh

