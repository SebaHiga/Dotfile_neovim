" Whichkey configuration file

" Which key mapping and shortcuts definition
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

call which_key#register('<Space>', "g:which_key_map")

let g:maplocalleader = ','
let g:which_key_map =  {}
set timeoutlen=500

" let g:which_key_map.s = { 'name' : '+search' }
" let g:which_key_map.s.c = ['', 'clear search']
nnoremap <silent> <leader>sc :nohlsearch<CR>
nnoremap <silent> <leader>sf :FZF<CR>
nnoremap <silent> <leader>sw :Rg<space>
let g:which_key_map.s = {
      \ 'name' : '+search',
      \ 'c' : 'clear',
      \ 'f' : 'fuzzy-file',
      \ 'w' : 'word',
      \ }
" let g:which_key_map.s.v = 'reload vimrc'
" nnoremap <leader>sv :source $MYVIMRC<CR>

nnoremap <silent> <leader>ft :NERDTreeToggle<CR>
let g:which_key_map.f = {
      \ 'name' : '+file',
      \ 't' : 'show-tree',
      \ }

" Window actions
nnoremap <silent> <leader>ww :w!<CR>
nnoremap <silent> <leader>wc :q<CR>
nnoremap <silent> <leader>wq :wq!<CR>
nnoremap <silent> <leader>wl <C-W>l
nnoremap <silent> <leader>wh <C-W>h
nnoremap <silent> <leader>wk <C-W>k
nnoremap <silent> <leader>wj <C-W>j
nnoremap <silent> <leader>wv <C-w>v<C-w>l
nnoremap <silent> <leader>ws <C-w>s<C-w>l
let g:which_key_map.w = {
      \ 'name' : '+window',
      \ 'w' : 'write',
      \ 'q' : 'quit',
      \ 'wq' : 'write-close',
      \ 'l' : 'switch-right',
      \ 'h' : 'switch-left',
      \ 'k' : 'switch-up',
      \ 'j' : 'switch-down',
      \ 'v' : 'split-vertical',
      \ 's' : 'split-horizontal',
      \ }
"
" Split windows commands

nnoremap <silent> <leader>qq :q!<CR>
nnoremap <silent> <leader>qw :wq!<CR>
let g:which_key_map.q = {
      \ 'name' : '+quit',
      \ 'q' : 'quit-no-save',
      \ }
