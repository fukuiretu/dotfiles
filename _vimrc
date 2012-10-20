set enc=utf-8
set nocompatible

set cursorline "カーソル行をハイライト
syntax on
set number
set autoindent

filetype off

" swapファイルを作らない
set noswapfile

" setup plugin start
set rtp+=~/dotfiles/vimfiles/bundle/vundle/
call vundle#rc()
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-quickrun'
Bundle 'trinity.vim'
Bundle 'The-NERD-tree'

filetype plugin indent on     " required!
" setup plugin end

nmap <F9> :NERDTreeToggle
