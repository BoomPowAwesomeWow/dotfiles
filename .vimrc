"Basic Configs
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number
	set relativenumber

"SpellChecker
	map <F6> :setlocal spell! spelllang=pt_pt<CR> 	

"Document Independent
	inoremap <Space><Space> <Esc>/<;;><Enter>"_c4l
	map <F3> :!latex % && pdflatex %<CR>
	map <F2> :!mupdf %<CR>

""" Filetype dependent
" Latex
	autocmd FileType tex inoremap ;b \textbf{}<;;><Esc>F}i
	autocmd FileType tex inoremap ;it \textit{}<;;><Esc>F}i
	autocmd FileType tex inoremap ;em \emph{}<;;><Esc>F}i
	autocmd FileType tex inoremap ;vs \vspace{}<;;><Esc>F}i
	autocmd FileType tex inoremap ;ct \textcite{}<;;><Esc>F}i
	autocmd FileType tex inoremap ;cp \parencite{}<;;><Esc>F}i
	autocmd FileType tex inoremap ;sec \section{}<Enter><Enter><;;><Esc>2kf}i
	autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter><;;><Esc>2kf}i
	autocmd FileType tex inoremap ;sssec \subsubsection{}<Enter><Enter><;;><Esc>2kf}i

	autocmd FileType tex inoremap ;ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><;;><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ;ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><;;><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ;li <Enter>\item<Space>
" BIB
	autocmd FileType bib inoremap ;a @article{,<Enter><Tab>title<Space>=<Space>"<;;>",<Enter><Tab>author<Space>=<Space>"<;;>",<Enter><Tab>year<Space>=<Space>"<;;>",<Enter><Tab>url<Space>=<Space>"<;;>",<Enter>}<Enter><;;><Esc>6kf,i
	autocmd FileType bib inoremap ;b @book{,<Enter><Tab>title<Space>=<Space>"<;;>",<Enter><Tab>author<Space>=<Space>"<;;>",<Enter><Tab>publisher<Space>=<Space>"<;;>",<Enter><Tab>date<Space>=<Space>"<;;>",<Enter><Tab>keywords<Space>=<Space>"<;;>",<Enter>}<Enter><;;><Esc>7kf,i

