set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
"
Plugin 'VundleVim/Vundle.vim'

"
" my plugins ***
"
Plugin 'itchyny/lightline.vim'
Plugin 'wolf-dog/nighted.vim'
Plugin 'wolf-dog/lightline-nighted.vim'
Plugin 'cocopon/iceberg.vim'
Plugin 'edkolev/tmuxline.vim'
"
" All of your Plugins must be added before the following line
"
call vundle#end()            " required
filetype plugin indent on    " required
"
" put your non-plugin stuff after this line
"
" general settings
"
syntax enable
set number
set noshowmode
"
" tab settings
"
set tabstop=4
set shiftwidth=4
set softtabstop=4
"
" toggle invisible characters
"
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
"
" eliminate delay on esc
"
set ttimeoutlen=50
"
" general settings
"
syntax enable
set number
set relativenumber
"
" terminal to 256 colors
"
set t_co=256
"
" set colorscheme
"
set background=dark
colorscheme iceberg
"
"use system clipboard
"
set clipboard=unnamedplus
"
" lightline settings
"
set laststatus=2
let g:lightline = {
  \   'colorscheme': 'nighted',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
	\   'component': {
	\     'lineinfo': ' %3l:%-2v',
	\   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': ''
  \}
"
" tmuxline
"
