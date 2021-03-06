filetype off

" I've switched from pathogen to Vundle
"call pathogen#incubate()
"call pathogen#helptags()

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'mfukar/robotframework-vim'
Plugin 'techlivezheng/vim-plugin-minibufexpl'
Plugin 'chase/vim-ansible-yaml'
Plugin 'def-lkb/ocp-indent-vim'

call vundle#end()

syntax on
filetype on
filetype plugin on
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

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute "set rtp+=" . g:opamshare . "/merlin/vimbufsync"

set omnifunc=syntaxcomplete#Complete

let g:ocp_indent_args = ["--syntax", "lwt"]

map <F7> :make<CR>

