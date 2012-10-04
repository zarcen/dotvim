" The following two lines invoke pathogen plugin
" The pathogen plugin makes it possible 
" to cleanly install plugins as a bundle.
" every bundle now is a independent dir like ~/.vim/bundle/xxx
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" -----------------------------------------
" General Settings
" -----------------------------------------

" Use the damn hjkl keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

" use <C-G> to get normal mode in insert mode
imap <C-G> <Esc>
" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! bufwritepost vimrc source ~/.vimrc

set nocompatible	" not compatible with the old-fashion vi mode
set nu	                " show the line number; use [set nonu] to close
set bs=2		" allow backspacing over everything in insert mode
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set autoread		" auto read when file is changed from outside
set linespace=2         " a taller line
set nowrap              " never auto change to next line

"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo

syntax on	        " use syntax

filetype on             " Enable filetype detection
filetype indent on      " Enable filetype-specific indenting
filetype plugin on      " Enable filetype-specific plugins

set t_Co=256            " 256 color mode
colorscheme desert      " My colorschem setting
set background=dark     " another is 'light'
highlight CursorLine guibg=#003853 ctermbg=24  gui=none cterm=none
set cursorline          " highlight current line
set invcursorline
" ---- Mainly for MacVim ----
if has("gui_running")	" GUI color and font settings
   set guifont=Monaco:h18
   set cursorline       " highlight current line
   " make transparent(for macvim)
   set transparency=15
   "set guioptions=aAce
   set guioptions=aAce
   " macvim window size
   set lines=32
   set columns=128
endif
" ---------------------------

set wildchar=<TAB>      " when type command, use <tab> to do completion
set wildmenu
set showmatch
set showmode 

" ignore these files while expanding wild chars
set wildignore=*.o,*.class,*.pyc

set autoindent		" auto indentation
set smartindent         " a improvement of autoindent
set copyindent		" copy the previous indentation on autoindenting
set incsearch		" incremental search
set nobackup		" no *~ backup files
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

" select ALL
map <C-A> ggVG

" set leader to ,
let mapleader=","
let g:mapleader=","

" for copy from another source, like `pbcopy`
"" when paste from other source, do not auto comment or {} 
map <leader>p :set paste 
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

"
" Tab key binding
" new tab
map gn :tabnew<CR>
" close tab
map gc :tabclose<CR> 
" go to next tab (default gt)
"map gt :tabn<CR>
" go to previous tab (default gT)
"map gT :tabp<CR>

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
autocmd FileType java,c,cpp imap {<CR> {<CR><END><CR>}<UP><END>

" Enable omni completion. (default: <C-X><C-O>; my:<C-X><C-X>)
inoremap <C-X><C-X> <C-X><C-O><C-P>
if has("autocmd")
   autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
   autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
   autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
   autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
   autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
   autocmd FileType c setlocal omnifunc=ccomplete#Complete
   autocmd Filetype java setlocal omnifunc=javacomplete#Complete
   autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
endif
" in MacVim, when type '.' show the omni complete list
autocmd Filetype java,javascript,jsp inoremap <buffer>  .  .<C-X><C-O><C-P><down>

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

" don't open nerdtree_tabs when gvim/macvim open; otherwise, 1
let g:nerdtree_tabs_open_on_gui_startup = 1
" NERDTreeTabsToggle bind to <F2>
map <F2> <Esc>:NERDTreeTabsToggle<CR>
" NERDTreeToggle bind to <F2>
"map <F2> :NERDTreeToggle<CR>
"map <leader>n :NERDTreeTabsToggle<CR>

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" ctags

"------Make sure use <F5> before change to source root dir!!-----
" use <F5>(means:new tags) to generate a file 'tags', which originally 
" should be generate by command `ctags -R` at (src/project) root dir
map <F5> :call Do_NewTags()<CR>
set tags=~/.vim/bundle/ctags/tags;
" use a new tab to trace tag
" nmap <C-]> viwy:tab tag <C-R>"<CR>

function! Do_NewTags()
   " delete the current tags in the dir 
   if filereadable("~/.vim/bundle/ctags/tags")
      let tagsdeleted=delete("~/.vim/bundle/ctags/"."tags")
      if(tagsdeleted!=0)
         echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
         return
      endif
   endif

   " generate a new tag files to ~/.vim/ctags/tags
   if(executable('ctags'))
      "silent! execute '!ctags -R --c-types=+p --fields=+S *'
      exec "!ctags -R --c++-kinds=+lpx --java-kinds=+l --fields=+iaS --extra=+q -f $HOME/.vim/bundle/ctags/tags `pwd`"
   endif
endfunction


" taglist
let Tlist_Use_Horiz_Window=0
let Tlist_Use_Right_Window=1    " window is show at right-side
let Tlist_Show_One_File=1       " only show current file's tags
let Tlist_File_Fold_Auto_Close=1 "files' tags are folded except current one
let Tlist_Sort_Type="name"      " tags will be sorted by name; default is by occurence
let Tlist_Exit_OnlyWindow=1     " exit vim when taglist is the last window
map <F3> : call Do_Tlist_Toggle()<CR>
function! Do_Tlist_Toggle() 
   TlistToggle
   TlistUpdate
endfunction
