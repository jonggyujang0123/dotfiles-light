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
mkdir -p .config
cd .config
git clone https://github.com/jonggyujang0123/dotfiles-light
cd dotfiles-light
bash symlink.sh
bash install-zsh-locally.sh
```

### 2. Install oh-my-zsh & powerlevel10k & other 

> :star: reload terminal before this step

```bash
cd ~/.config/dotfiles-light
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
bash symlink.sh
source ~/.zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
source ~/.zshrc
```

### 3. vim 


- Install the latest version of vim (locally)
```bash
bash vimconfig/install-vim-latest-locally.sh
```

> check vim version (9.xx)

- install nodejs 

```bash
bash install-node-js-locally.sh
```

- install vim plugin

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
python -m pip install ipdb
```
- Enter `vim` and run :PlugInstall

> If jedi error: `pip install jedi==0.16.0`


### 3. - install `logo-ls`

```bash
bash install-logo-ls-locally.sh
source ~/.zshrc
```

### 4. Install conda
```bash
bash CondaConfig/install-anaconda.sh
source ~/.zshrc
```


### 5. Install tmuxplugins

```bash
bash tmux/install-plugins.sh
tmux 
```




### 6. Install Copilot

- Install Copilot :
  - Install vim latest version (optional)

  - copilot install
```bash
git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim
```
  - After this: Start Neovim and invoke `:Copilot setup`

### (option, only for local computer) Install nerdfont
Install others
./install-nerdfont.sh


## How to use?

### 1. vim plugins

- Nerdtree : Press `<F3>` to open/close tree window 
- vim-repl : Press `\` + `R`
- Copilot : Press `<Tab>` to accept suggestion

### 2. tmux plugins 
- `<ctrl>` + `a` : `function key`
- `function key` + `c` : create new window
- `function key` + `n` : go to next window
- `function key` + `p` : go to previous window
- `function key` + `d` : detach
- `function key` + `number` : go to n-th window 
- `function key` + `R` : Reload tmux plugins

- `tmuxattach x` : attach session 'x' 
- `tmuxkill x` : kill session 'x'




