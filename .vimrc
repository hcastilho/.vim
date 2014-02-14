set nocompatible               " be iMproved
filetype off                   " required! 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles
Bundle  'altercation/vim-colors-solarized'
Bundle  'scrooloose/nerdtree'
Bundle  'ervandew/supertab'
Bundle  'kien/ctrlp.vim'
Bundle  'majutsushi/tagbar'
Bundle  'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle  'Lokaltog/vim-easymotion'
Bundle  'plasticboy/vim-markdown'
Bundle 'jszakmeister/markdown2ctags'
" TODO should work now
Bundle  'ivanov/vim-ipython'

" Vim Tmux - Send code to another tmux pane
Bundle  'benmills/vimux'
Bundle  'julienr/vimux-pyutils'
" C-c will paste and execute the currently selected block in ipython
" C-b will execute the current cell in ipython A cell is similar to MATLAB's cell and is defined as the line ranging from the previous ## to the next ##


Bundle  'oblitum/rainbow'
Bundle  'jansenm/vim-cmake'

"interpret a file by function and cache file automatically
Bundle  'MarcWeber/vim-addon-mw-utils'
"Some utility functions for VIM
Bundle  'tomtom/tlib_vim'
Bundle  'rstacruz/sparkup'

" Syntax checking
Bundle  'scrooloose/syntastic'

Bundle  'Townk/vim-autoclose'
Bundle  'tpope/vim-fugitive'
Bundle  'tpope/vim-repeat'
Bundle  'tpope/vim-surround'
Bundle  'tsaleh/vim-matchit'
Bundle  'vim-scripts/django.vim'
Bundle  'vim-scripts/scons.vim'
Bundle  'vim-scripts/c.vim'
Bundle  'vim-scripts/python.vim'
Bundle  'groenewege/vim-less'

" Multiple cursors
Bundle  'terryma/vim-multiple-cursors'
" C-n

"Bundle  'vim-jp/cpp-vim'
Bundle 'Yggdroot/indentLine'
Bundle 'mileszs/ack.vim'

" Bundle    'kshenoy/vim-signature'
" Bundle    'vim-scripts/LanguageTool'
" Bundle    'sjl/gundo.vim'
" Bundle    'vim-scripts/Smartput'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basics
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set encoding=utf-8
    set nocompatible " get out of vi-compatible mode
    set noexrc " don't use local version of .(g)vimrc, .exrc
    ""highlight Normal
    "let g:solarized_termcolors=256
    set background=dark " we plan to use a dark background
    colorscheme solarized

    " Change color after line 80
    let &colorcolumn=join(range(81,999),",")
    highlight ColorColumn ctermbg=235 guibg=#2c2d27



    set cpoptions=aABceFsmq
    "             |||||||||
    "             ||||||||+-- When joining lines, leave the cursor
    "             |||||||      between joined lines
    "             |||||||+-- When a new match is created (showmatch)
    "             ||||||      pause for .5
    "             ||||||+-- Set buffer options when entering the
    "             |||||      buffer
    "             |||||+-- :write command updates current file name
    "             ||||+-- Automatically add <CR> to the last line
    "             |||      when using :@r
    "             |||+-- Searching continues at the end of the match
    "             ||      at the cursor position
    "             ||+-- A backslash has no special meaning in mappings
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    syntax on " syntax highlighting on
    set noswapfile
    set nobackup
    set nowb

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    filetype plugin indent on " load filetype plugins/indent settings
    set autochdir " always switch to the current file directory
    set backspace=indent,eol,start " make backspace a more flexible
    "set backup " make backup files
    "set backupdir=~/.vim/backup " where to put backup files
    set clipboard=unnamed " share windows clipboard
    "set directory=~/.vim/tmp " directory to place swap files in
    set fileformats=unix,dos,mac " support all three, in this order
