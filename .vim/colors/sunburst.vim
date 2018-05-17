" Vim color file
" Colorscheme:  sunburst: a port of TextMate's sunburst for vim
" Maintainer:   Phil Tang <tangphillip@gmail.com>
" Last Change:  2011 Jan 31, v1.4.2
" License:      GPL <http://www.gnu.org/licenses/gpl.html>
" Release Note: v1.4.3: Removed the background color for non-text areas & special characters
"               v1.4.2: Added support for tabs, credited Stanley Rost with designing Sunburst
"               v1.4.1: Slightly adjusted vimdiff colors
"               v1.4:   Combined the colorschemes into a single sunburst.vim
"               v1.3:   Fixed menu and parentheses' coloring;
"                       Added spellcheck and diff support;
"                       Changed 16 color version into 8 colors
"               v1.2:   Fixed preprocessor colors, added PHP support
"               v1.1:   Added support for GUI-based editors
"               v1.0:   Initial release
" Testers:      Ricky Mondello and David Whitney
" Credits:      Stanley Rost <soryu2@gmail.com> - original designer of Sunburst for TextMate
"               Jani Nurminen <slinky@iki.fi>   - provied a template for these notes with his 'Zenburn' theme. 

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "sunburst"

let t_Co = system("tput colors")

if has("gui_running") || t_Co >= 256
    hi Normal                       ctermfg=255  ctermbg=0                     guifg=#f8f8f8 guibg=#000000
    hi Cursor                                    ctermbg=248                                 guibg=#a7a7a7
    hi Visual                                    ctermbg=240                                 guibg=#2c3033
    hi CursorLine                                ctermbg=233                                 guibg=#0d0d0d
    hi LineNr                       ctermfg=245  ctermbg=0                     guifg=#7c7c7c guibg=#000000
    hi VertSplit                    ctermfg=246  ctermbg=233  cterm=none       guifg=#949494 guibg=#121212 gui=none
    hi MatchParen                   ctermfg=179  ctermbg=none cterm=none       guifg=#e28964 guibg=#000000 gui=none
    hi StatusLine                   ctermfg=255  ctermbg=236  cterm=none       guifg=#f8f8f8 guibg=#2f2f2f gui=none
    hi StatusLineNC                 ctermfg=240  ctermbg=233  cterm=none       guifg=#585858 guibg=#121212 gui=none
    hi Pmenu                        ctermfg=255  ctermbg=233  cterm=none       guifg=#f8f8f8 guibg=#121212 gui=none
    hi PmenuSel                     ctermfg=0    ctermbg=111  cterm=bold       guifg=#000000 guibg=#89bdff gui=bold
    hi PmenuSbar                                 ctermbg=238                                 guibg=#444444
    hi PmenuThumb                   ctermfg=25                                 guifg=#3387cc
    hi WildMenu                     ctermfg=0    ctermbg=111  cterm=none       guifg=#000000 guibg=#89bdff gui=none
    hi IncSearch                                 ctermbg=240                   guifg=#f8f8f8 guibg=#585858
    hi Search                                    ctermbg=240                   guifg=#f8f8f8 guibg=#585858
    hi Directory                    ctermfg=25                                 guifg=#3387cc
    hi Folded                       ctermfg=245  ctermbg=0                     guifg=#aeaeae guibg=#000000
    hi SignColumn                   ctermfg=245  ctermbg=0                     guifg=#aeaeae guibg=#000000
    hi WarningMsg                   ctermfg=209  ctermbg=0    cterm=none       guifg=#e28964 guibg=#000000 gui=none
    hi ErrorMsg                     ctermfg=209  ctermbg=0    cterm=none       guifg=#e28964 guibg=#000000 gui=none
    hi ModeMsg                                                cterm=none                                   gui=none

    hi TabLine                      ctermfg=240  ctermbg=235  cterm=none
    hi TabLineFill                  ctermfg=235  ctermbg=235
    hi TabLineSel                   ctermfg=255  ctermbg=237  cterm=none

    hi SpellBad                     ctermfg=0    ctermbg=209  cterm=none       guifg=#000000 guibg=#e28964 gui=none
    hi SpellCap                     ctermfg=0    ctermbg=113  cterm=none       guifg=#000000 guibg=#87d75f gui=none
    hi SpellLocal                   ctermfg=0    ctermbg=111  cterm=none       guifg=#000000 guibg=#89bdff gui=none
    hi SpellRare                    ctermfg=70   ctermbg=none cterm=none       guifg=#65b042 guibg=#000000 gui=none

    hi Boolean                      ctermfg=25                                 guifg=#3387cc
    hi Character                    ctermfg=70                                 guifg=#65b042
    hi Comment                      ctermfg=245                                guifg=#aeaeae               gui=italic
    hi Conditional                  ctermfg=209                                guifg=#e28964
    hi Constant                     ctermfg=25                                 guifg=#3387cc
    hi Define                       ctermfg=209                                guifg=#e28964
    hi Debug                        ctermfg=186                                guifg=#dad085
    hi Delimiter                    ctermfg=none ctermbg=none                  guifg=#f8f8f8 guibg=#000000
    hi DiffAdd                      ctermfg=none ctermbg=22                    guifg=#f8f8f8 guibg=#253b22
    hi DiffChange                   ctermfg=none ctermbg=58                    guifg=#f8f8f8 guibg=#4a410d
    hi DiffDelete                   ctermfg=none ctermbg=52                    guifg=#f8f8f8 guibg=#420e09
    hi DiffText                     ctermfg=0    ctermbg=209                   guifg=#000000 guibg=#e28964
    hi Error                        ctermfg=0    ctermbg=209                   guifg=#000000 guibg=#e28964
    hi Float                        ctermfg=25                                 guifg=#3387cc
    hi Function                     ctermfg=111                                guifg=#89bdff
    hi Identifier                   ctermfg=25                cterm=none       guifg=#3387cc               gui=none
    hi Keyword                      ctermfg=209                                guifg=#e28964
    hi Label                        ctermfg=209                                guifg=#65b042
    hi NonText                      ctermfg=238                                guifg=#2e343a              
    hi Number                       ctermfg=25                                 guifg=#3387cc
    hi Operator                     ctermfg=209                                guifg=#e28964
    hi PreProc                      ctermfg=209                                guifg=#e28964
    hi Special                      ctermfg=193                                guifg=#ddf2a4
    hi SpecialKey                   ctermfg=236                                guifg=#2e343a              
    hi Statement                    ctermfg=209               cterm=none       guifg=#e28964               gui=none
    hi StorageClass                 ctermfg=113                                guifg=#87d75f
    hi String                       ctermfg=70                                 guifg=#65b042
    hi Tag                          ctermfg=111                                guifg=#89bdff
    hi Title                        ctermfg=255               cterm=bold       guifg=#f8f8f8               gui=bold
    hi Todo                         ctermfg=245  ctermbg=none cterm=bold       guifg=#aeaeae guibg=#000000 gui=bold,italic
    hi Type                         ctermfg=113               cterm=none       guifg=#87d75f               gui=none
    hi Underlined                                             cterm=underline                              gui=underline

    hi cCustomFuncCall              ctermfg=186                                guifg=#dad085
    hi cDefinedKeyword              ctermfg=111                                guifg=#89bdff
    hi cInclude                     ctermfg=152                                guifg=#afc4db
    hi phpDefine                    ctermfg=113                                guifg=#87d75f
    hi phpVarSelector               ctermfg=25                                 guifg=#3387cc
    hi rubyClass                    ctermfg=209                                guifg=#e28964
    hi rubyFunction                 ctermfg=111                                guifg=#89bdff
    hi rubySymbol                   ctermfg=25                                 guifg=#3387cc
    hi rubyConstant                 ctermfg=245                                guifg=#aeaeae
    hi rubyStringDelimiter          ctermfg=70                                 guifg=#65b042
    hi rubyBlockParameter           ctermfg=69                                 guifg=#3e87e3
    hi rubyInstanceVariable         ctermfg=69                                 guifg=#3e87e3
    hi rubyInclude                  ctermfg=209                                guifg=#e28964
    hi rubyGlobalVariable           ctermfg=69                                 guifg=#3e87e3
    hi rubyRegexp                   ctermfg=215                                guifg=#e9c062
    hi rubyRegexpDelimiter          ctermfg=215                                guifg=#e9c062
    hi rubyEscape                   ctermfg=25                                 guifg=#3387cc
    hi rubyControl                  ctermfg=209                                guifg=#e28964
    hi rubyClassVariable            ctermfg=69                                 guifg=#3e87e3
    hi rubyOperator                 ctermfg=209                                guifg=#e28964
    hi rubyException                ctermfg=209                                guifg=#e28964
    hi rubyPseudoVariable           ctermfg=69                                 guifg=#3e87e3
    hi erubyComment                 ctermfg=245  ctermbg=none                  guifg=#aeaeae guibg=#000000 gui=italic
    hi htmlTag                      ctermfg=111                                guifg=#89bdff
    hi htmlEndTag                   ctermfg=111                                guifg=#89bdff
    hi htmlTagName                  ctermfg=111                                guifg=#89bdff
    hi htmlArg                      ctermfg=111                                guifg=#89bdff
    hi htmlSpecialChar              ctermfg=25                                 guifg=#3387cc
    hi javaScriptFunction           ctermfg=113                                guifg=#87d75f
    hi javaScriptFuncName           ctermfg=186                                guifg=#dad085
    hi javaScriptBraces             ctermfg=255                                guifg=#f8f8f8
    hi javaScriptNull               ctermfg=25                                 guifg=#3387cc
    hi javaScriptValue              ctermfg=25                                 guifg=#3387cc
    hi javaScriptGlobal             ctermfg=96                                 guifg=#9b859d
    hi javaScriptMember             ctermfg=96                                 guifg=#9b859d
    hi javaScriptType               ctermfg=96                                 guifg=#9b859d
    hi javaScriptNavigator          ctermfg=96                                 guifg=#9b859d
    hi yamlKey                      ctermfg=111                                guifg=#89bdff
    hi yamlAnchor                   ctermfg=69                                 guifg=#3e87e3
    hi yamlAlias                    ctermfg=69                                 guifg=#3e87e3
    hi yamlDocumentHeader           ctermfg=70                                 guifg=#65b042
    hi cssTagName                   ctermfg=143                                guifg=#cda869
    hi cssPseudoClassId             ctermfg=101                                guifg=#8f9d6a
    hi cssIdentifier                ctermfg=103                                guifg=#8b98ab
    hi cssClassName                 ctermfg=94                                 guifg=#9b703f
    hi cssColorProp                 ctermfg=143                                guifg=#c5af75
    hi cssTextProp                  ctermfg=143                                guifg=#c5af75
    hi cssBoxProp                   ctermfg=143                                guifg=#c5af75
    hi cssRenderProp                ctermfg=143                                guifg=#c5af75
    hi cssAuralProp                 ctermfg=143                                guifg=#c5af75
    hi cssRenderProp                ctermfg=143                                guifg=#c5af75
    hi cssGeneratedContentProp      ctermfg=143                                guifg=#c5af75
    hi cssPagingProp                ctermfg=143                                guifg=#c5af75
    hi cssTableProp                 ctermfg=143                                guifg=#c5af75
    hi cssUIProp                    ctermfg=143                                guifg=#c5af75
    hi cssFontDescriptorProp        ctermfg=143                                guifg=#c5af75
    hi cssCommonAttr                ctermfg=228                                guifg=#f9ee98
    hi cssFontAttr                  ctermfg=228                                guifg=#f9ee98
    hi cssColorAttr                 ctermfg=228                                guifg=#f9ee98
    hi cssTextAttr                  ctermfg=228                                guifg=#f9ee98
    hi cssBoxAttr                   ctermfg=228                                guifg=#f9ee98
    hi cssRenderAttr                ctermfg=228                                guifg=#f9ee98
    hi cssAuralAttr                 ctermfg=228                                guifg=#f9ee98
    hi cssGeneratedContentAttr      ctermfg=228                                guifg=#f9ee98
    hi cssPagingAttr                ctermfg=228                                guifg=#f9ee98
    hi cssTableAttr                 ctermfg=228                                guifg=#f9ee98
    hi cssUIAttr                    ctermfg=228                                guifg=#f9ee98
    hi cssCommonAttr                ctermfg=228                                guifg=#f9ee98
    hi cssFontDescriptorAttr        ctermfg=228                                guifg=#f9ee98
    hi cssTagName                   ctermfg=180                                guifg=#cda869
    hi cssIdentifier                ctermfg=180                                guifg=#cda869
    hi cssMedia                     ctermfg=180                                guifg=#cda869
    hi cssFontDescriptor            ctermfg=180                                guifg=#cda869
    hi cssInclude                   ctermfg=180                                guifg=#cda869
    hi cssFunctionName              ctermfg=186                                guifg=#dad085
    hi cssColor                     ctermfg=172                                guifg=#dd7b3b
    hi cssValueLength               ctermfg=172                                guifg=#dd7b3b
    hi cssValueInteger              ctermfg=172                                guifg=#dd7b3b
    hi cssValueNumber               ctermfg=172                                guifg=#dd7b3b
    hi cssValueAngle                ctermfg=172                                guifg=#dd7b3b
    hi cssValueTime                 ctermfg=172                                guifg=#dd7b3b
    hi cssValueFrequency            ctermfg=172                                guifg=#dd7b3b
    hi cssBraces                    ctermfg=255                                guifg=#f8f8f8

    hi rubyRailsUserClass           ctermfg=245                                guifg=#aeaeae
    hi rubyRailsARAssociationMethod ctermfg=186                                guifg=#dad085
    hi rubyRailsARMethod            ctermfg=186                                guifg=#dad085
    hi rubyRailsRenderMethod        ctermfg=186                                guifg=#dad085
    hi rubyRailsMethod              ctermfg=186                                guifg=#dad085
    hi erubyRailsMethod             ctermfg=186                                guifg=#dad085
    hi javaScriptRailsFunction      ctermfg=186                                guifg=#dad085

