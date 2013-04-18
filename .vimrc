set nocompatible
set nu
syntax on
set wrap

set hlsearch
set incsearch

set hidden

" next/previous buffer
noremap <C-S-Tab> :bprev<CR> 
noremap <C-Tab> :bnext<CR> 

" spacings "
set backspace=indent,eol,start
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

"highlighted columns"
:set textwidth=80
highlight ColorColumn ctermbg=7
let &colorcolumn="81"

set nostartofline

set showcmd

" swap colon/semicolon "
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;


" resize splits w/ ctrl + arrows
map <C-Down> <C-W>+
map <C-Up> <C-W>-
map <C-Left> <C-W><
map <C-Right> <C-W>>

" ctrl-hjkl to swap splits
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l


let mapleader='f'
map T :tabnew<Enter>
map <Leader>[ gT
map <Leader>] gt


" omnicomplete for specific langs "
autocmd BufRead *.as set filetype=actionscript
autocmd BufRead *.mxml set filetype=mxml
autocmd BufRead,BufNewFile *.scala set filetype=scala
autocmd BufNewFile,BufRead *.less set filetype=less
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
autocmd FileType less set omnifunc=csscomplete#CompleteCSS
