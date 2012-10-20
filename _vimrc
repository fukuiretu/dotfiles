set nocompatible
filetype off
 
set rtp+=~/dotfiles/vimfiles/bundle/vundle/
call vundle#rc()
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-quickrun'
Bundle 'trinity.vim'
filetype plugin indent on     " required!
