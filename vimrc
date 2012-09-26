" The following two lines invoke pathogen plugin
" The pathogen plugin makes it possible 
" to cleanly install plugins as a bundle.
" every bundle now is a independent dir like ~/.vim/bundle/xxx
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" -----------------------------------------
" General Settings
" -----------------------------------------

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! bufwritepost vimrc source ~/.vimrc

set nocompatible	" not compatible with the old-fashion vi mode
set nu	" show the line number; use [set nonu] to close
set bs=2		" allow backspacing over everything in insert mode
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set autoread		" auto read when file is changed from outside
set linespace=2
set paste               " when paste from other source, do not auto comment  

"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo

syntax on	" use syntax

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set t_Co=256            " 256 color mode
colorscheme railscasts  " My colorschem setting
highlight CursorLine	guibg=#003853 ctermbg=24  gui=none cterm=none
" ---- Mainly for MacVim ----
if has("gui_running")	" GUI color and font settings
   colorscheme railscasts  " My colorschem setting
   set guifont=Monaco:h18
   "set background=dark 
   set cursorline        " highlight current line
   " make transparent(for macvim)
   set transparency=20
   "set guioptions=aAce
   set guioptions=ce
   " macvim window size
   set lines=30
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

" select ALL
map <C-A> ggVG

" open the error console
map <leader>cc :botright cope<CR> 
" move to next error
map <leader>] :cn<CR>
" move to the prev error
map <leader>[ :cp<CR>

" show the current line by underlined cursor
map <F4> :set invcursorline<CR>

" Bash like keys for the command line
cnoremap <C-A>    <Home>
cnoremap <C-E>    <End>
cnoremap <C-K>    <C-U>

" NERDTreeTabsToggle bind to <F2>
map <F2> :NERDTreeTabsToggle<CR>
" NERDTreeToggle bind to <F3>
map <F3> :NERDTreeToggle<CR>
"map <leader>n :NERDTreeTabsToggle<CR>

"
" Tab key binding
" new tab
map gn :tabnew<CR>
" close tab
map gc :tabclose<CR> 
" go to next tab (default gt)
map gt :tabn<CR>
" go to previous tab (default gT)
map gT :tabp<CR>

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

"----------------------------------------------------------------------- 
" ENCODING SETTINGS
"----------------------------------------------------------------------- 
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

"----------------------------------------------------------------------- 
" PLUGINS
"-----------------------------------------------------------------------

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
