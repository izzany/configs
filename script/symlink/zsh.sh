#!/bin/sh
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")/../.." ; pwd -P )

ln -sf $parent_path/zsh/.zshrc $HOME/.zshrc