"    set hidden " you can change buffers without saving
    " (XXX: #VIM/tpope warns the line below could break things)
    set iskeyword+=_,$,@,%,# " none of these are word dividers
    set mouse=a " use mouse everywhere
    set noerrorbells " don't make noise
    set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
    set wildmenu " turn on command line completion wild style
    " ignore these list file extensions
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
    \*.jpg,*.gif,*.png
    set wildmode=list:longest " turn on wild mode huge list

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set ignorecase
    set cursorcolumn " highlight the current column
    set cursorline " highlight current line
    set hlsearch " highlight searched for phrases
    set incsearch " BUT do highlight as you type you
    " search phrase
    set laststatus=2 " always show the status line
    set lazyredraw " do not redraw while running macros
    set linespace=0 " don't insert any extra pixel lines
    " betweens rows
    set list " we do whant to show tabs, to ensure we get them
    " out of my files
    set listchars=tab:>-,trail:- " show tabs and trailing
    set matchtime=5 " how many tenths of a second to blink
    " matching brackets for
    "set nohlsearch " do not highlight searched for phrases
    set nostartofline " leave my cursor where it was
    set novisualbell " don't blink
    set number " turn on line numbers
    set numberwidth=5 " We are good up to 99999 lines
    set report=0 " tell us when anything is changed via :...
    set ruler " Always show current positions along the bottom
    set scrolloff=10 " Keep 10 lines (top/bottom) for scope
    set shortmess=aOstT " shortens messages to avoid
    " 'press a key' prompt
    set showcmd " show the command being typed
    set showmatch " show matching brackets
    set sidescrolloff=10 " Keep 5 lines at the size
    set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
    "              | | | | |  |   |      |  |     |    |
    "              | | | | |  |   |      |  |     |    + current
    "              | | | | |  |   |      |  |     |       column
    "              | | | | |  |   |      |  |     +-- current line
    "              | | | | |  |   |      |  +-- current % into file
    "              | | | | |  |   |      +-- current syntax in
    "              | | | | |  |   |          square brackets
    "              | | | | |  |   +-- current fileformat
    "              | | | | |  +-- number of lines
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- rodified flag in square brackets
    "              +-- full path to file in the buffer

    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set autoindent
"    set completeopt= " don't use a pop up menu for completions
    set expandtab " no real tabs please!
    set formatoptions=rq " Automatically insert comment leader on return,
    " and let gq format comments
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
"    set nowrap " do not wrap line
    set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
    set smartcase " if there are caps, go case-sensitive
    set shiftwidth=4 " auto-indent amount when using cindent,
    " >>, << and stuff like that
    set smartindent 
    set softtabstop=4 " when hitting tab or backspace, how many spaces
    "should a tab be (see expandtab)
    set tabstop=4 " real tabs should be 8, and they will show with
    " set list on
    "
    " HTML (tab width 2 chr, no wrapping)
    autocmd FileType html setl sw=2
    autocmd FileType html setl ts=2
    autocmd FileType html setl sts=2
    autocmd FileType html setl textwidth=0
    " XHTML (tab width 2 chr, no wrapping)
    autocmd FileType xhtml setl sw=2
    autocmd FileType xhtml setl ts=2
    autocmd FileType xhtml setl sts=2
    autocmd FileType xhtml setl textwidth=0
    " CSS (tab width 2 chr, wrap at 79th char)
    autocmd FileType css setl sw=2
    autocmd FileType css setl ts=2
    autocmd FileType css setl sts=2
    " JS (tab width 2 chr, wrap at 79th char)
    autocmd FileType javascript setl sw=2
    autocmd FileType javascript setl ts=2
    autocmd FileType javascript setl sts=2
    " HTML DJANGO (tab width 2 chr, wrap at 79th char)
    autocmd FileType htmldjango setl sw=2
    autocmd FileType htmldjango setl ts=2
    autocmd FileType htmldjango setl sts=2
    " PYTHON (tab width 2 chr, wrap at 79th char)
    "autocmd FileType python setl textwidth=79

    """" Language Specifics """
        " latex
        ""let tlist_tex_settings='latex;b:bibitem;c:command;l:label'
        " just functions and classes please
        "let tlist_aspjscript_settings = 'asp;f:function;c:class' 
        " just functions and subs please
        "let tlist_aspvbs_settings = 'asp;f:function;s:sub' 
        " don't show variables in freaking php
        "let tlist_php_settings = 'php;c:class;d:constant;f:function' 
        " just functions and classes please
        ""let tlist_vb_settings = 'asp;f:function;c:class'
        "" pvss ctl language
        ""let tlist_ctl_settings='ctl;f:functions'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set foldmethod=syntax
    set foldenable
    set foldlevel=100
    "let g:vimsyn_folding='af'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings/Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" scrooloose/nerdtree -- Directory tree "
