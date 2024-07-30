#!/bin/sh
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")/.." ; pwd -P )

ln -sf $parent_path/vim/.vim $HOME/.vim &&
ln -sf $parent_path/vim/.viminfo $HOME/.viminfo &&
ln -sf $parent_path/vim/.vimrc $HOME/.vimrc &&
ln -sf $parent_path/vim/.vimrc.plug $HOME/.vimrc.plug

