set t_Co=256
colorscheme molokai
syntax enable

command! W :w

set tabstop=4                   " Tabs are four spaces
set softtabstop=4               " Tabs counts as four spaces
set shiftwidth=4                " << >> gives you four spaces

set smarttab
set expandtab

set autoindent                  " Auto indent
set smartindent                 " Smart indent
set nowrap                      " Dont wrap lines

" << >> gives me tabs
nmap <S-Tab> <<

set ruler                       " Cursor information
set nolazyredraw                " Don't be lazy
set showmatch                   " Show matching parens
set number                      " Display line numbers
set numberwidth=1               " using only 1 column (and 1 space) while possible
set wildmenu                    " Menu completion in command mode on <Tab>
set wildmode=full               " <Tab> cycles between all matching choices.
set showcmd                     " Show last command
set encoding=utf8
" No backup files
set nobackup
set nowb
set noswapfile

" Undooooooooo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

" Displays tabs with :set list & displays when a line runs off-screen
set listchars=tab:>.,trail:.,precedes:<,extends:>
set list

" Searching and Patterns
set ignorecase                  " Default to using case insensitive searches,
set smartcase                   " unless uppercase letters are used in the regex.
set smarttab                    " Handle tabs more intelligently
set hlsearch                    " Highlight searches by default.
set incsearch                   " Incrementally search while typing a /regex

" Set autocomplete form 
set completeopt=menuone,longest,preview

" Python
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class, 
autocmd FileType py set textwidth=80
autocmd FileType py set colorcolumn=80

" Enable omni completion.
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,ctp set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType vim set omnifunc=syntaxcomplete#Complete

" Markdown
autocmd BufEnter,Bufread *.mkd,*.md,*.mdown,*.markdown set tw=0

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0

" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2

" Remove trailing whitespace
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.c++ :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" Utilities
Bundle 'tsaleh/vim-matchit'
Bundle 'Raimondi/delimitMate'

Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'

" Markdown
Bundle 'plasticboy/vim-markdown'

" Syntax Commenter
Bundle 'vim-scripts/tComment'

" Python
Bundle 'kevinw/pyflakes-vim'
Bundle 'vim-scripts/pep8'
Bundle "vim-scripts/indentpython.vim"

" HTML Development 
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" Universal Syntax Checker + Completion
Bundle 'scrooloose/syntastic'

" Files manager
Bundle 'majutsushi/tagbar'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'vim-scripts/mru.vim'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'sjl/gundo.vim'

filetype plugin indent on

" Pep8 using F6
let g:pep8_map='<F6>'

" PYTHON STYLE 
let python_highlight_all=1 " Enable all plugin's highlighting.
let python_slow_sync=1 " For fast machines.
let python_print_as_function=1 " Color 'print' function.

" FuzzFinder Shorcuts. Using F2 for opening FuzzyFinderTextMate
map <leader>f :FufFileWithCurrentBufferDir<CR>
map <leader>m :FufFileWithFullCwd<CR>
let g:rehash256 = 1
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop> 
set wrap
