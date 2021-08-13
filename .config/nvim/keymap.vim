" ===========================
" Keymap Config
" ===========================
map <C-e> <Nop>
map <C-f> <Nop>
map <C-Tab> gt
map <C-S-Tab> gT
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

" ===========================
" Move pain
" ===========================
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l

" ===========================
" Command
" ===========================
map <C-l> <Nop>

" ===========================
" fzf
" ===========================
nnoremap <silent> <C-l> :Files<CR>
nnoremap <silent> <C-n> :terminal<CR>
nnoremap <silent> <C-S> :cd <bar> :Files<CR>
nnoremap <silent> <C-B> :Buffers<CR>

" ===========================
" Easymotion
" ===========================
map <Leader> <Plug>(easymotion-prefix)
nnoremap <space> <Plug>(easymotion-overwin-f2)
" Disable default mappings
let g:EasyMotion_do_mapping = 0
