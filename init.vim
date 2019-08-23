call plug#begin('~/.local/share/nvim/plugged')
Plug 'https://github.com/s3rvac/vim-syntax-retdecdsm.git'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'valloric/youcompleteme'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'dart-lang/dart-vim-plugin'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
call plug#end()

let g:NERDCustomDelimiters = { 'c': { 'left': '// ','right': ''}}
let g:NERDDpaceDelims=1

let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_insertion=1

map <C-Space> :NERDTree

"if !exists('g:ycm_semantic_triggers')
"  let g:ycm_semantic_triggers = {}
"endif
"
"vimtex
"let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
"
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let mapleader = ","
nnoremap <leader><space> :noh<cr>

"nnoremap <leader>f :YcmCompleter FixIt<cr>
"set autoindent
set shiftwidth=4
set tabstop=4
set expandtab

set foldmethod=indent
set nofoldenable
set foldnestmax=2

set nocompatible
set ruler
"set sw=4
set relativenumber
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set wrap
set mouse=a
autocmd InsertLeave ? update

highlight SpellBad ctermbg=200
highlight Search ctermbg=20

set clipboard+=unnamedplus

nnoremap <leader>e :e $MYVIMRC<cr>
"refresh vimrc
nnoremap <leader>r :so $MYVIMRC<cr>
"edit the next placeholder (placeholder is <++>)
nnoremap <leader><tab> /<++><cr>:noh<cr>cf>

nnoremap <leader>f ifuck.
