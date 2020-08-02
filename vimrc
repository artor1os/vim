inoremap kj <ESC>
let mapleader = " "

set nocompatible

" -----------------
" Indention Options
" -----------------

" set autoindent " in sensible.vim
set expandtab
" set filetype indent on
set shiftround
set shiftwidth=4
" set smarttab
set tabstop=4
set softtabstop=4

" --------------
" Search Options
" --------------

" set hlsearch
set ignorecase
" set incsearch
set smartcase

" -------------------
" Performance Options
" -------------------

" set complete-=i
" set lazyredraw

" ----------------------
" Text Rendering Options
" ----------------------

" set display+=lastline
" set encoding=utf-8
set linebreak
" set scrolloff=1
" set sidescrolloff=5
" syntax enable
set wrap

" ----------------------
" User Interface Options
" ----------------------

" set laststatus=2
" set ruler
" set wildmenu
" set tabpagemax=50
set cursorline
set number
set relativenumber
set noerrorbells
" set visualbell
" set mouse=a
set title
set background=dark

" --------------------
" Code Folding Options
" --------------------

" set foldmethod=indent
" set foldnestmax=3
" set nofoldenable

" ---------------------
" Miscellaneous Options
" ---------------------

" set autoread
" set backspace=indent,eol,start
" set backupdir=~/.cache/vim
" set confirm
" set dir=~/.cache/vim
set formatoptions+=j
set hidden
" set history=1000
" set nomodeline
" set noswapfile
" set nrformats-=octal
" set shell=/usr/bin/zsh
" set spell
set wildignore+=.pyc,.swp

" ------
" Custom
" ------
set ttyfast

" ----------------
" WSL cursor issue
" ----------------
if &term =~ '^xterm'
" normal mode
    let &t_EI .= "\<Esc>[0 q"
" insert mode
    let &t_SI .= "\<Esc>[6 q"
endif
