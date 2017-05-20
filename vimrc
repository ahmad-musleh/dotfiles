set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sentientmachine/Pretty-Vim-Python'
Plugin 'garybernhardt/dotfiles'
Plugin 'davidhalter/jedi-vim'

call vundle#end() 

" " To ignore plugin indent changes, instead use:
filetype plugin on
filetype indent on

" " NERDtree
autocmd vimenter * NERDTree  " auto start NERDtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" This is for closing vim when a file is closed and nothing but NERDtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" color scheme change and syntax
syntax on
colorscheme grb256 
highlight Comment cterm=bold

" " vim-latex	
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
