filetype off

" I've switched from pathogen to Vundle
"call pathogen#incubate()
"call pathogen#helptags()

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" Commands: :BundleInstall :BundleUpdate :BundleClean

" Bundles that I have selected
Bundle 'scrooloose/nerdtree'
Bundle 'mfukar/robotframework-vim'
Bundle 'techlivezheng/vim-plugin-minibufexpl'
Bundle 'chase/vim-ansible-yaml'

syntax on
filetype on
"filetype plugin indent on
filetype indent on

"set background=dark

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

set hlsearch
set autoindent
"set smartindent
set tabstop=4 shiftwidth=4 expandtab
set modeline

set foldmethod=indent
set foldlevel=99

map <Leader>n :NERDTreeToggle<CR>

let g:miniBufExplCheckDupeBufs = 0

