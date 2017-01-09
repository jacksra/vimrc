" Vim color file
" Maintainer:	Vince Silvestri
" Last Change:	2003 Jul 10

" This color scheme uses a dark grey background.

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "twilight"

hi Normal ctermbg=DarkGrey ctermfg=White guifg=#e0e0e0 guibg=grey17

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
hi IncSearch term=reverse cterm=reverse gui=reverse
hi ModeMsg term=bold cterm=bold gui=bold
hi StatusLine term=reverse,bold cterm=reverse,bold guifg=Black guibg=LightGrey gui=bold
hi StatusLineNC term=reverse cterm=reverse guifg=Black guibg=Grey25 guifg=Grey55 gui=none
hi VertSplit term=reverse cterm=reverse gui=reverse guifg=Grey40
hi Visual term=reverse cterm=reverse gui=reverse guifg=grey40 guibg=fg
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
hi Cursor guibg=Red guifg=White
hi lCursor guibg=Cyan guifg=Black
hi Directory term=bold ctermfg=LightCyan guifg=Cyan
hi LineNr term=underline ctermfg=Yellow guifg=Yellow
hi MoreMsg term=bold ctermfg=LightGreen gui=bold guifg=SeaGreen
hi NonText term=bold ctermfg=LightBlue gui=bold guifg=LightBlue guibg=grey30
hi Question term=standout ctermfg=LightGreen gui=bold guifg=Green
hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=#f0f060 guifg=Black gui=bold
hi SpecialKey term=bold ctermfg=LightBlue guifg=Cyan
hi Title term=bold ctermfg=LightMagenta gui=bold guifg=Magenta
hi WarningMsg term=standout ctermfg=LightRed guifg=Red
hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey25 guifg=LightGrey
hi FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi DiffAdd term=bold ctermbg=DarkBlue guibg=DarkBlue
hi DiffChange term=bold ctermbg=DarkMagenta guibg=DarkMagenta
hi DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=Blue guibg=DarkCyan

" Groups for syntax highlighting
hi Constant term=underline ctermfg=LightRed guifg=#ffc0c0 
hi Special term=bold ctermfg=Red guifg=#ffc040 
hi Ignore ctermfg=DarkGrey guifg=grey20
hi Comment ctermfg=DarkGrey   guifg=Grey55
hi PreProc ctermfg=lightblue guifg=#99ccf0 cterm=none
hi Statement term=bold cterm=bold ctermfg=Yellow guifg=#e0e080 gui=bold
"hi type	ctermfg=green guifg=#99ccff gui=bold cterm=none
hi type	ctermfg=lightgreen guifg=LightGreen gui=bold cterm=none

" vim: sw=2
