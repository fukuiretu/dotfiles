set nocompatible

" カーソル行をハイライト
set cursorline
syntax on
set number

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
