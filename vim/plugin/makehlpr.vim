" Vim global plugin for managing make directories and helping with make cycles
" Last Change 26 July, 2002
" Maintainer: Christopher Lambacher <lambacck@ieee.org>
" Maintainer: Vincent Silvestri

if exists("loaded_makehlpr")
    finish
endif
let loaded_makehlpr = 1

let s:save_cpo = &cpo
set cpo&vim

let s:directory = ""

if !exists(":Gmd")
    command -nargs=0 Gmd echomsg s:directory
endif

if !exists(":Make")
    command -bang -nargs=? -complete=dir Make :call s:DoMake(<q-args>, "<bang>")
endif

function! s:DoMake(dirname, bangon)
    if(a:dirname == "")
        if(s:directory == "")
            let l:makedir = ""
        else
            let l:makedir = " -C " . s:directory
        endif
    else
        let l:makedir = " -C " . fnamemodify(a:dirname, ":p:h:gs?\\?/?")
    endif
    exe(":make" . a:bangon . l:makedir)
        
endfunction


if !exists(":Smd")
    command -nargs=? -complete=dir Smd :call s:SetMakeDir(<q-args>)
endif

function! s:SetMakeDir(dirname)
    if(a:dirname == "")
        let s:directory = expand("%")
    else
        let s:directory = a:dirname
    endif
    let s:directory = fnamemodify(s:directory, ":p:h:gs?\\?/?")
    echomsg "'" . s:directory . "'"
endfunction 

let &cpo = s:save_cpo
