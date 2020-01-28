set nu
inoremap kj <ESC>
let mapleader = " "
filetype plugin indent on
syntax on
set nocompatible
set encoding=utf-8
set clipboard=unnamedplus

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

if &term =~ '^xterm'
" normal mode
    let &t_EI .= "\<Esc>[0 q"
" insert mode
    let &t_SI .= "\<Esc>[6 q"
endif
