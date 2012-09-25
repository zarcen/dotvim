" If no screen, use color term
if ($TERM == "vt100")
  " xterm-color / screen
  set t_Co=8
  set t_AF=^[[1;3%p1%dm
  set t_AB=^[[4%p1%dm
endif

if filereadable($VIMRUNTIME . "/vimrc_example.vim")
 so $VIMRUNTIME/vimrc_example.vim
endif

if filereadable($VIMRUNTIME . "/macros/matchit.vim")
 so $VIMRUNTIME/macros/matchit.vim
endif

syntax on

set nu	" show the line number; use [set nonu] to close
set nocompatible
set wildmenu
set backupdir=~/tmp,.,/var/tmp/vi.recover,/tmp
set directory=~/tmp,/var/tmp/vi.recover,/tmp,.
set backup              " keep a backup file
" set textwidth=78
set bs=2                " allow backspacing over everything in insert mode
set ai                  " always set autoindenting on
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
set showmatch
set tabstop=4	" the tab space size=4
set shiftwidth=4	" the autoindenting space size=4
"set background=dark    " another is 'light'

" VIM 6.0,
if version >= 600
    set nohlsearch
    " set foldcolumn=2
    " set foldmethod=syntax
    set foldmethod=marker
    set foldlevel=1
"    set foldtext=/^/=>
    " set encoding=utf-8
    " set fileencoding=big5
    " set termencoding=big5
    set encoding=utf-8
    " set fileencodings=latin,big5,ucs-bom,utf-8,sjis,big5
    set fileencodings=ucs-bom,utf-8,sjis,big5,latin1
else
    set fileencoding=taiwan
endif

" Tab key binding
if version >= 700
  map  <C-c> :tabnew<CR>
  imap <C-c> <ESC>:tabnew<CR>
  map  <C-k> :tabclose<CR>
  map  <C-p> :tabprev<CR>
  imap <C-p> <ESC>:tabprev<CR>
  map  <C-n> :tabnext<CR>
  "imap <C-n> <ESC>:tabnext<CR>
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
  map gc :tabnew<CR>
  map gn :tabn<CR>
  map gp :tabp<CR>

  highlight TabLineSel term=bold,underline cterm=bold,underline ctermfg=7 ctermbg=0
  highlight TabLine    term=bold cterm=bold
  highlight clear TabLineFill


end

" Crontabs must be edited in place
au BufRead /tmp/crontab* :set backupcopy=yes

" My setting

imap jj <ESC>	
" use jj into command-mode

imap {<CR> {<CR><END><CR>}<UP><END>
" { } completement


" Java auto complete
"  url -- http://www.vim.org/scripts/script.php?script_id=1785
if has("autocmd")
   autocmd Filetype java setlocal omnifunc=javacomplete#Complete
endif 
" end of Java auto complete
