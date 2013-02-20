call pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on

set t_Co=256
colorscheme GRB256
set number
set foldmethod=syntax
set foldlevelstart=99

let g:NERDTreeDirArrows=0
map <C-t> :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/*<CR><CR>

set hlsearch
set incsearch

set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
" Formatting (some of these are for coding in C and C++)
"
" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set list
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes
" The following optional commands are helpful but require explicit creation of
" directories and files:
" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.
