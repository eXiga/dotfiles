call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"Config section

colorscheme nord
:set number
:set relativenumber

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

"vim-airline
let g:airline_theme='nord'