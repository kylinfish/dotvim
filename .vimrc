colorscheme PaperColor

set backspace=2                       " allow backspacing over everything in insert nc >kkmode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set nowrap
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
set clipboard+=unnamed
set showtabline=2                     " always show tab
set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc
set wildmenu                          " make tab completion for files/buffers act like bash
set noswapfile
set ignorecase                        " ignore case when searching
set smartcase
set smarttab                          " insert tabs on the start of a line according to
set expandtab                         " replace <TAB> with spaces
set softtabstop=4
set shiftwidth=4
set tabstop=4
set background=dark
set list
set listchars=tab:>-,trail:-
" End Python

" JAVA
au BufNewFile,BufRead *.java set noexpandtab
au BufNewFile,BufRead *.java set nolist
let g:indent_guides_enable_on_vim_startup = 1
let java_mark_braces_in_parens_as_errors=1
let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"
let java_minlines = 150
" END JAVA

" Vue
au BufNewFile,BufRead *.html,*.js,*.vue set tabstop=4
au BufNewFile,BufRead *.html,*.js,*.vue set softtabstop=4
au BufNewFile,BufRead *.html,*.js,*.vue set shiftwidth=4
au BufNewFile,BufRead *.html,*.js,*.vue set autoindent
au BufNewFile,BufRead *.html,*.js,*.vue set fileformat=unix
" End Vue

set hlsearch                          " search highlighting
set incsearch                         " incremental search
set background=dark
set termguicolors
set nocompatible                      " be iMproved, required
set laststatus=2
set colorcolumn=125                   " set width hint line
set autoindent
"set scrolloff=999                     " like always zz
set splitright                        " new window is put right of the current one
set splitbelow                        " new window from split is below the current one
set ttyfast                           " send more chars while redrawing
set lazyredraw                        " speedup vim
set timeoutlen=1000
set ttimeoutlen=0
set noswapfile
set mouse=nv                          " only use mouse in normal, visual mode
set encoding=utf-8
set showcmd

syntax on                             " syntax highlight
syntax enable

filetype indent plugin on

" 強制指定 filetype
autocmd BufNewFile,BufRead *.phtml set filetype=php
autocmd BufNewFile,BufRead *.html set filetype=html
autocmd BufNewFile,BufRead *.htm set filetype=html
autocmd BufNewFile,BufRead *.template set filetype=json

" unchange cllipboard
xnoremap p pgvy

" 開檔回到上次編輯位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"  _  __            __  __                   _
" | |/ /           |  \/  |                 (_)
" | ' / ___ _   _  | \  / | __ _ _ __  _ __  _ _ __   __ _
" |  < / _ \ | | | | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` |
" | . \  __/ |_| | | |  | | (_| | |_) | |_) | | | | | (_| |
" |_|\_\___|\__, | |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |
"            __/ |              | |   | |             __/ |
"           |___/               |_|   |_|            |___/


let mapleader=" "                    " 改變 leader

" 視窗折疊
nmap <C-E> V%zfzz

" 複製單行
nmap <C-T> yyp

" 視窗切換
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" 分頁切換
nnoremap<Tab> :tabn<CR>
nnoremap<S-Tab> :tabp<CR>
nnoremap<S-X> :tabclose<CR>

" 水平移動
nnoremap <leader>l 30zl
nnoremap <leader>h 30zh
nnoremap <leader>sv :source $MYVIMRC<CR>

" 縮放視窗
nnoremap <silent><leader>= :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent><leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" 呼叫 Pydoc
nnoremap <buffer> T :<C-u>execute "!pydoc " . expand("<cword>")<CR>

"   _____          _                    ______                _
"  / ____|        | |                  |  ____|              | |
" | |    _   _ ___| |_ ___  _ __ ___   | |__ _   _ _ __   ___| |_
" | |   | | | / __| __/ _ \| '_ ` _ \  |  __| | | | '_ \ / __| __|
" | |___| |_| \__ \ || (_) | | | | | | | |  | |_| | | | | (__| |_
"  \_____\__,_|___/\__\___/|_| |_| |_| |_|   \__,_|_| |_|\___|\__|
"                      custom function


" 移除當前所有空白
function! RemoveTrailingSpace()
  %s/\s\+$//e
endfunction
nnoremap <leader><leader>rt :call RemoveTrailingSpace()<CR>

" 快速編譯
autocmd FileType java map<Leader>c :!javac "%:p" && java -cp "%:p:h" "%:t:r" <CR>
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" 快速編譯
map <F4> : call CompileRun()<CR>
func! CompileRun()
    exec "w"
    if &filetype =='python'
        exec "!time python2.7 %"
    endif
endfunc

" 顯示當前 Theme Highlighting
nnoremap <leader><leader>x :call SyntaxItem()<CR>
function! SyntaxItem()
    echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
                \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
                \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"
