" ===========================
" Set 'dein.vim' configuration
" ===========================
if &compatible
  set nocompatible
endif

" Set Dein base path (required)
let s:dein_base = '~/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '~/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Set Dein plugin path
let s:toml_dir = '~/.config/nvim'

" Loading configuration
if dein#load_state(s:dein_base)
  call dein#begin(s:dein_base)
  call dein#load_toml(s:toml_dir . '/plugins/dein.toml', {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

function! s:SetDefault(var, val)
  if !exists(a:var)
    execute 'let ' . a:var . '=' . string(a:val)
  endif
endfunction

" fzf
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8, 'yoffset': 0.0  } }

" airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'angr'
let g:airline_symbols.branch = '⎇'
let g:airline_extensions = ['branch']
let g:airline_section_a = ''
let g:airline_section_c = '%t'
let g:airline_section_y = ''
let g:airline_section_z = '%{strftime("%H:%M")}'

" Latex
" To recognize all .tex file to latex
let g:tex_flavor='latex'

call map(dein#check_clean(), "delete(v:val, 'rf')")

" Fixing terraform without ale
let g:terraform_fmt_on_save=1

" python3
let g:python3_host_prog = "/opt/homebrew/bin/python3"
let g:loaded_python_provider = 0

" Preview markdown
let g:preview_markdown_parser='mdcat'
