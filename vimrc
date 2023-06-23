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
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/vcscommand.vim'
" Plug 'tmhedberg/SimpylFold'
" Plug 'Konfekt/FastFold'
Plug 'davidhalter/jedi-vim'
Plug 'hynek/vim-python-pep8-indent'
Plug 'tell-k/vim-autopep8'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

filetype on
syntax on 

if has('gui_running')
    colorscheme evening
endif

set colorcolumn=80
set gfn=Bitstream\ Vera\ Sans\ Mono\ 12
set updatetime=2000
set nocompatible
set nowrap
set history=50
set hlsearch
set ruler
set backspace=indent,eol,start
set hid
set incsearch
set guioptions-=T
set wildmode=longest,list,full
set wildmenu
set showcmd
set formatoptions=ro
set makeprg=make
set scrolloff=10
set number
" options related to indent
set expandtab
set cindent
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
" Always show the status line at the bottom, even if you only have one window
" open.
set laststatus=2
" By default, vim's python.vim indents 2 * shiftwidth() when adding a new line
" after the opening of parenthesis. I don't know why it does that, but I hate
" it. Indent by shiftwidth() instead.
let g:pyindent_open_paren = shiftwidth()

:command Bc BufClose

" open the quickfix window
map <F12> :copen<CR>
" close the quickfix window
map <C-F12> :cclose<CR>
" exit diff mode
map <F9> :set noscrollbind nodiff<CR>
" go to previous quickfix line
map <S-d> :cp<CR>
" go to next quickfix line
map <S-f> :cn<CR>
" pretty-format JSON in current buffer
map <C-j> :%!python -m json.tool<CR>
" recursive grep for symbol under cursor (exact match)
map <c-g> <Esc>:grep! -r --include=*.py --include=*.h --include=*.c --include=*.cpp --include=*.sh --include=*.pg_dump --include=*.txt --include=*.json --include=*.x --include=*.sql --exclude-dir=site-packages --exclude-dir=build --exclude=pylint.txt --exclude-dir=.mypy_cache '\<<c-r><c-w>\>' .
" recursive grep for symbol under cursor
map <c-h> <Esc>:grep! -r --include=*.py --include=*.h --include=*.c --include=*.cpp --include=*.sh --include=*.pg_dump --include=*.txt --include=*.json --include=*.x --include=*.sql --exclude-dir=site-packages --exclude-dir=build --exclude=pylint.txt --exclude-dir=.mypy_cache '<c-r><c-w>' .
" Ack for symbol under cursor (exact match)
" map <c-a> <Esc>:Ack! --ignore-dir=site-packages --ignore-dir=build -w '<c-r><c-w>'
" Show/hide NERD Tree
map <C-n> :NERDTreeToggle<CR>

" syntastic options
let g:syntastic_python_checkers=['flake8', 'mypy']
let g:syntastic_python_flake8_exec='./venv/bin/python'
let g:syntastic_python_flake8_args=['-m', 'flake8']
" mypy only exists for python3
let g:syntastic_python_mypy_exec='./venv/bin/python'
let g:syntastic_python_mypy_args=['-m', 'mypy']
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" requires deb: shellcheck
let g:syntastic_sh_shellcheckers=['shellcheck']
let g:syntastic_sh_shellcheck_args=['-x', '-e', 'SC1091']

" autopep8 options
let g:autopep8_hang_closing=1
let g:autopep8_aggressive=2
let g:autopep8_disable_show_diff=1
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

" splitjoin
let g:splitjoin_python_brackets_on_separate_lines = 1
let g:splitjoin_trailing_comma = 1

" SimpylFold options
" let g:SimpylFold_fold_import = 0
" let g:SimpylFold_fold_docstring = 0
