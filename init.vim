set number
set relativenumber

runtime whichkey.vim
runtime nerd.vim
runtime shortcuts.vim

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
