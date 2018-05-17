hi clear

set background=dark

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="webberwu"


" support for 256-color terminal

if &t_Co > 255
    hi Boolean         ctermfg=135
    hi Character       ctermfg=144
    hi Number          ctermfg=135
    hi String          ctermfg=144
    hi Conditional     ctermfg=162                   cterm=bold
    hi Constant        ctermfg=135                   cterm=bold
    hi Cursor          ctermfg=16     ctermbg=253
    hi Debug           ctermfg=225                   cterm=bold
    hi Define          ctermfg=81
    hi Delimiter       ctermfg=241

    hi DiffAdd                        ctermbg=24
    hi DiffChange      ctermfg=181    ctermbg=239
    hi DiffDelete      ctermfg=162    ctermbg=53
    hi DiffText                       ctermbg=102    cterm=bold

    hi Directory       ctermfg=118                   cterm=bold
    hi Error           ctermfg=219    ctermbg=89
    hi ErrorMsg        ctermfg=199    ctermbg=16     cterm=bold
    hi Exception       ctermfg=118                   cterm=bold
    hi Float           ctermfg=135
    hi FoldColumn      ctermfg=67     ctermbg=16
    hi Folded          ctermfg=67     ctermbg=16
    hi Function        ctermfg=208
    hi Identifier      ctermfg=208
    hi Ignore          ctermfg=244    ctermbg=232
    hi IncSearch       ctermbg=81     ctermfg=16     cterm=none
    hi Search          ctermbg=162    ctermfg=16     cterm=none

    hi Keyword         ctermfg=162                   cterm=bold
    hi Label           ctermfg=229                   cterm=none
    hi Macro           ctermfg=193
    hi SpecialKey      ctermfg=81

    hi MatchParen      ctermfg=16     ctermbg=162    cterm=bold
    hi ModeMsg         ctermfg=118
    hi MoreMsg         ctermfg=118
    hi Operator        ctermfg=162

    " complete menu
    hi Pmenu           ctermfg=162    ctermbg=234
    hi PmenuSel        ctermfg=16     ctermbg=162
    hi PmenuSbar                      ctermbg=232
    hi PmenuThumb      ctermfg=162

    hi PreCondit       ctermfg=118                   cterm=bold
    hi PreProc         ctermfg=118
    hi Question        ctermfg=81
    hi Repeat          ctermfg=162                   cterm=bold

    " marks column
    hi SignColumn      ctermfg=118    ctermbg=235
    hi SpecialChar     ctermfg=162                   cterm=bold
    hi SpecialComment  ctermfg=245                   cterm=bold
    hi Special         ctermfg=81     ctermbg=232
    hi SpecialKey      ctermfg=245

    hi Statement       ctermfg=162                   cterm=bold
    hi StatusLine      ctermbg=162    ctermfg=219    cterm=bold
    hi StatusLineNC    ctermbg=235    ctermfg=243    cterm=none
    hi StorageClass    ctermfg=208
    hi Structure       ctermfg=81
    hi Tag             ctermfg=162
    hi Title           ctermfg=162
    hi Todo            ctermfg=231    ctermbg=232    cterm=bold

    hi Typedef         ctermfg=81
    hi Type            ctermfg=81                    cterm=none
    hi Underlined      ctermfg=244                   cterm=underline

    hi VertSplit       ctermfg=244    ctermbg=232    cterm=bold
    hi VisualNOS                      ctermbg=238
    hi Visual                         ctermbg=238
    hi WarningMsg      ctermfg=231    ctermbg=238    cterm=bold
    hi WildMenu        ctermfg=81     ctermbg=16

    hi Normal          ctermfg=252
    hi Comment         ctermfg=243
    hi CursorLine                     ctermbg=234    cterm=none
    hi CursorLineNR    ctermfg=162    ctermbg=234    ctermfg=yellow
    hi CursorColumn                   ctermbg=234
    hi LineNr          ctermbg=232    ctermfg=238    cterm=none
    hi NonText         ctermfg=250    ctermbg=233

    hi TabLine         ctermbg=235    ctermfg=243    cterm=none
    hi TabLineFill     ctermbg=233    ctermfg=243    cterm=none
    hi TabLineSel      ctermbg=162    ctermfg=225    cterm=none
end
