call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" If no screen, use color term
if ($TERM == "vt100")
  " xterm-color / screen
  set t_Co=8
  set t_AF=^[[1;3%p1%dm
  set t_AB=^[[4%p1%dm
endif

" General Settings

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

set nocompatible	" not compatible with the old-fashion vi mode
set nu	" show the line number; use [set nonu] to close
set bs=2		" allow backspacing over everything in insert mode
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set autoread		" auto read when file is changed from outside

"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo

syntax on	" use syntax

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" ---- Mainly for MacVim ----
if has("gui_running")	" GUI color and font settings
   set guifont=Osaka-Mono:h20
   "set background=dark 
   set t_Co=256          " 256 color mode
   set cursorline        " highlight current line
   highlight CursorLine	guibg=#003853 ctermbg=24  gui=none cterm=none
   colorscheme evening  " My colorschem setting
   " make transparent(for macvim)
   set transparency=15
   "set guioptions=aAce
   " macvim window size
   set lines=35
   set columns=100
endif
" ---------------------------

set wildchar=<TAB>
set wildmenu
set showmatch
set showmode
"set background=dark    " another is 'light'

" ignore these files while expanding wild chars
set wildignore=*.o,*.class,*.pyc

set autoindent		" auto indentation
set smartindent
set incsearch		" incremental search
set nobackup		" no *~ backup files
set copyindent		" copy the previous indentation on autoindenting
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase,
                        " case-sensitive otherwise
set smarttab		" insert tabs on the start of a line according to context

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" TAB setting{
	set softtabstop=3	" the tab space size=4
	set shiftwidth=3	" the autoindenting space size=4
   	set expandtab        "replace <TAB> with spaces

   au FileType Makefile set noexpandtab
"}


"--------------------------------------------------------------------------- 
" USEFUL SHORTCUTS
"--------------------------------------------------------------------------- 
" set leader to ,
let mapleader=","
let g:mapleader=","

" open the error console
map <leader>cc :botright cope<CR> 
" move to next error
map <leader>] :cn<CR>
" move to the prev error
map <leader>[ :cp<CR>

" Bash like keys for the command line
cnoremap <C-A>    <Home>
cnoremap <C-E>    <End>
cnoremap <C-K>    <C-U>

" Tab key binding
" new tab
map <C-t><C-t> :tabnew<CR>
" close tab
map <C-t><C-w> :tabclose<CR> 
map <F4> :set invcursorline<CR>

map g1 :tabn 1<CR>
map g2 :tabn 2<CR>
map g3 :tabn 3<CR>
map g4 :tabn 4<CR>
map g5 :tabn 5<CR>
map g6 :tabn 6<CR>
map g7 :tabn 7<CR>
map g8 :tabn 8<CR>
map g9 :tabn 9<CR>
map g0 :tabn 10<CR>
" go to next tab (default gt)
map gn :tabn<CR>
" go to previous tab (default gT)
map gp :tabp<CR>

"--------------------------------------------------------------------------- 
" PROGRAMMING SHORTCUTS
"--------------------------------------------------------------------------- 

" { } completement
"imap {<CR> {<CR><END><CR>}<UP><END>

" Enable omni completion. (Ctrl-N) (Ctrl-X Ctrl-O)
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType c setlocal omnifunc=ccomplete#Complete
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" use syntax complete if nothing else available
if has("autocmd") && exists("+omnifunc")
   autocmd Filetype *
            \if &omnifunc == "" |
            \  setlocal omnifunc=syntaxcomplete#Complete |
            \endif
endif

"--------------------------------------------------------------------------- 
" ENCODING SETTINGS
"--------------------------------------------------------------------------- 
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

fun! ViewUTF8()
	set encoding=utf-8                                  
	set termencoding=big5
endfun

fun! UTF8()
	set encoding=utf-8                                  
	set termencoding=big5
	set fileencoding=utf-8
	set fileencodings=ucs-bom,big5,utf-8,latin1
endfun

fun! Big5()
	set encoding=big5
	set fileencoding=big5
endfun
