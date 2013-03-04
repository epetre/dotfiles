call pathogen#infect()
syntax on
filetype plugin indent on
colors codeschool
let &t_Co=256
set guifont=Monaco:h14

set number
set hlsearch
set incsearch

:hi Normal ctermbg=NONE
:hi NonText ctermbg=NONE
:hi LineNr ctermbg=NONE

set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Source the vimrc file after saving it
if has("autocmd")
  autocmd! bufwritepost .vimrc source $MYVIMRC
endif
let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>

" Visual
set showmatch  " Show matching brackets.
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.

" The following optional commands are helpful but require explicit creation of
" directories and files:
" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.