endfunction

"  _____  _             _          _____      _   _   _
" |  __ \| |           (_)        / ____|    | | | | (_)
" | |__) | |_   _  __ _ _ _ __   | (___   ___| |_| |_ _ _ __   __ _
" |  ___/| | | | |/ _` | | '_ \   \___ \ / _ \ __| __| | '_ \ / _` |
" | |    | | |_| | (_| | | | | |  ____) |  __/ |_| |_| | | | | (_| |
" |_|    |_|\__,_|\__, |_|_| |_| |_____/ \___|\__|\__|_|_| |_|\__, |
"                  __/ |                                       __/ |
"                 |___/                                       |___/


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'c9s/colorselector.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'matze/vim-move'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-fugitive'
Plug 'tmhedberg/matchit'
Plug 'easymotion/vim-easymotion'
Plug 'sumpygump/php-documentor-vim'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'terryma/vim-multiple-cursors'
Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'garbas/vim-snipmate'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'Valloric/MatchTagAlways'
Plug 'alvan/vim-closetag'
Plug 'vim-scripts/hexHighlight.vim'
Plug 'vim-scripts/javacomplete'
Plug 'plasticboy/vim-markdown'
Plug 'ryanoasis/vim-devicons'
Plug 'trevordmiller/nova-vim'
" Plug 'vim-syntastic/syntastic'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'othree/html5.vim'
Plug 'othree/yajs.vim'
Plug 'gavocanov/vim-js-indent'
Plug 'hzchirs/vim-material'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'w0rp/ale'
Plug 'nicwest/vim-camelsnek'

" Python
" Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'heavenshell/vim-pydocstring'
Plug 'maralla/completor.vim'
Plug 'tell-k/vim-autopep8'
Plug 'vim-scripts/indentpython.vim'
" Plug 'vim-python/python-syntax'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'tmhedberg/SimpylFold'

call plug#end()



" ===============  Tagbar  ===============
nmap <F5> :TagbarToggle<CR>
autocmd VimEnter * nested :TagbarOpen
autocmd FileType * nested :call tagbar#autoopen(0)


" ===============  Airline  ===============
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

" ===============  php-doc-vim  ===============
au BufRead,BufNewFile *.php inoremap <buffer> <C-X> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php nnoremap <buffer> <C-X> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php vnoremap <buffer> <C-x> :call PhpDocRange()<CR>


" ===============  nerdtree  ===============
nnoremap <C-o> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" ============== vim-indent-guides  =============
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=blue  ctermbg=240


" let g:indentLine_color_term = 239
" let g:indentLine_bgcolor_term = 241
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_conceallevel = 2
"

" ============== neocomplcache  ===============
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

" ============== easymotion  ===============
nnoremap <Leader><Leader>j <Plug>(easymotion-j)
nnoremap <Leader><Leader>k <Plug>(easymotion-k)

map q  <Plug>(easymotion-prefix)
map qf <Plug>(easymotion-lineforward)
map qs <Plug>(easymotion-f)
map qj <Plug>(easymotion-j)
map qk <Plug>(easymotion-k)
map qh <Plug>(easymotion-linebackward)
let g:EasyMotion_smartcase = 1

" ============== matchAtag  ===============
let g:mta_use_matchparen_group = 1
let g:mta_set_default_matchtag_color = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'phtml' : 1,
    \ 'xml' : 1,
    \ 'php' : 1,
    \}
" hi MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen



" ============== webdevicons  ===============
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline\ Nerd\ Font\ Complete\ 16
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
" let g:webdevicons_enable_ctrlp = 1


" ============== fzf  ===============
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

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'down': '5%'})
nnoremap <silent> <C-p> :Files<CR>

" =========== pydocstring =============
nmap <silent> <C-X> <Plug>(pydocstring)

" ========== autopep8 =============
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
let g:autopep8_max_line_length=125
let g:autopep8_diff_type='vertical'

" ===== python-mode ==============
let g:pymode_options_max_line_length = 125
let g:pymode_lint_on_write = 0
let g:pymode_lint_unmodified = 1


" ========= General ==============
"  Highlight python docstrings as comments
syn region Comment start=/"""/ end=/"""/


" ========== ALE =================
let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 0
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let b:ale_linters = ['flake8', 'pylint']
let b:ale_fixers = ['autopep8']
let g:ale_list_window_size = 5
let g:ale_python_flake8_change_directory = 1
let g:ale_python_flake8_options = "-m flake8 --max-line-length=125"
let g:ale_python_flake8_executable = "python"   " or 'python3' 
let python_highlight_all=1

" Ignore dirty Java 
let g:ale_pattern_options = {
\ '.java$': {'ale_linters': [], 'ale_fixers': []},
\}
let g:ale_pattern_options_enabled = 1

highlight ALEWarning ctermbg=DarkMagenta

