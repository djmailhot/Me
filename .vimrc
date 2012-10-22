set ts=4
set sw=4
set number
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

autocmd BufRead *.as set filetype=actionscript
autocmd BufRead *.mxml set filetype=mxml
syntax on


"Tab completion"
set complete=.,b,u,]
set completeopt=menu,preview
function! CleverTab()
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<tab>"
	else
		return "\<C-P>"
	endif
endfunction
inoremap <tab> <c-r>=CleverTab()<CR>

"Higlight current line only in insert mode
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline

"Highlight cursor
highlight CursorLine ctermbg=8 cterm=NONE

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html setlocal sw=2
autocmd FileType html setlocal ts=2
autocmd FileType html setlocal sts=2
autocmd FileType html setlocal textwidth=0
" XHTML (tab width 2 chr, no wrapping)
autocmd FileType xhtml setlocal sw=2
autocmd FileType xhtml setlocal ts=2
autocmd FileType xhtml setlocal sts=2
autocmd FileType xhtml setlocal textwidth=0
" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css setlocal sw=2
autocmd FileType css setlocal ts=2
autocmd FileType css setlocal sts=2
autocmd FileType javascript setlocal textwidth=0
" JavaScript (tab width 4 chr, wrap at 79th)
autocmd FileType javascript setlocal sw=4
autocmd FileType javascript setlocal ts=4
autocmd FileType javascript setlocal sts=4
autocmd FileType javascript setlocal textwidth=0


autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
