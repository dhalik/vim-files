colorscheme molokai

syntax enable

" Set to read when a file is changed
set autoread

set t_Co=256
set backspace=indent,eol,start
set omnifunc=syntaxcomplete#Complete

"==============="
" HARDCORE MODE "
"==============="

" FUCK YO SCROLLBARS
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" FUCK YO ARROW KEYS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"============="
" INDENTATION "
"============="

" Render tabs as 4 spaces
set tabstop=4                   " Tabs are four spaces
set softtabstop=4               " Tabs counts as four spaces
set shiftwidth=4                " << >> gives you four spaces
set textwidth=79

" For those who have the sanity to use 4 spaces
set smarttab
set expandtab

set autoindent                  " Auto indent
set smartindent                 " Smart indent

" Displays tabs with :set list
" Displays when a line runs off-screen
set listchars=tab:>.,trail:.,precedes:<,extends:>
set list
set nowrap                      " Dont wrap lines
set so=10                        " set 10 lines to the cursor

"================"
" REMAPPING KEYS "
"================"

" fast save

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Smart way to move between windows
map  wj <C-W>j
map  wk <C-W>k
map  wh <C-W>h
map  wl <C-W>l

" << >> gives me tabs
nmap <S-Tab> <<

"==========="
" INTERFACE "
"==========="

set ruler                       " Show current position
set showmatch                   " Show matching parens
set number                      " Display line numbers
set wildmenu                    " Menu completion in command mode on <Tab>
set wildmode=full               " <Tab> cycles between all matching choices.
set showcmd                     " Show last command
set encoding=utf8
set hid
set ignorecase
set smartcase
set hlsearch
set incsearch 
set lazyredraw 
set magic
set showmatch 
set mat=2

"=================="
" UNDO AND BACKUPS "
"=================="

" Fuck backup files
set nobackup
set nowb
set noswapfile

" Undo
set undofile                " Save undo's after file closes
set undodir=~/.vim/undo     " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set autocomplete form
set completeopt=menuone,longest,preview

" Python reindents 
autocmd BufRead python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,
autocmd BufRead python set colorcolumn=80

" Markdown
autocmd FileType markdown set spell
autocmd FileType markdown set nonumber

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2

" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

autocmd BufWrite *.py :call DeleteTrailingWS()


" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc

filetype plugin on
filetype indent on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'powerline/powerline'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let python_highlight_all=1
let g:ycm_autoclose_preview_window_after_completion=1
"let g:syntastic_python_python_exe = 'python3'
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:Powerline_symbols = 'fancy'

set tags=tags;
set laststatus=2
autocmd BufNewFile,BufRead *.md set filetype=markdown
