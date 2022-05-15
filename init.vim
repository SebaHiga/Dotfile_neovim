set number
set relativenumber

exec 'source' neovim_dotfiles . '/whichkey.vim'
exec 'source' neovim_dotfiles . '/nerd.vim'
exec 'source' neovim_dotfiles . '/shortcuts.vim'
exec 'source' neovim_dotfiles . '/dashboard.vim'

let g:mapleader="\<Space>"

" Pluggins
call plug#begin('~/.config/nvim/plugged')
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap'

Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
" Plug 'ms-jpq/chadtree'
" Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'glepnir/dashboard-nvim'
Plug 'romgrk/winteract.vim'
" Plug 'burntsushi/ripgrep'
Plug 'jremmen/vim-ripgrep'
" Plug 'mhinz/vim-startify'
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
let g:dashboard_default_executive ='clap'
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
