" Vim Plug plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()

    " Language specific Vim plugins
    " Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
    " Cassandra CQL
    Plug 'elubow/cql-vim'

    " General Vim plugins
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdcommenter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mattn/emmet-vim'
    Plug 'yggdroot/indentline'
    Plug 'junegunn/vim-easy-align'

    " Themes
    Plug 'arcticicestudio/nord-vim'

call plug#end()

" Vim Golang beautifications
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

" Theme
set t_Co=256
let g:nord_bold_vertical_split_line = 1
colorscheme nord

" Vim Airline theme
let g:airline_theme='nord'
let g:airline_powerline_fonts=1

" Custom configurations
" General Vim stuff
syntax on
filetype plugin indent on
set bs=2
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
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

" Vim Golang stuff
set autowrite
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
set updatetime=100

" Vim YAML stuff
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
