colorscheme winyu " theme style
" colorscheme Tomorrow-Night-Bright " theme style

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
set nocompatible                      " be iMproved, required
set laststatus=2

set splitright                        " new window is put right of the current one
set splitbelow                        " new window from split is below the current one

set mouse=nv                          " only use mouse in normal, visual mode

syntax on                             " syntax highlight
syntax enable

" file encoding
set encoding=utf-8
" set fenc=utf-8 enc=utf-8 tenc=utf-8

" Set cursorline colors
highlight CursorLine ctermbg=235
" Set color of number column on cursorline
highlight CursorLineNR ctermbg=235 ctermfg=green

"---------------  general setting --------------------------
"back to last edit position
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" unchange cllipboard
xnoremap p pgvy

"-----------------------------------------------------------
filetype plugin indent on             " required
filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"-----------------------------------------------------------
"let Vundle manage Vundle, required
"
Plugin 'gmarik/vundle'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'c9s/colorselector.vim'
Plugin 'tpope/vim-surround'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-ragtag'
Plugin 'easymotion/vim-easymotion'
Plugin 'sumpygump/php-documentor-vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/OOP-javascript-indentation'
Plugin 'pangloss/vim-javascript'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tomtom/tlib_vim'
Plugin 'mattn/emmet-vim'
Plugin 'garbas/vim-snipmate'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'Valloric/MatchTagAlways'
Plugin 'alvan/vim-closetag'
Plugin 'vim-scripts/hexHighlight.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'IN3D/vim-raml'
Plugin 'junegunn/vim-easy-align'
Plugin 'plasticboy/vim-markdown'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'trevordmiller/nova-vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

"" js
Plugin 'othree/html5.vim'
Plugin 'othree/yajs.vim'
Plugin 'gavocanov/vim-js-indent'


"
""""""""""" Plugin Setting """""""""""""

"tag list (show class list)
nmap <F1> :TagbarToggle<CR>

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#branch#enabled = 1

let g:airline_theme='badwolf'

"php-doc-vim
au BufRead,BufNewFile *.php inoremap <buffer> <C-X> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php nnoremap <buffer> <C-X> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php vnoremap <buffer> <C-x> :call PhpDocRange()<CR>

"replace the current word in all opened buffers
fun! Replace()

    let s:word = input("Replace " . expand('<cword>') . " with:")

    :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/ge'
    :unlet! s:word

endfun

"nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-o> :NERDTreeToggle<CR>

"vim-indent-guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 3
hi IndentGuidesOdd  ctermbg=19
hi IndentGuidesEven ctermbg=17

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

" easymotion
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)

"---  更改快捷键
map q <Plug>(easymotion-prefix)
map qf <Plug>(easymotion-lineforward)
map qs <Plug>(easymotion-f)
map qj <Plug>(easymotion-j)
map qk <Plug>(easymotion-k)
map qh <Plug>(easymotion-linebackward)
" 忽略大小写
let g:EasyMotion_smartcase = 1

""""""""""" mapping HotKey """""""""""""
map <C-A> ggVG      " select all
map <C-E> V%zfzz    " fold section
map <C-T> yyp       " copy current line and paste

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" sava file
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>

" map <D-t> :tabnew<CR>
" map <D-w> :tabclose<CR>


" set foldcolumn=2
hi foldcolumn  ctermbg=235 ctermfg=white


" matchAtag alswas
let g:mta_use_matchparen_group = 1
let g:mta_set_default_matchtag_color = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'phtml' : 1,
    \ 'xml' : 1,
    \ 'php' : 1,
    \ 'jinja' : 1,
    \}
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen

"" " Align GitHub-flavored Markdown tables
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>


" tagbar
" autocmd VimEnter * nested :TagbarOpen
" autocmd FileType * nested :call tagbar#autoopen(0)


" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline\ Nerd\ Font\ Complete\ 16
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
" let g:webdevicons_enable_ctrlp = 1


"" fzf
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Type'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Identifier'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'down': '5%'})
nnoremap <silent> <C-p> :Files<CR>
