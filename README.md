# vim

```sh
git clone --shallow-modules --recurse-submodules https://github.com/artor1os/vim ~/.vim
sudo vim -E -c helptags ALL -c q
git submodule update --init --recursive pack/extend/start/YouCompleteMe
python3 pack/extend/start/YouCompleteMe/install.py --clangd-completer
```

## bundles

### sensible

https://github.com/tpope/vim-sensible

### surround

https://github.com/tpope/vim-surround

### easymotion

https://github.com/easymotion/vim-easymotion

### hardtime

https://github.com/takac/vim-hardtime

### nerdtree

https://github.com/preservim/nerdtree

### nerdtree-git-plugin

https://github.com/Xuyuanp/nerdtree-git-plugin

### fzf

https://github.com/junegunn/fzf

### nerdcommenter

https://github.com/preservim/nerdcommenter

### YouCompleteMe

https://github.com/ycm-core/YouCompleteMe

### auto-pairs

https://github.com/jiangmiao/auto-pairs
