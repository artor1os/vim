# vim

prerequisites:

- vim - with lua, no luajit, python3
- python3.8
- llvm
- ctags

```sh
git clone --shallow-modules --recurse-submodules https://github.com/artor1os/vim ~/.vim
sudo vim -E -c "helptags ALL" -c q

# compile YouCompleteMe
git submodule update --init --recursive pack/extend/start/YouCompleteMe
python3 pack/extend/start/YouCompleteMe/install.py --clangd-completer

# complie color_code
cd pack/syntax/start/color_coded
mkdir build && cd build
cmake .. -DDOWNLOAD_CLANG=0
make && make install
make clean

# correct one half color scheme directory
ln -s pack/color/start/onehalf/{vim/colors,colors}
ln -s pack/color/start/onehalf/{vim/autoload,autoload}
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

### color_coded

https://github.com/jeaye/color_coded

### tagbar

https://github.com/majutsushi/tagbar

### fugitive

https://github.com/tpope/vim-fugitive

### rhubarb

https://github.com/tpope/vim-rhubarb

### airline

https://github.com/vim-airline/vim-airline

### onehalf

https://github.com/sonph/onehalf