"""""""""""""""""""""""""""""""""""""""""
nnoremap <F1> :NERDTreeToggle<CR>


" ervandew/supertab -- Completion "
"""""""""""""""""""""""""""""""""""
" <Tab> open, up
" <S-Tab> down
" <C-n/p> Up/Down


" kien/ctrlp.vim "
""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <F2> :CtrlPBuffer<CR>
" <C-p> - search
" Press <c-f> and <c-b> to cycle between modes.
" Press <c-d> to switch to filename only search instead of full path.
" Press <c-r> to switch to regexp mode.
" Use <c-j>, <c-k> or the arrow keys to navigate the result list.
" Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new
" split.
" Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
" Use <c-y> to create a new file and its parent directories.
" Use <c-z> to mark/unmark multiple files and <c-o> to open them.


" majutsushi/tagbar "
"""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
" Add support for markdown files in tagbar.
let g:tagbar_type_mkd = {
    \ 'ctagstype': 'mkd',
    \ 'ctagsbin' : '~/.vim/bundle/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }


" garbas/vim-snipmate honza/vim-snippets "
""""""""""""""""""""""""""""""""""""""""""


" Lokaltog/vim-easymotion "
"""""""""""""""""""""""""""
" <Leader><Leader>motion


" kian/rainbow_parentheses.vim "
""""""""""""""""""""""""""""""""
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces



" rstacruz/sparkup "
""""""""""""""""""""


" scrooloose/syntastic "
""""""""""""""""""""""""
nmap <F7> :SyntasticCheck<CR>
let g:syntastic_mode_map = { 'mode': 'passive',
                            \ 'active_filetypes': [],
                            \ 'passive_filetypes': [] }


" kszakmeister/vim-markdown "
"""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled=1
" ]]: go to next header.
" [[: go to previous header. Contrast with ]c.
" ][: go to next sibling header if any.
" []: go to previous sibling header if any.
" ]c: go to Current header.
" ]u: go to parent header (Up).


" julienr/vimux-pyutils "
"""""""""""""""""""""""""
" C-c will paste and execute the currently selected block in ipython
" C-b will execute the current cell in ipython A cell is similar to MATLAB's cell and is defined as the line ranging from the previous ## to the next ##


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <F3> :!ctags -R<cr>
map <F4> :w!<CR>:!aspell check %<CR>:e! %<CR> " Spellcheck
"map <buffer> <F5> :w<CR>:!/usr/bin/env python % <CR> " Run in python
"map <F5> :IPython<CR>
set pastetoggle=<F6> " Paste Mode
nmap <F9> :RainbowParenthesesToggle<CR>

" Toggle display of toolbars in gvim
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

" pressing \<space> clears the search highlights
nmap <silent> <leader><space> :nohlsearch<CR>
" break line at cursor
nmap <silent> <leader><CR> i<CR><ESC>

" Add line before/after
nmap <silent> <leader>o o<ESC>
nmap <silent> <leader>O O<ESC>

" Copy to clipboard
noremap <leader>y "+y
noremap <leader>Y "+Y
noremap <leader>p "+p
noremap <leader>P "+P

" Moving Windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
":help key-notation
"set winaltkeys=no

" Moving Buffers
map <leader>h :bp<CR>
map <leader>l :bn<CR>

" press ; to issue commands in normal mode (no more shift holding)
nnoremap ; :
nnoremap ç :
" use jj to quickly escape to normal mode while typing
"inoremap jj <ESC>

"" When tiping and we press Shift to long
command W w
command WQ wq
command Wq wq
command Q q

au FileType c,cpp,objc,objcpp call rainbow#load()
au BufRead,BufNewFile *.py setlocal foldmethod=indent
"autocmd FileType html set ft=html.htmldjango " For SnipMate
""au BufRead,BufNewFile *.html set ft=html.htmldjango
au BufRead,BufNewFile *.html set ft=htmldjango.html.javascript
au BufNewFile,BufRead *.less set filetype=less
"au BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead SCons* set filetype=scons


" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

"setlocal omnifunc=pythoncomplete#Complete
"setlocal completeopt=menuone,longest,preview
"let g:SuperTabDefaultCompletionType="<c-x><c-]>"

" Notes
" <S-k> show manpage, python doc, etc