elseif t_Co >= 16 && t_Co < 256
    hi Normal                       ctermfg=white       ctermbg=black       cterm=none
    hi Cursor                       ctermfg=none        ctermbg=lightgray   cterm=none
    hi Visual                       ctermfg=none        ctermbg=lightgray   cterm=none
    hi CursorLine                   ctermfg=none        ctermbg=lightgray   cterm=none
    hi LineNr                       ctermfg=lightgray   ctermbg=black       cterm=none
    hi VertSplit                    ctermfg=lightgray   ctermbg=darkgray    cterm=none
    hi MatchParen                   ctermfg=yellow      ctermbg=none        cterm=none
    hi StatusLine                   ctermfg=black       ctermbg=lightgray   cterm=bold
    hi StatusLineNC                 ctermfg=black       ctermbg=lightgray   cterm=none
    hi Pmenu                        ctermfg=black       ctermbg=gray        cterm=none
    hi PmenuSel                     ctermfg=black       ctermbg=darkcyan    cterm=bold
    hi PmenuSbar                                        ctermbg=gray        cterm=none
    hi PmenuThumb                   ctermfg=blue                            cterm=none
    hi WildMenu                     ctermfg=black       ctermbg=darkcyan    cterm=none
    hi IncSearch                    ctermfg=black       ctermbg=gray        cterm=none
    hi Search                       ctermfg=black       ctermbg=gray        cterm=none
    hi Directory                    ctermfg=blue                            cterm=none
    hi Folded                       ctermfg=lightgray   ctermbg=black       cterm=none
    hi SignColumn                   ctermfg=lightgray   ctermbg=black       cterm=none
    hi WarningMsg                   ctermfg=red         ctermbg=black       cterm=none
    hi ErrorMsg                     ctermfg=red         ctermbg=black       cterm=none
    hi ModeMsg                                                              cterm=none
                                                                            
    hi Boolean                      ctermfg=blue                            cterm=none
    hi Character                    ctermfg=darkgreen                       cterm=none
    hi Comment                      ctermfg=gray                            cterm=none
    hi Conditional                  ctermfg=lightred                        cterm=none
    hi Constant                     ctermfg=blue                            cterm=none
    hi Define                       ctermfg=lightred                        cterm=none
    hi Debug                        ctermfg=darkyellow                      cterm=none
    hi Delimiter                    ctermfg=white       ctermbg=none        cterm=none
    hi DiffAdd                      ctermfg=none        ctermbg=darkgreen   cterm=none
    hi DiffChange                   ctermfg=none        ctermbg=darkyellow  cterm=none
    hi DiffDelete                   ctermfg=none        ctermbg=darkred     cterm=none
    hi DiffText                     ctermfg=black                           cterm=none
    hi Error                        ctermfg=black       ctermbg=darkred     cterm=none
    hi Float                        ctermfg=blue                            cterm=none
    hi Function                     ctermfg=cyan                            cterm=none
    hi Identifier                   ctermfg=blue                            cterm=none
    hi Keyword                      ctermfg=lightred                        cterm=none
    hi Label                        ctermfg=lightred                        cterm=none
    hi NonText                      ctermfg=gray                            cterm=none
    hi Number                       ctermfg=blue                            cterm=none
    hi Operator                     ctermfg=lightred                        cterm=none
    hi PreProc                      ctermfg=lightred                        cterm=none
    hi Special                      ctermfg=yellow                          cterm=none
    hi SpecialKey                   ctermfg=gray                            cterm=none
    hi SpellBad                     ctermfg=black       ctermbg=darkred     cterm=none
    hi SpellCap                     ctermfg=black       ctermbg=darkcyan    cterm=none
    hi SpellLocal                   ctermfg=black       ctermbg=darkgreen   cterm=none
    hi SpellRare                    ctermfg=blue        ctermbg=none        cterm=none
    hi Statement                    ctermfg=lightred                        cterm=none
    hi StorageClass                 ctermfg=lightgreen                      cterm=none
    hi String                       ctermfg=darkgreen                       cterm=none
    hi Tag                          ctermfg=cyan                            cterm=none
    hi Title                        ctermfg=white      ctermbg=none         cterm=bold
    hi Todo                         ctermfg=white      ctermbg=none         cterm=inverse,bold
    hi Type                         ctermfg=lightgreen                      cterm=none
    hi Underlined                   ctermfg=none       ctermbg=none         cterm=underline

    hi cCustomFuncCall              ctermfg=darkyellow                      cterm=none
    hi cDefinedKeyword              ctermfg=cyan                            cterm=none
    hi cInclude                     ctermfg=lightgray                       cterm=none
    hi phpDefine                    ctermfg=lightgreen                      cterm=none
    hi phpVarSelector               ctermfg=blue                            cterm=none
    hi rubyClass                    ctermfg=lightred                        cterm=none
    hi rubyFunction                 ctermfg=cyan                            cterm=none
    hi rubySymbol                   ctermfg=blue                            cterm=none
    hi rubyConstant                 ctermfg=lightgray                       cterm=none
    hi rubyStringDelimiter          ctermfg=darkgreen                       cterm=none
    hi rubyBlockParameter           ctermfg=cyan                            cterm=none
    hi rubyInstanceVariable         ctermfg=blue                            cterm=none
    hi rubyInclude                  ctermfg=lightred                        cterm=none
    hi rubyGlobalVariable           ctermfg=cyan                            cterm=none
    hi rubyRegexp                   ctermfg=yellow                          cterm=none
    hi rubyRegexpDelimiter          ctermfg=yellow                          cterm=none
    hi rubyEscape                   ctermfg=blue                            cterm=none
    hi rubyControl                  ctermfg=lightred                        cterm=none
    hi rubyClassVariable            ctermfg=cyan                            cterm=none
    hi rubyOperator                 ctermfg=lightred                        cterm=none
    hi rubyException                ctermfg=lightred                        cterm=none
    hi rubyPseudoVariable           ctermfg=cyan                            cterm=none
    hi htmlTag                      ctermfg=cyan                            cterm=none
    hi htmlEndTag                   ctermfg=cyan                            cterm=none
    hi htmlTagName                  ctermfg=cyan                            cterm=none
    hi htmlArg                      ctermfg=cyan                            cterm=none
    hi htmlSpecialChar              ctermfg=blue                            cterm=none
    hi javaScriptFunction           ctermfg=lightgreen                      cterm=none
    hi javaScriptFuncName           ctermfg=darkyellow                      cterm=none
    hi javaScriptBraces             ctermfg=gray                            cterm=none
    hi javaScriptNull               ctermfg=blue                            cterm=none
    hi javaScriptValue              ctermfg=blue                            cterm=none
    hi javaScriptGlobal             ctermfg=blue                            cterm=none
    hi javaScriptMember             ctermfg=blue                            cterm=none
    hi javaScriptType               ctermfg=blue                            cterm=none
    hi javaScriptNavigator          ctermfg=blue                            cterm=none
    hi yamlKey                      ctermfg=cyan                            cterm=none
    hi yamlAnchor                   ctermfg=cyan                            cterm=none
    hi yamlAlias                    ctermfg=cyan                            cterm=none
    hi yamlDocumentHeader           ctermfg=darkgreen                       cterm=none
    hi cssURL                       ctermfg=cyan                            cterm=none
    hi cssFunctionName              ctermfg=darkyellow                      cterm=none
    hi cssColor                     ctermfg=magenta                         cterm=none
    hi cssPseudoClassId             ctermfg=cyan                            cterm=none
    hi cssClassName                 ctermfg=cyan                            cterm=none
    hi cssValueLength               ctermfg=magenta                         cterm=none
    hi cssCommonAttr                ctermfg=lightred                        cterm=none
    hi cssBraces                    ctermfg=white                           cterm=none

    hi rubyRailsUserClass           ctermfg=lightgray                       cterm=none
    hi rubyRailsARAssociationMethod ctermfg=darkyellow                      cterm=none
    hi rubyRailsARMethod            ctermfg=darkyellow                      cterm=none
    hi rubyRailsRenderMethod        ctermfg=darkyellow                      cterm=none
    hi rubyRailsMethod              ctermfg=darkyellow                      cterm=none
    hi erubyRailsMethod             ctermfg=darkyellow                      cterm=none
    hi javaScriptRailsFunction      ctermfg=darkyellow                      cterm=none
