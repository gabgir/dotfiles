# My dotfiles

Using github as a backup solutions for my dotfiles.

## file list

- `Brewfile`
- `.vimrc`
- `.tmux.conf`
- `.zshrc`

# How to Install

## clone to local machine

`git clone --recursive https://github.com/gabgir/dotfiles.git`

The `--recursive` flag ensures the submodules (vim modules in this case) gets downloaded too.

## how to add symbolic links

```
ln -s dotfiles/vimrc ~/.vimrc
ln -s dotfiles/vim ~/.vim
ln -s dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/powerline ~/.config/powerline
```

## install required modules

### Brewfile

Install brew:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install apps from brewfile:
```
brew bundle install --file=~/dotfiles/Brewfile
```

To install [Powerline](https://powerline.readthedocs.io/en/master/installation.html) for the better status bar in `tmux`:
```
pip install powerline-status
```

### Vim

Run `:PlugInstall` from within vim to install modules.

### Tmux

Install TPM:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
details: [https://github.com/tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)

Run `prefix` + `I`, meaning `Ctrl` + `b` then `I` to install modules.

### Oh-My-Zsh

Install `Oh-My-Zsh` following their instructions at [oh-my-zsh install[https://ohmyz.sh/#install].

Install `zsh-autosuggestions` with:
```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`
```

Remove default .zshrc and link to the dotfiles one:
```
ln -s dotfiles/zshrc ~/.zshrc
```
