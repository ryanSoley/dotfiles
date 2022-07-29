" theme and color settings
colorscheme vice

" run pathogen plugin manager
execute pathogen#infect()

" basic config
syntax on
filetype plugin indent on
set number
set relativenumber
set undofile
set undodir=~/.vim/undo/

" key mappings
let mapleader = "-"
" move line up/down
nnoremap -- :m+<CR>==
nnoremap __ :m-2<CR>==
" BOL/EOL remap
nnoremap H ^
nnoremap L $

" quick escape
inoremap jk <esc>
" fix delete
set backspace=indent,eol,start

" nerdtree settings
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
