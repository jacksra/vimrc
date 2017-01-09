" Vim color file
" Maintainer:	Vince Silvestri
" Last Change:	2003 Jul 09

" This is very similar color scheme to the Eclipse IDE.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "eclipse"  

hi Normal    guifg=Black guibg=grey100
hi Cursor    guibg=Red guifg=White
hi Visual    gui=reverse guifg=DarkBlue guibg=White
hi Comment   guifg=#3f7f5f 
hi type	     guifg=#7f0055 gui=bold
hi Constant	 guifg=blue
hi Statement guifg=#7f0055 gui=bold
hi PreProc   guifg=#7f0055 gui=bold

" vim: sw=2
