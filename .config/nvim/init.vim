" ===========================
" Infomation
" Auher : Rets66
" Editor : Neovim
" Manager : dein.vim
" ===========================

" Show Title
set title
" Time for key insert
set ttimeoutlen=1
" Setting Language
let $LANG = 'en_US.UTF-8'
" Save the file auto
set autowriteall
" Detect file type
filetype plugin on
" File complement
set wildmode=longest,list
" Encoding Setting
set encoding=utf-8
" Show space
set list
" Ignore text case
set noignorecase
" Stop create swap file
set noswapfile
" Yanked text to store at clipboard
set clipboard+=unnamedplus
" Open new window below or right side
set splitbelow
set splitright
" Disable number when terminal is opened
autocmd TermOpen * setlocal nonumber
autocmd TermOpen * setlocal norelativenumber
" Visualbell on, instead of the bell
set visualbell
" Use space instead of Tab
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
" Load files
runtime keymap.vim
runtime plugins/config.vim
" Set Highlight
set cursorline
highlight cursorline cterm=underline
" Make transparen background
highlight Normal guibg=NONE ctermbg=NONE
color dracula
let g:dracula_colorterm = 0
" Color on
syntax on
