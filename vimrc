
syntax on 

"colorscheme eclipse  
"colorscheme twilight
"colorscheme wombat
"colorscheme zenburn
"colorscheme darkblue+
"colorscheme candy

"colorscheme codeschool

"colorscheme desert
colorscheme evening++

"set guifont=-*-*-bold-*-normal-*-13-100-*-*-*-*-*-1
"set guifont=-*-*-medium-*-normal-*-14-*-*-100-*-70-*-*
"set guifont=-b&h-lucidatypewriter-medium-*-*-*-12-*-*-*-*-*-*-*
"set guifont=7x13,font\\,with\\,commas
set gfn=Bitstream\ Vera\ Sans\ Mono\ 9

set updatetime=2000

set nocompatible
set nowrap
set et
set history=50
set hlsearch
set ai
set shiftwidth=4
set tabstop=4
set ruler
set backspace=indent,eol,start
set cin
set hid
set incsearch
set guioptions-=T

"set makeprg=gmake\ NOREDIR=1
set wildmode=longest,list,full
set wildmenu

set expandtab

set showcmd

set formatoptions=ro

set makeprg=make

set scrolloff=10

set number

"c style comment a line
"" map <F2> ^i/*<Esc>$a*/<Esc> 

"c style uncomment the line
"" map <F3> ^2x$xx

"open/close the error window
map <F12> :copen<CR>
map <C-F12> :cclose<CR>
map <F11> :A<CR>
map <F10> :cc<CR>
map <S-F10> :cp<CR>
map <C-F10> :cn<CR>
map <F9> :set noscrollbind nodiff<CR>
" map <S-g> :cc<CR>
map <S-d> :cp<CR>
map <S-f> :cn<CR>
map <C-j> :%!python -m json.tool<CR>


" execute make
map <F5> :Make!<CR>

" explore the current directory
" map <F6> :Explore<CR>

" close a buffer
map <F7> :Bc<CR>
map <C-F7> :Bc!<CR> " force buffer close
map <c-g> <Esc>:grep! -r --include=*.py --include=*.h --include=*.c --include=*.cpp --include=*.sh --include=*.pg_dump --include=*.txt --include=*.json --exclude-dir=site-packages --exclude-dir=build '\<<c-r><c-w>\>' .
map <c-h> <Esc>:grep! -r --include=*.py --include=*.h --include=*.c --include=*.cpp --include=*.sh --include=*.pg_dump --include=*.txt --include=*.json --exclude-dir=site-packages --exclude-dir=build '<c-r><c-w>' .
nmap <c-x> :silent 1,$!xmllint --format --recover - 2> /dev/null <CR> <BAR> <Esc>:0 <BAR> <Esc>dd<cr>

let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:pep8_map='<F6>'

command XmlNewline %s/></>\r</g

filetype on

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

nnoremap<silent>  <F5>  :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

au BufNewFile,BufRead *.yang setf yang

" Highlight background for characters beyond column 79
" highlight OverLength ctermbg=red ctermfg=white guibg=#008800
" match OverLength /\%80v.\+/

set colorcolumn=80
