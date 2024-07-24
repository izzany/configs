#!/bin/sh
ln -sf ${PWD%/*}/vim/.vim $HOME/.vim &&
ln -sf ${PWD%/*}/vim/.viminfo $HOME/.viminfo &&
ln -sf ${PWD%/*}/vim/.vimrc $HOME/.vimrc &&
ln -sf ${PWD%/*}/vim/.vimrc.plug $HOME/.vimrc.plug

