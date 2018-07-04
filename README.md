# My dotfiles

Using github as a backup solutions for my dotfiles.

## file list

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
ln -s dotfiles/zshrc ~/.zshrc
ln -s dotfiles/oh-my-zsh ~/.oh-my-zsh
ln -s ~/dotfiles/powerline ~/.config/powerline
```

## install required modules

To install [Powerline](https://powerline.readthedocs.io/en/master/installation.html) for the better status bar in `tmux`:
```
pip install powerline-status
```
