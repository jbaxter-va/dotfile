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
Plugin 'jnurmine/Zenburn'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
"turn on if using solarized!
" Plugin 'altercation/vim-colors-solarized'
Plugin 'chilicuil/vim-sml-coursera'
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"allows for fzf to be used in vim
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'SirVer/ultisnips'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on 

"------------- Plugin Configurations -------------

"configure gitgutter
set updatetime=250

"turn on all python highlighting 
let python_highlight_all = 1
"Make airline bar always appear
set laststatus=2

"change airline theme to match
" let g:airline_theme='solarized'
let g:airline_theme='murmur'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"Not show inset, visual etc. since already done by airline
set noshowmode

"Settings for fzf
set rtp+=/usr/local/opt/fzf
nnoremap <leader>r :History<cr>
nnoremap <leader>j :Buffers<cr>
nnoremap <leader>d :Tags<cr>
nnoremap <leader>l :Lines<cr>
nnoremap <leader>f :GitFiles<cr>
nnoremap <leader>F :Files<cr>

"Setting for vim-jedi
let g:jedi#completions_command = "<C-N>"


"------------- Vim Mappings -------------

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

"Mapping for easier buffer switching
map bn :bn<cr>
map bp :bn<cr>

"key mapping to toggle NERDtree 
nmap <C-d> :NERDTreeToggle<CR>

"hold selection
vnoremap > >gv
vnoremap < <gv

"Set paste mode
nnoremap <leader>v :set paste<cr> "+p:set nopaste<cr>

"Mapping for split swap
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

"Allow for easier buffer switching
nnoremap <C-n> :bnext<CR>
nnoremap <C-b> :bprevious<CR>

"------------- Auto Commands -------------
"set md files to type markdown
" autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" auto source .vimrc on change
	augroup source_vimrc
	    autocmd!
	    autocmd BufWritePost .vimrc,_vimrc,vimrc
		\ source ~/.vimrc | AirlineRefresh
	augroup END

"automatically line wrap markdown files
	augroup WrapLineInMarkdownFiles
		autocmd!
		autocmd FileType pandoc setlocal textwidth=80
		autocmd FileType pandoc setlocal fo=t
	augroup END		

"automatically line wrap Text files
	augroup WrapLineInTextFiles
		autocmd!
		autocmd FileType text setlocal textwidth=80
		autocmd FileType text setlocal fo=t
	augroup END		
	
"automatically line wrap latex files
	augroup WrapLineInlaTexFiles
		autocmd!
		autocmd FileType tex setlocal textwidth=80
		autocmd FileType tex setlocal fo=t
		autocmd FileType tex setlocal spell
	augroup END		

"Turn off error highlighting in Python files
	augroup TurnOffErrorHi
		autocmd!
		autocmd FileType python hi Error NONE
	augroup END

"follow the PEP8 indentation
au BufNewFile, BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

"------------- Misc. Configurations -------------

let mapleader = "\<Space>"
set backspace=2
filetype plugin indent on 
syntax on
"turn on line cursor
set cursorline
" wraopping
set wrap
set autochdir
set encoding=utf-8
set number
set ruler
set tabstop=4
set shiftwidth=4
set noexpandtab
set background=dark
" set clipboard=unamed

"------------- Color scheme selections -------------
" colorscheme solarized
" colorscheme molokai
" colorscheme vividchalk
colorscheme zenburn
" go back too 
" colorscheme candycode
" colorscheme monokai
" let g:rehash256 = 1
" colorscheme badwolf
