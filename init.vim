set number
set relativenumber

let mapleader = " "
set timeoutlen=500

let g:mapleader = "\<Space>"
let g:maplocalleader = ','
let g:which_key_map =  {}
set timeoutlen=500


" Which key mapping and shortcuts definition
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

let g:which_key_map.s = { 'name' : 'search' }
let g:which_key_map.s.c = 'clear search'
nnoremap <silent> <leader>sc :nohlsearch<CR>
let g:which_key_map.s.v = 'reload vimrc'
nnoremap <leader>sv :source $MYVIMRC<CR>
let g:which_key_map.s.f = 'file fuzzy search'
nnoremap <silent> <leader>sf :FZF<CR>

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

nnoremap <Leader>bf :<C-u>ClangFormat<CR>

" Exit insert mode with jj
inoremap jj <ESC>l

" Set a ; at the end of the line
nnoremap <silent> ;; $a;<esc>

" Pluggins
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
" Plug 'ms-jpq/chadtree'
" Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'romgrk/winteract.vim'
" Plug 'burntsushi/ripgrep'
Plug 'jremmen/vim-ripgrep'
Plug 'mhinz/vim-startify'
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
call which_key#register('<Space>', "g:which_key_map")
