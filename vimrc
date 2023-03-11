
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set omnifunc=javascriptcomplete#CompleteJS
set smartindent

set path+=**

set nocompatible

filetype plugin on 

set wildmenu

"Load an indent file for the detected file type"
filetype indent on

"Turn on syntax highlighting"
syntax on

let g:netrw_banner=0
let g:netrw_liststyle=3
let mapleader = "\<space>"

nnoremap <leader>ee :Ex<CR>
nnoremap <leader>ff :find 
nnoremap <leader>bb :b 
inoremap jk <esc>
