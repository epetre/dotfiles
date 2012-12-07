call pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on
set tabstop=2

set t_Co=256
colorscheme mustang
set number
set foldmethod=syntax
set foldlevelstart=99

let g:NERDTreeDirArrows=0
map <C-t> :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/*<CR><CR>