else
    hi Normal                       ctermfg=lightgray   ctermbg=black       cterm=none
    hi Cursor                       ctermfg=none        ctermbg=lightgray   cterm=none
    hi Visual                       ctermfg=none        ctermbg=lightgray   cterm=none
    hi CursorLine                   ctermfg=none        ctermbg=lightgray   cterm=none
    hi LineNr                       ctermfg=lightgray   ctermbg=black       cterm=none
    hi VertSplit                    ctermfg=lightgray   ctermbg=black       cterm=none
    hi MatchParen                   ctermfg=darkyellow  ctermbg=none        cterm=none
    hi StatusLine                   ctermfg=black       ctermbg=lightgray   cterm=bold
    hi StatusLineNC                 ctermfg=black       ctermbg=lightgray   cterm=none
    hi Pmenu                        ctermfg=black       ctermbg=gray        cterm=none
    hi PmenuSel                     ctermfg=black       ctermbg=darkcyan    cterm=bold
    hi PmenuSbar                                        ctermbg=gray        cterm=none
    hi PmenuThumb                   ctermfg=darkblue                        cterm=none
    hi WildMenu                     ctermfg=black       ctermbg=darkcyan    cterm=none
    hi IncSearch                    ctermfg=black       ctermbg=gray        cterm=none
    hi Search                       ctermfg=black       ctermbg=gray        cterm=none
    hi Directory                    ctermfg=darkblue                        cterm=none
    hi Folded                       ctermfg=lightgray   ctermbg=black       cterm=none
    hi SignColumn                   ctermfg=lightgray   ctermbg=black       cterm=none
    hi WarningMsg                   ctermfg=red         ctermbg=black       cterm=none
    hi ErrorMsg                     ctermfg=red         ctermbg=black       cterm=none
    hi ModeMsg                                                              cterm=none
                                                                            
    hi Boolean                      ctermfg=darkblue                        cterm=none
    hi Character                    ctermfg=darkgreen                       cterm=none
    hi Comment                      ctermfg=gray                            cterm=none
    hi Conditional                  ctermfg=darkred                         cterm=none
    hi Constant                     ctermfg=darkblue                        cterm=none
    hi Define                       ctermfg=darkred                         cterm=none
    hi Debug                        ctermfg=darkyellow                      cterm=none
    hi Delimiter                    ctermfg=lightgray   ctermbg=none        cterm=none
    hi DiffAdd                      ctermfg=none        ctermbg=darkgreen   cterm=none
    hi DiffChange                   ctermfg=none        ctermbg=darkyellow  cterm=none
    hi DiffDelete                   ctermfg=none        ctermbg=darkred     cterm=none
    hi DiffText                     ctermfg=black                           cterm=none
    hi Error                        ctermfg=black       ctermbg=darkred     cterm=none
    hi Float                        ctermfg=darkblue                        cterm=none
    hi Function                     ctermfg=darkcyan                        cterm=none
    hi Identifier                   ctermfg=darkblue                        cterm=none
    hi Keyword                      ctermfg=darkred                         cterm=none
    hi Label                        ctermfg=darkred                         cterm=none
    hi NonText                      ctermfg=gray                            cterm=none
    hi Number                       ctermfg=darkblue                        cterm=none
    hi Operator                     ctermfg=darkred                         cterm=none
    hi PreProc                      ctermfg=darkred                         cterm=none
    hi Special                      ctermfg=darkyellow                      cterm=none
    hi SpecialKey                   ctermfg=gray                            cterm=none
    hi SpellBad                     ctermfg=black       ctermbg=darkred     cterm=none
    hi SpellCap                     ctermfg=black       ctermbg=darkcyan    cterm=none
    hi SpellLocal                   ctermfg=black       ctermbg=darkgreen   cterm=none
    hi SpellRare                    ctermfg=darkblue    ctermbg=none        cterm=none
    hi Statement                    ctermfg=darkred                         cterm=none
    hi StorageClass                 ctermfg=darkgreen                       cterm=none
    hi String                       ctermfg=darkgreen                       cterm=none
    hi Tag                          ctermfg=darkcyan                        cterm=none
    hi Title                        ctermfg=lightgray  ctermbg=none         cterm=bold
    hi Todo                         ctermfg=lightgray  ctermbg=none         cterm=inverse,bold
    hi Type                         ctermfg=darkgreen                       cterm=none
    hi Underlined                   ctermfg=none       ctermbg=none         cterm=underline

    hi cCustomFuncCall              ctermfg=darkyellow                      cterm=none
    hi cDefinedKeyword              ctermfg=darkcyan                        cterm=none
    hi cInclude                     ctermfg=lightgray                       cterm=none
    hi phpDefine                    ctermfg=darkgreen                       cterm=none
    hi phpVarSelector               ctermfg=darkblue                        cterm=none
    hi rubyClass                    ctermfg=darkred                         cterm=none
    hi rubyFunction                 ctermfg=darkcyan                        cterm=none
    hi rubySymbol                   ctermfg=darkblue                        cterm=none
    hi rubyConstant                 ctermfg=lightgray                       cterm=none
    hi rubyStringDelimiter          ctermfg=darkgreen                       cterm=none
    hi rubyBlockParameter           ctermfg=darkcyan                        cterm=none
    hi rubyInstanceVariable         ctermfg=darkblue                        cterm=none
    hi rubyInclude                  ctermfg=darkred                         cterm=none
    hi rubyGlobalVariable           ctermfg=darkcyan                        cterm=none
    hi rubyRegexp                   ctermfg=darkyellow                      cterm=none
    hi rubyRegexpDelimiter          ctermfg=darkyellow                      cterm=none
    hi rubyEscape                   ctermfg=darkblue                        cterm=none
    hi rubyControl                  ctermfg=darkred                         cterm=none
    hi rubyClassVariable            ctermfg=darkcyan                        cterm=none
    hi rubyOperator                 ctermfg=darkred                         cterm=none
    hi rubyException                ctermfg=darkred                         cterm=none
    hi rubyPseudoVariable           ctermfg=darkcyan                        cterm=none
    hi htmlTag                      ctermfg=darkcyan                        cterm=none
    hi htmlEndTag                   ctermfg=darkcyan                        cterm=none
    hi htmlTagName                  ctermfg=darkcyan                        cterm=none
    hi htmlArg                      ctermfg=darkcyan                        cterm=none
    hi htmlSpecialChar              ctermfg=darkblue                        cterm=none
    hi javaScriptFunction           ctermfg=darkgreen                       cterm=none
    hi javaScriptFuncName           ctermfg=darkyellow                      cterm=none
    hi javaScriptBraces             ctermfg=gray                            cterm=none
    hi javaScriptNull               ctermfg=darkblue                        cterm=none
    hi javaScriptValue              ctermfg=darkblue                        cterm=none
    hi javaScriptGlobal             ctermfg=darkblue                        cterm=none
    hi javaScriptMember             ctermfg=darkblue                        cterm=none
    hi javaScriptType               ctermfg=darkblue                        cterm=none
    hi javaScriptNavigator          ctermfg=darkblue                        cterm=none
    hi yamlKey                      ctermfg=darkcyan                        cterm=none
    hi yamlAnchor                   ctermfg=darkcyan                        cterm=none
    hi yamlAlias                    ctermfg=darkcyan                        cterm=none
    hi yamlDocumentHeader           ctermfg=darkgreen                       cterm=none
    hi cssURL                       ctermfg=darkcyan                        cterm=none
    hi cssFunctionName              ctermfg=darkyellow                      cterm=none
    hi cssColor                     ctermfg=darkmagenta                     cterm=none
    hi cssPseudoClassId             ctermfg=darkcyan                        cterm=none
    hi cssClassName                 ctermfg=darkcyan                        cterm=none
    hi cssValueLength               ctermfg=darkmagenta                     cterm=none
    hi cssCommonAttr                ctermfg=darkred                         cterm=none
    hi cssBraces                    ctermfg=lightgray                       cterm=none

    hi rubyRailsUserClass           ctermfg=lightgray                       cterm=none
    hi rubyRailsARAssociationMethod ctermfg=darkyellow                      cterm=none
    hi rubyRailsARMethod            ctermfg=darkyellow                      cterm=none
    hi rubyRailsRenderMethod        ctermfg=darkyellow                      cterm=none
    hi rubyRailsMethod              ctermfg=darkyellow                      cterm=none
    hi erubyRailsMethod             ctermfg=darkyellow                      cterm=none
    hi javaScriptRailsFunction      ctermfg=darkyellow                      cterm=none
endif

