#!/usr/local/bin/zsh

typeset -A vim_plugs

files=($(ls -1 * | tr "\n" " "))

vim_plugs[mattn/emmet-vim]="emmet-vim"
vim_plugs[haya14busa/incsearch.vim]="incsearch.vim"
vim_plugs[scrooloose/nerdcommenter]="nerdcommenter"
vim_plugs[scrooloose/nerdtree]="nerdtree"
vim_plugs[Xuyuanp/nerdtree-git-plugin]="nerdtree-git-plugin"
vim_plugs[vim-syntastic/syntastic]="syntastic"
vim_plugs[majutsushi/tagbar]="tagbar"
vim_plugs[wellle/targets.vim]="targets.vim"
vim_plugs[vim-airline/vim-airline]="vim-airline"
vim_plugs[vim-airline/vim-airline-themes]="vim-airline-themes"
vim_plugs[easymotion/vim-easymotion]="vim-easymotion"
vim_plugs[terryma/vim-multiple-cursors]="vim-multiple-cursors"
vim_plugs[tpope/vim-repeat]="vim-repeat"
vim_plugs[justinmk/vim-sneak]="vim-sneak"
vim_plugs[tpope/vim-surround]="vim-surround"
vim_plugs[tpope/vim-unimpaired]="vim-unimpaired"

for file in $files; do
  cp ~/dotfiles/$file ~/.$file.backup && echo "Backing up $file";
  ln -s ~/dotfiles/$file ~/.$file && echo "Symlinking $file";
done

for key val in ${(kv)vim_plugs}; do
  git clone git@github.com:$key.git ~/.vim/bundle/$val;
done

