call plug#begin('~/.local/share/nvim/plugged')
Plug 'dart-lang/dart-vim-plugin'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'lervag/vimtex'
Plug 'natebosch/dartlang-snippets'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sirver/ultisnips'
Plug 'thosakwe/vim-flutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'bling/vim-bufferline'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/a.vim'
Plug 'morhetz/gruvbox'
"Plug 'yggdroot/indentline'
call plug#end()

let mapleader = ","

colorscheme gruvbox
set background=dark

let g:NERDCustomDelimiters = { 'c': { 'left': '// ','right': ''}}
let g:NERDDpaceDelims=1

let dart_style_guide=2

"let g:lsc_server_commands = {'dart': 'dart_language_server'}
"let g:lsc_auto_map = {
    "\ 'defaults': v:true,
    "\ 'GoToDefinition': '<leader>g',
    "\ 'GoToDefinitionSplit': '<leader>G',
    "\ 'FindReferences': '<leader>R',
    "\ 'NextReference': '<leader>n',
    "\ 'PreviousReference': '<leader>N',
    "\ 'Rename': '<leader>c',
    "\ 'ShowHover': ',h',
    "\ }
"autocmd CompleteDone * silent! pclose

let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0

map <C-Space> :NERDTree

let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"nnoremap <leader>f :YcmCompleter FixIt<cr>
let g:SuperTabDefaultCompletionType = "<C-n>"

"UltiSnips
imap <c-j> <Nop>
nmap <c-j> <Nop>
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

"LaTeX
"vimtex
"let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
"
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

nnoremap <leader><space> :noh<cr>

"set autoindent
set shiftwidth=4
set tabstop=4
set expandtab

set foldmethod=indent
set foldlevelstart=99
"set nofoldenable
"set foldnestmax=2

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

noremap <F1> :b1<cr>
noremap <F2> :b2<cr>
noremap <F3> :b3<cr>
noremap <F4> :b4<cr>
noremap <F5> :b5<cr>
noremap <F6> :b6<cr>
noremap <F7> :b7<cr>
noremap <F8> :b8<cr>
noremap <F9> :b9<cr>

highlight SpellBad ctermbg=200
highlight Search ctermbg=20

set clipboard+=unnamedplus

autocmd! bufwritepost init.vim source %
nnoremap <leader>e :e $MYVIMRC<cr>
nnoremap <leader>E :vsplit $MYVIMRC<cr>
nnoremap <leader>r :so $MYVIMRC<cr>

"edit the next placeholder (placeholder is <++>)
nnoremap <leader><tab> /<++><cr>:noh<cr>cf>

nnoremap <leader>F ifuck.
