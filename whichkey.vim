" Whichkey configuration file

" Which key mapping and shortcuts definition
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

let g:maplocalleader = ','
let g:which_key_map =  {}
set timeoutlen=500

let g:which_key_map.s = { 'name' : 'search' }
let g:which_key_map.s.c = 'clear search'
nnoremap <silent> <leader>sc :nohlsearch<CR>
let g:which_key_map.s.v = 'reload vimrc'
nnoremap <leader>sv :source $MYVIMRC<CR>
let g:which_key_map.s.f = 'file fuzzy search'
nnoremap <silent> <leader>sf :FZF<CR>
nnoremap <silent> <leader>sw :Rg<space>

let g:which_key_map.f = { 'name' : 'file' }
nnoremap <silent> <leader>ft :NERDTreeToggle<CR>
let g:which_key_map.f.t = 'toggle file search'
nnoremap <silent> <leader>bn :bnext<CR>
"
" Window actions
let g:which_key_map.w = { 'name' : 'window' }
let g:which_key_map.w.w = 'write file'
nnoremap <silent> <leader>ww :w!<CR>
let g:which_key_map.w.c = 'close window'
nnoremap <silent> <leader>wc :q<CR>
let g:which_key_map.w.q = 'write and close'
nnoremap <silent> <leader>wq :wq!<CR>
"
" Split windows commands
let g:which_key_map.w.l = 'switch right'
nnoremap <silent> <leader>wl <C-W>l
let g:which_key_map.w.h = 'switch left'
nnoremap <silent> <leader>wh <C-W>h
let g:which_key_map.w.k = 'switch up'
nnoremap <silent> <leader>wk <C-W>k
let g:which_key_map.w.j = 'switch down'
nnoremap <silent> <leader>wj <C-W>j
let g:which_key_map.w.v = 'split vertical'
nnoremap <silent> <leader>wv <C-w>v<C-w>l
let g:which_key_map.w.s = 'split horizontal'
nnoremap <silent> <leader>ws <C-w>s<C-w>l

let g:which_key_map.q = { 'name' : 'quit' }
let g:which_key_map.q.q = 'quit without saving'
nnoremap <silent> <leader>qq :q!<CR>

let g:which_key_map.c = { 'name' : 'comment options' }
