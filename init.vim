set number
set relativenumber

let mapleader = " "
set timeoutlen=500

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <leader>sc :nohlsearch<CR>
nnoremap <silent> <leader>ft :NERDTreeToggle<CR>
nnoremap <silent> <leader>fs :w<CR>
nnoremap <silent> <leader>bn :bnext<CR>
nnoremap <silent> <leader>wl <C-W>l
nnoremap <silent> <leader>wh <C-W>h
nnoremap <silent> <leader>wk <C-W>k
nnoremap <silent> <leader>wj <C-W>j
nnoremap <silent> <leader>wv <C-w>v<C-w>l
nnoremap <silent> <leader>ww :w!<CR>
nnoremap <silent> <leader>wc :q<CR>
nnoremap <silent> <leader>wq :wq!<CR>
nnoremap <silent> <leader>qq :q!<CR>
nnoremap <Leader>bf :<C-u>ClangFormat<CR>
" Set a ; at the end of the line
nnoremap <silent> ;; $a;<esc>
nnoremap <silent> <leader>fzf :FZF<CR>

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
" Plug 'ms-jpq/chadtree'
" Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'romgrk/winteract.vim'
" Plug 'burntsushi/ripgrep'
Plug 'jremmen/vim-ripgrep'
Plug 'mg979/vim-visual-multi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/vim-which-key'
" Plug 'severin-lemaignan/vim-minimap'
" Plug 'koron/minimap-vim'
Plug 'rhysd/vim-clang-format'
Plug 'raimondi/delimitmate'
" Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'valloric/youcompleteme'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
" Plug 'yuttie/comfortable-motion.vim'
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

" NERD Commenter Settings
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of followin code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Airline Setting
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='onedark'

" Minimap Settings
let g:minimap_highlight='Visual'


" Color theme
" syntax on
colorscheme onedark
let g:airline_theme='deus'
" Which key Mapping
" call which_key#register('<Space>', 'g:which_key_map')
let g:which_key_map =  {}

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'h' : ['<C-W>h'     , 'switch left']           ,
      \ 'j' : ['<C-W>j'     , 'switch bottom']         ,
      \ 'k' : ['<C-W>k'     , 'switch top']            ,
      \ 'l' : ['<C-W>l'     , 'switch left']           ,
      \ 'v' : ['<C-W>h'     , 'split vertical']        ,
      \ 'c' : ['<C-W>j'     , 'close']                 ,
      \ }

let g:which_key_map['f'] = {
      \ 'name' : '+file' ,
      \ 's' : ['<C-W>h'     , 'save']                  ,
      \ 't' : ['<C-W>h'     , 'toogle NERDTree']       ,
      \ }

let g:which_key_map['s'] = {
      \ 'name' : '+search' ,
      \ 'c' : ['<C-W>h'     , 'clear']                 ,
      \}

let g:which_key_map['b'] = {
      \ 'name' : '+buffer' ,
      \ 'n' : ['<C-W>h'     , 'next']                  ,
      \ 'f' : ['<C-W>h'     , 'format']                ,
      \ }
