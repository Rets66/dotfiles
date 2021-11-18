" ===========================
" Keymap Config
" ===========================
map <C-e> <Nop>
map <C-f> <Nop>
map <C-Tab> gt
map <C-S-Tab> gT
" When you escape from 'insert' Mode, switch IME to abc
inoremap <C-f> <Esc> :silent !im-select com.apple.keylayout.ABC<Enter>
cnoremap <C-f> <Esc>
cnoremap <C-a> <C-b>
vnoremap <C-f> <Esc>
tnoremap <C-f> <C-\><C-n>
nnoremap b :
inoremap <C-d> <Del>
inoremap <C-g> <C-y>
inoremap <expr> <C-t> ddc#insert_candidate(0)
" <TAB>: completion.
inoremap <silent><expr> <TAB>
\ pumvisible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
\ '<TAB>' : ddc#manual_complete()
" <S-TAB>: completion back.
inoremap <expr><S-TAB>  pumvisible() ? '<C-p>' : '<C-h>'

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
nnoremap <silent> <C-s> :Files ~<CR>
nnoremap <silent> <C-n> :Buffers<CR>
nnoremap <silent> <C-t> :terminal :set nospell<CR>
nnoremap <silent> <C-p> :PreviewMarkdown<CR>
nnoremap <silent> <C-e> :Unite buffer<CR>

" ===========================
" Unite
" ===========================
nnoremap <silent> <C-i> :Unite buffer<CR>

" ===========================
" Easymotion
" ===========================
map <Leader> <Plug>(easymotion-prefix)
nnoremap <space> <Plug>(easymotion-overwin-f2)
" Disable default mappings
let g:EasyMotion_do_mapping = 0

