" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" ===========================
" Define the path
" ===========================
let s:dein_dir = expand('~/.cache/dein')
let s:toml_dir = expand('~/.config/nvim')

" ===========================
" Set 'dein.vim' configuration
" ===========================
if &compatible
  set nocompatible
endif

" ===========================
" Loading configuration
" ===========================
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Load Plugin from file
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/lazy_dein.toml', {'lazy': 1})

  " Closing
  call dein#end()
  call dein#save_state()
endif

" ===========================
" Install plugins if not
" ===========================
if dein#check_install()
  call dein#install()
endif

" ===========================
" airline
" ===========================
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

" ===========================
" python3
" ===========================
let g:python3_host_prog = "/opt/homebrew/bin/python3"
let g:loaded_python_provider = 0
