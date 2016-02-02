set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chilicuil/vim-sml-coursera'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on 


"Make airline bar always appear
set laststatus=2

"change airline theme to match
let g:airline_theme='solarized'

"remap the escape key to jk 
inoremap jk <ESC>

"change the key mapping for handlng splits
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
"remap Arrow Keys to quick resize windows
nnoremap <silent> <Left> :vertical resize -1<CR>
nnoremap <silent> <Right> :vertical resize +1<CR>
nnoremap <silent> <Up> :resize +1<CR>
nnoremap <silent> <Down> :resize -1<CR>
"key mapping for tagbar
map <C-t> :TagbarToggle<CR>

"key mapping to toggle NERDtree 
nmap <C-d> :NERDTreeToggle<CR>

let mapleader = "\<Space>"
filetype plugin indent on 
syntax enable
set encoding=utf-8
set number
set tabstop=4
set shiftwidth=4
set noexpandtab
"set background=dark
colorscheme solarized
