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
" set relativenumber
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

" -------
" Plugins
" -------

" hardtime
let g:hardtime_default_on=1

let g:list_of_normal_keys=["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys=["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys=["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys=[]

let g:hardtime_timeout=2000

let g:hardtime_showmsg=1

let g:hardtime_ignore_buffer_patterns=["NERD.*", "__Tagbar__.*"]

let g:hardtime_ignore_quickfix=1

let g:hardtime_allow_different_key=0

let g:hardtime_maxcount=1

" NERDTree

" Open when no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <silent> <Leader>n :<C-u>NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :<C-u>NERDTreeFind<CR>

let NERDTreeQuitOnOpen=1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let NERDTreeAutoDeleteBuffer=1

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" fzf
nnoremap <silent> <Leader>s :<C-u>FZF<CR>

" YouCompleteMe

" CPP

let g:ycm_clangd_uses_ycmd_caching=0
let g:ycm_clangd_binary_path=exepath("clangd")

" tagbar
nnoremap <silent> <Leader>g :<C-u>TagbarToggle<CR>

let g:tagbar_autofocus=1
let g:tagbar_sort=0
let g:tagbar_compact=1
let g:tagbar_show_linenumbers=1

" nerdcommenter
let g:NERDSpaceDelims=1
let g:NERDCommentEmptyLines=1
let g:NERDTrimTrailingWhitespace=1

" coc.nvim

set cmdheight=2
set updatetime=300
set shortmess+=c

if has("patch-8.1.1564")
    set signcolumn=number
else
    set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

nmap <leader>rn <Plug>(coc-rename)

xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

nmap <leader>ac <Plug>(coc-codeaction)
nmap <leader>fq <Plug>(coc-fix-current)

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)


" ----------------
" WSL cursor issue
" ----------------
if &term =~ '^xterm'
" normal mode
    let &t_EI .= "\<Esc>[0 q"
" insert mode
    let &t_SI .= "\<Esc>[6 q"
endif

" ----------
" Fish issue
" ----------
if &shell =~# 'fish$'
    set shell=sh
endif

" -----
" Color
" -----
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

" ------
" Custom
" ------
set ttyfast

nnoremap <silent> <Leader>w <C-w>
nnoremap <silent> <Leader>q :<C-u>q<CR>

"auto close {
function! s:CloseBracket()
    let line = getline('.')
    if line =~# '^\s*\(struct\|class\|enum\) '
        return "{\<Enter>};\<Esc>O"
    elseif searchpair('(', '', ')', 'bmn', '', line('.'))
        " Probably inside a function call.  Close it off.
        return "{\<Enter>});\<Esc>O"
    else
        return "{\<Enter>}\<Esc>O"
    endif
endfunction
inoremap <expr> {<Enter> <SID>CloseBracket()

