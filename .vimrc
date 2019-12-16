" Vim Plug plugins
call plug#begin()

    " Language specific Vim plugins
    " PHP
    Plug 'stanangeloff/php.vim'
    
    " General Vim plugins
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdcommenter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mattn/emmet-vim'
    "Plug 'yggdroot/indentline'
    "Plug 'junegunn/vim-easy-align'

    " Themes
    Plug 'arcticicestudio/nord-vim'

call plug#end()

" Theme
set t_Co=256
colorscheme nord

" Vim Airline theme
let g:airline_theme='nord'
let g:airline_powerline_fonts=1

" Custom configurations
" General Vim stuff
syntax on
filetype plugin indent on
set bs=2
set number
set noshowmode
set laststatus=2
set softtabstop=4 shiftwidth=4 expandtab
set cursorline
hi CursorLineNr cterm=none
hi Visual cterm=reverse guibg=grey
" Changes cursor to thin cursor on INSERT
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" Vim YAML stuff
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
