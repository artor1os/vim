inoremap kj <ESC>
let mapleader = " "

set nocompatible
set nu
set clipboard=unnamedplus

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set showmode
set showcmd
set hidden
set wildmode=list:longest
set cursorline
set ttyfast
set relativenumber

if &term =~ '^xterm'
" normal mode
    let &t_EI .= "\<Esc>[0 q"
" insert mode
    let &t_SI .= "\<Esc>[6 q"
endif
