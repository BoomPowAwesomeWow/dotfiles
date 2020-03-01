" ***********************
"
"	My .vimrc
"
" ***********************

" Install Plug.vim if not already in autoload dir
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install Plugins
call plug#begin('~/.config/nvim/plugged')
    Plug 'junegunn/goyo.vim'

    Plug 'scrooloose/nerdtree'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " Autocompletion engine
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
    " Python
    Plug 'deoplete-plugins/deoplete-jedi', {'for': 'python'}
    " Javascript
	Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

    Plug 'Yggdroot/indentLine'
    Plug 'dracula/vim', { 'as': 'dracula' }

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


