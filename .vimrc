set nocompatible               " be iMproved
filetype off                   " required! 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles
Bundle	'majutsushi/tagbar'
Bundle  'scrooloose/nerdtree'
Bundle	'fholgado/minibufexpl.vim'
Bundle	'kien/ctrlp.vim'
Bundle	'tpope/vim-fugitive  '
Bundle	'msanders/snipmate.vim'
Bundle	'rstacruz/sparkup'
Bundle	'tpope/vim-surround'
Bundle	'tpope/vim-repeat'
Bundle	'kien/rainbow_parentheses.vim'
Bundle	'ervandew/supertab'
Bundle	'tsaleh/vim-matchit'
Bundle	'vim-easymotion'
Bundle	'Lokaltog/powerline'
Bundle	'stephenmckinney/vim-solarized-powerline'
" Bundle	'noahfrederick/Hemisu'
Bundle	'vim-scripts/scons.vim'
Bundle	'vim-scripts/django.vim'

Bundle	'kshenoy/vim-signature'
Bundle	'honza/vim-snippets'
Bundle	'vim-scripts/LanguageTool'
Bundle	'sjl/gundo.vim'
Bundle	'vim-scripts/Smartput'

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
    ""let g:solarized_termcolors=256
    set background=dark " we plan to use a dark background
    colorscheme solarized

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
    ""set foldenable " Turn on folding
    ""set foldmarker={,} " Fold C style code (only use this as default if you use a high foldlevel)
    ""set foldmethod=marker " Fold on the marker
    ""set foldlevel=100 " Don't autofold anything (but I can still fold manually)
    ""set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds
    ""function SimpleFoldText() " {
    ""return getline(v:foldstart).' '
    ""endfunction " }
    ""set foldtext=SimpleFoldText() " Custom fold text function (cleaner than default)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""
" MiniBufExpl
""""""""""""""""""""""""""""""""""""""""
    "let g:miniBufExplMapWindowNavVim = 1
    "let g:miniBufExplMapWindowNavArrows = 1
    "let g:miniBufExplMapCTabSwitchBufs = 1
    "let g:miniBufExplModSelTarget = 1
    "control + the vim direction keys [hjkl] move you between windows
    "control + arrow keys can be made to do the same thing
    "control + tab & shift + control + tab switch through your open windows
    "control + tab & shift + control + tab can alternatively be setup to cycle forwards and backwards through your modifiable buffers in the current window 

""""""""""""""""""""""""""""""""""""""""
" TagList/CTags
""""""""""""""""""""""""""""""""""""""""
    "let Tlist_Auto_Open=0 " let the tag list open automagically
    let Tlist_Compact_Format = 1 " show small menu
    "let Tlist_Ctags_Cmd = 'ctags' " location of ctags
    "let Tlist_Enable_Fold_Column = 1 " do show folding tree
    let Tlist_Exit_OnlyWindow = 1 " if you are the last, kill yourself
    "let Tlist_File_Fold_Auto_Close = 0 " fold closed other trees
    let Tlist_Show_One_File = 1 " Only show tags for current buffer
    let Tlist_Sort_Type = "order" " order by
    let Tlist_Use_Right_Window = 1 " split to the right side of the screen
    "let Tlist_WinWidth = 40 " 40 cols wide, so i can (almost always)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Omni Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt=menu "default ='menu,preview'
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType cpp set omnifunc=cppcomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <F2> :buffers<CR>:buffer<Space>
nnoremap <F3> :!ctags -R<cr>
map <F4> :w!<CR>:!aspell check %<CR>:e! %<CR> " Spellcheck
map <buffer> <F5> :w<CR>:!/usr/bin/env python % <CR> " Run in python
set pastetoggle=<F6> " Paste Mode

let g:syntastic_mode_map = { 'mode': 'passive',
                            \ 'active_filetypes': [],
                            \ 'passive_filetypes': [] }
nmap <F7> :SyntasticCheck<CR>

nmap <F8> :TagbarToggle<CR>

" Toggle display of toolbars in gvim
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

"map <buffer> gd /def <C-R><C-W><CR> 
"
" pressing \<space> clears the search highlights
nmap <silent> <leader><space> :nohlsearch<CR>
" break line at cursor
nmap <silent> <leader><CR> i<CR><ESC>
nmap <silent> <leader>o o<ESC>
nmap <silent> <leader>O O<ESC>
noremap <leader>y "+y
noremap <leader>Y "+Y
noremap <leader>p "+p
noremap <leader>P "+P

" Moving Windows
"map <c-j> <c-w>j
"map <c-k> <c-w>k
"map <c-l> <c-w>l
"map <c-h> <c-w>h
":help key-notation
"set winaltkeys=no
" Moving Buffers
map <c-b>h :bp<CR>
map <c-b>l :bn<CR>
" Moving Tabs
"map <c-t>h :tabp<CR>
"map <c-t>l :tabn<CR>

" press ; to issue commands in normal mode (no more shift holding)
nnoremap ; :
nnoremap ç :
" use jj to quickly escape to normal mode while typing 
""inoremap jj <ESC>

"" When tiping and we press Shift to long
command W w
command WQ wq
command Wq wq
command Q q

"autocmd FileType html set ft=html.htmldjango " For SnipMate
""au BufRead,BufNewFile *.html set ft=html.htmldjango
au BufRead,BufNewFile *.html set ft=htmldjango.html.javascript
au BufNewFile,BufRead *.less set filetype=less
au BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead SCons* set filetype=scons


" map <F4> :ls<CR>:buffer<space> 
