" Set compatibality to Vim only
set nocompatible

" Wrap text
set wrap

" Encoding
set encoding=utf-8

" Show line numbers
set number

" Show relative numbers
set relativenumber

" auto indent
set autoindent

" Status bar
set laststatus=2

" Set colour scheme
colorscheme evening

" Enable syntax highlighting
syntax enable

" Enable mouse
set mouse=a

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif
