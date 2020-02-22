" install vim-plug plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic'
Plug 'vim-scripts/BufClose.vim'
Plug 'nvie/vim-flake8'

call plug#end()

filetype on
syntax on 

colorscheme evening++

set colorcolumn=80
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
set wildmode=longest,list,full
set wildmenu
set expandtab
set showcmd
set formatoptions=ro
set makeprg=make
set scrolloff=10
set number

:command Bc BufClose

" open the quickfix window
map <F12> :copen<CR>
" close the quickfix window
map <C-F12> :cclose<CR>
" exit diff mode
map <F9> :set noscrollbind nodiff<CR>
" go to current quickfix line
map <S-g> :cc<CR>
" go to previous quickfix line
map <S-d> :cp<CR>
" go to next quickfix line
map <S-f> :cn<CR>
" pretty-format JSON in current buffer
map <C-j> :%!python -m json.tool<CR>
" recursive grep for symbol under cursor (exact match)
map <c-g> <Esc>:grep! -r --include=*.py --include=*.h --include=*.c --include=*.cpp --include=*.sh --include=*.pg_dump --include=*.txt --include=*.json --exclude-dir=site-packages --exclude-dir=build '\<<c-r><c-w>\>' .
" recursive grep for symbol under cursor
map <c-h> <Esc>:grep! -r --include=*.py --include=*.h --include=*.c --include=*.cpp --include=*.sh --include=*.pg_dump --include=*.txt --include=*.json --exclude-dir=site-packages --exclude-dir=build '<c-r><c-w>' .

" syntastic options
let g:syntastic_python_checkers=['flake8']
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

