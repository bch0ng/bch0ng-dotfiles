" Vim Plug plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

    " Language specific Vim plugins
    " Golang
    "Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    "Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
    " Latex
    "Plug 'lervag/vimtex'
    " Python
    Plug 'vim-python/python-syntax'

    " General Vim plugins
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdcommenter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/vim-easy-align'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'frazrepo/vim-rainbow'

    " JS/TS
    "Plug 'pangloss/vim-javascript'
    "Plug 'leafgarland/typescript-vim'
    "Plug 'peitalin/vim-jsx-typescript'
    "Plug 'maxmellon/vim-jsx-pretty'
    "Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

    " Themes
    "Plug 'arcticicestudio/nord-vim'
    Plug 'sainnhe/everforest'

call plug#end()

""" Custom configurations

" Theme
set t_Co=256
"let g:nord_bold_vertical_split_line = 1
colorscheme everforest

" Vim Airline theme
let g:airline_powerline_fonts=0

" General stuff
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

" NerdTree stuff
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() :
        \ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

map <leader>r :NERDTreeFind<cr>



" Golang stuff
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_function_calls = 1
"set autowrite
"let g:go_fmt_command = "goimports"
"let g:go_auto_type_info = 1
"set updatetime=100

" YAML stuff
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Python stuff
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab

