" ***********************
"
"	My .vimrc
"
" ***********************

" Install Plugins
call plug#begin('~/.config/nvim/plugged')
    "Basics
    Plug 'junegunn/vim-plug'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'frazrepo/vim-rainbow'
    "Costumization
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'arcticicestudio/nord-vim'
    "File managers
    Plug 'scrooloose/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'
    "Misc
    Plugin 'ap/vim-css-color'
call plug#end()

"Basic Configs 
filetype plugin indent on
set encoding=utf-8
set ignorecase smartcase
set lazyredraw
set wildmenu
set cursorline
set number
set linebreak
set listchars+=precedes:<,extends:>
set nowrap
set noshowcmd
set splitbelow splitright
set expandtab 
set tabstop=4
set shiftwidth=4

" Colorscheme
syntax enable
colorscheme dracula
set background=dark
set termguicolors
" Removes background color
highlight Normal ctermbg=none guibg=none

"" Airline Config
let g:airline_theme='dracula'
let g:airline_powerline_fonts=1
" NERDtree config
map <C-n> :NERDTreeToggle<CR>
" Goyo config
map <leader><leader>w :Goyo<CR>

" deoplete config
let g:deoplete#enable_at_startup = 1

" Mappings
let mapleader = " "
" Save with CTRL-S
inoremap <C-s> <ESC>:w<CR>
nnoremap <C-s> :w<CR>


