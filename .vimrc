"
"	My .vimrc

" Plugged
call plug#begin('~/.vim/plugged')
	" Centering Writing
	Plug 'junegunn/goyo.vim'
	" Tree Viewing Of Files
	Plug 'scrooloose/nerdtree'
	" YouCompleteMe
	Plug 'Valloric/YouCompleteMe'
	" Statusnar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

"Basic Configs 
colorscheme ron
filetype plugin on
filetype indent on
syntax enable
set encoding=utf-8
set number
set noshowcmd
set wildmenu

"" Tabs & Spaces
set tabstop=4
set softtabstop=4

" filetype independent
inoremap ,, <Esc>/<;;><Enter>"_c4l
map <C-n> :NERDTreeToggle<CR>
map ,,w :Goyo<CR>

" filetype dependent

" Latex
	autocmd Filetype tex set relativenumber
	autocmd FileType tex map <F8> :w %<CR> :!pdflatex %<CR>
	autocmd FileType tex map <F7> :setlocal spell! spelllang=pt_pt<CR>
	autocmd FileType tex inoremap <F5> <Esc>]sz=
	
	autocmd FileType tex inoremap ,b \textbf{}<;;><Esc>F}i
	autocmd FileType tex inoremap ,it \textit{}<;;><Esc>F}i
	autocmd FileType tex inoremap ,em \emph{}<;;><Esc>F}i
	autocmd FileType tex inoremap ,vs \vspace{}<;;><Esc>F}i
	autocmd FileType tex inoremap ,ct \textcite{}<;;><Esc>F}i
	autocmd FileType tex inoremap ,cp \parencite{}<;;><Esc>F}i
	autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><;;><Esc>2kf}i
	autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><;;><Esc>2kf}i
	autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><;;><Esc>2kf}i
	autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><;;><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><;;><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,li <Enter>\item<Space>
