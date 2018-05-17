" winyu vim color theme
"
" Copyright 2016, All rights reserved

" modify from dracula@vim


set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
  endif

  let g:colors_name = "dracula"

  hi Cursor           ctermfg=17   ctermbg=231  cterm=NONE
  hi Visual           ctermfg=NONE ctermbg=236  cterm=NONE
  hi CursorLine       ctermbg=234  cterm=NONE
  hi CursorColumn     ctermfg=NONE ctermbg=236  cterm=NONE
  hi ColorColumn      ctermfg=NONE ctermbg=236  cterm=NONE
  hi LineNr           ctermfg=60   ctermbg=NONE cterm=NONE
  hi VertSplit        ctermfg=235  ctermbg=NONE cterm=NONE
  hi MatchParen       ctermfg=212  ctermbg=NONE cterm=underline
  hi StatusLine       ctermfg=231  ctermbg=236  cterm=bold
  hi StatusLineNC     ctermfg=231  ctermbg=236  cterm=NONE
  hi Pmenu            ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PmenuSel         ctermfg=NONE ctermbg=236  cterm=NONE
  hi IncSearch        ctermfg=17   ctermbg=228  cterm=NONE
  hi Search           ctermbg=228  ctermfg=16   cterm=none
  hi Directory        ctermfg=141  ctermbg=NONE cterm=NONE
  hi Folded           ctermfg=61   ctermbg=235  cterm=NONE
  hi SignColumn       ctermfg=246  ctermbg=235  cterm=NONE
  hi FoldColmun       ctermfg=246  ctermbg=235  cterm=NONE

  hi Boolean          ctermfg=141  ctermbg=NONE cterm=NONE
  hi Character        ctermfg=141  ctermbg=NONE cterm=NONE
  hi Comment          ctermfg=61   ctermbg=NONE cterm=NONE
  hi Conditional      ctermfg=212  ctermbg=NONE cterm=NONE
  hi Constant         ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Define           ctermfg=212  ctermbg=NONE cterm=NONE
  hi DiffAdd          ctermfg=231  ctermbg=64   cterm=bold
  hi DiffDelete       ctermfg=88   ctermbg=NONE cterm=NONE
  hi DiffChange       ctermfg=231  ctermbg=23   cterm=NONE
  hi DiffText         ctermfg=231  ctermbg=24   cterm=bold
  hi ErrorMsg         ctermfg=231  ctermbg=212  cterm=NONE
  hi WarningMsg       ctermfg=231  ctermbg=212  cterm=NONE
  hi Float            ctermfg=141  ctermbg=NONE cterm=NONE
  hi Function         ctermfg=84   ctermbg=NONE cterm=NONE
  hi Identifier       ctermfg=117  ctermbg=NONE cterm=NONE
  hi Keyword          ctermfg=212  ctermbg=NONE cterm=NONE
  hi Label            ctermfg=228  ctermbg=NONE cterm=NONE

  hi Number           ctermfg=141  ctermbg=NONE cterm=NONE
  hi Operator         ctermfg=212  ctermbg=NONE cterm=NONE
  hi PreProc          ctermfg=212  ctermbg=NONE cterm=NONE
  hi Special          ctermfg=231  ctermbg=NONE cterm=NONE
  hi SpecialKey       ctermfg=59   ctermbg=236  cterm=NONE
  hi Statement        ctermfg=86   ctermbg=NONE cterm=NONE
  hi StorageClass     ctermfg=117  ctermbg=NONE cterm=NONE
  hi String           ctermfg=9  ctermbg=NONE cterm=NONE
  hi Tag              ctermfg=212  ctermbg=NONE cterm=NONE
  hi Title            ctermfg=231  ctermbg=NONE cterm=bold
  hi Todo             ctermfg=61   ctermbg=NONE cterm=inverse,bold
  hi Type             ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Underlined       ctermfg=NONE ctermbg=NONE cterm=underline

  hi htmlTag          ctermfg=NONE ctermbg=NONE cterm=NONE
  hi htmlEndTag       ctermfg=NONE ctermbg=NONE cterm=NONE
  hi htmlTagName      ctermfg=NONE ctermbg=NONE cterm=NONE
  hi htmlArg          ctermfg=NONE ctermbg=NONE cterm=NONE
  hi htmlSpecialChar  ctermfg=141  ctermbg=NONE cterm=NONE

  hi yamlKey             ctermfg=212  ctermbg=NONE cterm=NONE
  hi yamlAnchor          ctermfg=NONE ctermbg=NONE cterm=NONE
  hi yamlAlias           ctermfg=NONE ctermbg=NONE cterm=NONE
  hi yamlDocumentHeader  ctermfg=228  ctermbg=NONE cterm=NONE

  hi cssURL            ctermfg=215  ctermbg=NONE cterm=NONE
  hi cssFunctionName   ctermfg=117  ctermbg=NONE cterm=NONE
  hi cssColor          ctermfg=141  ctermbg=NONE cterm=NONE
  hi cssPseudoClassId  ctermfg=84   ctermbg=NONE cterm=NONE
  hi cssClassName      ctermfg=84   ctermbg=NONE cterm=NONE
  hi cssValueLength    ctermfg=141  ctermbg=NONE cterm=NONE
  hi cssCommonAttr     ctermfg=81   ctermbg=NONE cterm=NONE
  hi cssBraces         ctermfg=NONE ctermbg=NONE cterm=NONE

  hi javaScriptFunction       ctermfg=117  ctermbg=NONE cterm=NONE
  hi javaScriptRailsFunction  ctermfg=117  ctermbg=NONE cterm=NONE
  hi javaScriptBraces         ctermfg=NONE ctermbg=NONE cterm=NONE


  " hi phpVarSelector   ctermfg=117
  " hi phpKeyword       ctermfg=117
  " hi phpRepeat        ctermfg=117
  " hi phpConditional  ctermfg=117
  " hi phpStatement     ctermfg=117
  " hi phpMemberSelector  ctermfg=117

  "-------------------
  "
  "cygwin has an annoying behavior where it resets background to light
  "regardless of what is set above, so we force it yet again
  "
  "add these to get cygwin shell working when used to ssh into a centos6 vm
  "this requires your TERM=xterm-256color in the guest vm
  "- one way to do this is to append to /home/vagrant/.bash_profile ala:
  "      TERM=xterm-256color
  "      export $TERM

  execute "set background=dark"
  "-------------------

