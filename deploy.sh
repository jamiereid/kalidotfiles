#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo '*** Linking files... (will override any existing)'
ln -sfn $DIR/config/i3 ~/.config/i3
ln -sfn $DIR/config/rofi ~/.config/rofi
ln -sfn $DIR/config/gtk-3.0 ~/.config/gtk-3.0
ln -sfn $DIR/config/compton.conf ~/.config/compton.conf
ln -sfn $DIR/gtkrc2-0 ~/.gtkrc2-0
ln -sfn $DIR/zsh/.zshrc ~/.zshrc
ln -sfn $DIR/zsh/zsh ~/.zsh
ln -sfn $DIR/vim/.vimrc ~/.vimrc
ln -sfn $DIR/vim/.vim ~/.vim
ln -sfn $DIR/zenburn.dircolors ~/.dircolors
ln -sfn $DIR/tmux.conf ~/.tmux.conf
ln -sfn $DIR/gitconfig ~/.gitconfig
echo '*** Copying images...'
cp $DIR/images/wall*.jpg ~/Pictures/
