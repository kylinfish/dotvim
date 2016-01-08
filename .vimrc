" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo 'Installing Vundle ...'
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/Vundle.vim
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

colorscheme molokai " theme style

set backspace=2                       " allow backspacing over everything in insert nc >kkmode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set wrap
set linebreak
set nolist
set hidden
set linespace=0
set nofoldenable
set number
set numberwidth=4
set title
set showmatch                         " show match () {} []
set showmode
set nobomb                            " no BOM(Byte Order Mark)
set nostartofline
set laststatus=2
set clipboard+=unnamed
set showtabline=2                     " always show tab
set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc
set wildmenu                          " make tab completion for files/buffers act like bash
set noswapfile
set ignorecase                        " ignore case when searching
set smartcase
set smarttab                          " insert tabs on the start of a line according to
set expandtab                         " replace <TAB> with spaces
set softtabstop=2
set shiftwidth=4
set tabstop=4
set background=dark
set list
set listchars=tab:>-,trail:-
set hlsearch                          " search highlighting
set incsearch                         " incremental search
set t_Co=256
set nocompatible              " be iMproved, required
set laststatus=2

syntax on                             " syntax highlight
syntax enable

" file encoding
set encoding=utf-8
set fenc=utf-8 enc=utf-8 tenc=utf-8

" Set cursorline colors
highlight CursorLine ctermbg=235
" Set color of number column on cursorline
highlight CursorLineNR ctermbg=235 ctermfg=white

"---------------  general setting --------------------------
"back to last edit position
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" unchange cllipboard
xnoremap p pgvy

"-----------------------------------------------------------
filetype plugin indent on     " required
filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins

"------------------ Plugin List -----------------------------
" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'c9s/colorselector.vim'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-surround'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-ragtag'
Plugin 'easymotion/vim-easymotion'
Plugin 'sumpygump/php-documentor-vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'joshliao11/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'vim-scripts/OOP-javascript-indentation'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'StanAngeloff/php.vim'

"------------------ Plugin setting -----------------------------

"tag list (show class list)
nmap <F8> :TagbarToggle<CR>

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'bubblegum'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '｜'
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#branch#enabled = 1

let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline_theme='simple'
" let g:airline_theme='term'
" let g:airline_theme='light'

"php-doc-vim
au BufRead,BufNewFile *.php inoremap <buffer> <C-X> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php nnoremap <buffer> <C-X> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php vnoremap <buffer> <C-x> :call PhpDocRange()<CR>

"indentLine
let g:indentLine_color_term = 84
" let g:indentLine_char = '¦'
let g:indentLine_char = '|'

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_clear_cache_on_exit = 0


let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0


"" toggle syntax mode"""
autocmd VimEnter * SyntasticToggleMode " disable syntastic by default
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_loc_list=1
let g:syntastic_php_checkers=['php', 'phpmd']
let g:syntastic_css_checkers=[]
let g:syntastic_javascript_checkers=['jshint']


"replace the current word in all opened buffers
fun! Replace()

    let s:word = input("Replace " . expand('<cword>') . " with:")

    :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/ge'
    :unlet! s:word

endfun

"vim-indent-guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 3
hi IndentGuidesOdd  ctermbg=19
hi IndentGuidesEven ctermbg=17



"easy motion
let g:EasyMotion_leader_key = 't'


"stanAngleoff/php.vim
let php_parent_error_close = 1
let php_parent_error_open  = 1
let php_folding = 2

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END



"Auto assigned file to filetype
autocmd BufNewFile,BufRead *.phtml set filetype=php
autocmd BufNewFile,BufRead *.html set filetype=html
autocmd BufNewFile,BufRead *.htm set filetype=html


"Shougo/neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"let g:neocomplcache_enable_auto_select = 1
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplcache_force_omni_patterns')
    let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
