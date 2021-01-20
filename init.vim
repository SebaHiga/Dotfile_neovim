set number
set relativenumber

let mapleader = " "
set timeoutlen=1000

nnoremap <silent> <leader>sc :nohlsearch<CR>
nnoremap <silent> <leader>ft :NERDTreeToggle<CR>
nnoremap <silent> <leader>bn :bnext<CR>
nnoremap <silent> <leader>wl <C-W>l
nnoremap <silent> <leader>wh <C-W>h
nnoremap <silent> <leader>wk <C-W>k
nnoremap <silent> <leader>wj <C-W>j
nnoremap <silent> <leader>wv <C-w>v
nnoremap <Leader>bf :<C-u>ClangFormat<CR>

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'liuchengxu/vim-which-key'
Plug 'severin-lemaignan/vim-minimap'
" Plug 'koron/minimap-vim'
Plug 'rhysd/vim-clang-format'
Plug 'raimondi/delimitmate'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'valloric/youcompleteme'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'dracula/vim'
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
let g:airline#extensions#tabline#left_alt_sep = '>'

" Minimap Settings
let g:minimap_highlight='Visual'

" C++ Settings
" let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
" The following two lines are optional. Configure it to your liking!
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
