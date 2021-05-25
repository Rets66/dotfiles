" Infomation
" Auher : Rets66
" Editor : Neovim
" Manager : dein.vim

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

"if has('vim_starting')
"  new
"  wincmd j
"  resize 15
"  terminal
"  wincmd k
"endif

" Define the path
let s:dein_dir = expand('~/.cache/dein')
let s:toml_dir = expand('~/.config/nvim')

" Set 'dein.vim' configuration
if &compatible
  set nocompatible
endif

" Loading configuration
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Load Plugin from file
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/lazy_dein.toml', {'lazy': 1})

  " Closing
  call dein#end()
  call dein#save_state()
endif

set autowriteall

" Install plugins if not
if dein#check_install()
  call dein#install()
endif

" Keymap
map <C-e> <Nop>
map <C-f> <Nop>
inoremap <C-f> <Esc>
cnoremap <C-f> <Esc>
cnoremap <C-a> <C-b>
vnoremap <C-f> <Esc>
tnoremap <C-f> <C-\><C-n>
nnoremap b :
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>
inoremap <C-d> <Del>
inoremap <C-g> <C-y>
nnoremap <C-j> <C-n>
nnoremap <C-k> <C-p>

" Move pain
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l

" Command
map <C-l> <Nop>
nnoremap <silent> <C-l> :Files<CR>
nnoremap <silent> <C-n> :terminal<CR>
nnoremap <silent> <C-s> :cd <bar> :Files<CR>

" Easymotion
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nnoremap <space> <Plug>(easymotion-overwin-f2)

" Alias
cabbrev : vsb vert sbuffer
cabbrev : vterm vert terminal
cabbrev : bterm bo terminal
cabbrev : tterm top terminal

filetype plugin on

" General
set ttimeoutlen=50

" colorscheme
color dracula

" Syntax
syntax enable

" Tab size
set expandtab
set tabstop=2
set shiftwidth=2

" Use Visual Bell
set visualbell

set cursorline
highlight cursorline cterm=bold
highlight cursorline cterm=underline

" Window complement
set wildmenu

" Show Title
set title

" clipboard
set clipboard+=unnamedplus

" Setting Language
let $LANG = 'en_US.UTF-8'

" Encoding Setting
set encoding=utf-8

" Show space
set list

" Ignore text case
set ignorecase

" Stop create swap file
set noswapfile

" Configure the split position
set splitbelow
set splitright

" Terminal Mode configure
autocmd TermOpen * setlocal norelativenumber
" When term opens, stop number
autocmd TermOpen * setlocal nonumber

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" NERDTree
command Nd NERDTree

" airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'angr'

function! s:SetDefault(var, val)
  if !exists(a:var)
    execute 'let ' . a:var . '=' . string(a:val)
  endif
endfunction

" Latex
" To recognize all .tex file to latex
let g:tex_flavor='latex'

call map(dein#check_clean(), "delete(v:val, 'rf')")

let g:python3_host_prog=expand('/usr/local/bin/python3')

" Fixing terraform without ale
let g:terraform_fmt_on_save=1

" Ale
" Linting
let g:ale_linters = {'python': ['flake8']}

" Fixing
let g:ale_fixers = {
  \ 'python': ['autopep8', 'isort']
  \}
" Lint when file is opened
let g:ale_lint_on_enter = 1
" Lint when file is saved
let g:ale_fix_on_save = 1

" Deoplete
let g:deoplete#enable_at_startup = 1
