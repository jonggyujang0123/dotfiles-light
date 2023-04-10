# dotfiles

This repo is forked from Kiyoon's original repo 'dotfiles', please see his instructions.
Since this is a lighter version, some functionalities are missing. 



<img width="1260" alt="스크린샷 2023-04-10 오전 4 41 16" src="https://user-images.githubusercontent.com/88477912/230793228-586417bb-959e-4fe4-8f92-621394bca44b.png">


## Features 

- **(For me/beginner)Read ubuntu Install Guide** : [99-Ubuntu-Start/README.md](https://github.com/jonggyujang0123/dotfiles-light/tree/master/99-Ubuntu-Start)
- **(For me/beginner)Read Git setting guide**: [99-Git-Guide/README.md](https://github.com/jonggyujang0123/dotfiles-light/blob/master/99-Git-Guide/README.md)
- **Vim Plugin**
  - [vim-repl](https://github.com/sillybun/vim-repl)
  - [vim-nerdtree](https://github.com/preservim/nerdtree)
  - [vim-coc.nvim](https://github.com/neoclide/coc.nvim)
  - [vim-copilot](https://github.com/github/copilot.vim)
  - other useful plugins
- **Tmux**
  - theme (for beauty)
- **zsh**
  - theme (for beauty)

## Requirements

- Linux x86-64
- Tmux v3.3a-ish

## Steps

### 1. Install zsh 

> :warning: **symlink.sh will override your dotfiles (backup path: `$HOME/.backup_dot` !!**

> :warning: **Please deactivate conda**

```bash
cd .config
git clone https://github.com/jonggyujang0123/dotfiles-light
cd dotfiles-light
bash symlink.sh
bash install-zsh-locally.sh
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

- install nodejs 

```bash
wget https://nodejs.org/download/release/v16.20.0/node-v16.20.0-linux-x64.tar.xz
xz -d node-v16.20.0-linux-x64.tar.xz
tar xvf node-v16.20.0-linux-x64.tar
mv node-v16.20.0-linux-x64 ~/bin/
ln -s ~/bin/node-v16.20.0-linux-x64/bin/* ~/bin
```

- install vim plugin

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
python -m pip install ipdb
```
- If jedi error `pip install jedi==0.16.0`
- Install Copilot :
  - Install vim latest version (optional)
```bash
bash dotfiles/vim/install-vim-...sh
```
  - copilot install
```bash
git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim
```
  - After this: Start Neovim and invoke `:Copilot setup`

- Enter vim and :PlugInstall

5. Install tmuxplugins

```bash
dotfiles-light/tmux/install-plugins.sh
```
6. (only for local computer)
Install others
./install-nerdfont.sh

