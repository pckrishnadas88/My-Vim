syntax on
"colorscheme monokai
"colorscheme atom-dark-256 
set t_Co=256  " vim-monokai now only support 256 colours in terminal.
"let g:monokai_term_italic = 1

colorscheme molokai
"Enable display of line number
set number
"enable pathogen plugin
execute pathogen#infect()
syntax on
filetype plugin indent on
"Nerd tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd vimenter * NERDTree
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1
"Disable text wrapping
set nowrap
let mapleader=","

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab
" Scroll 20 characters to the right
map <C-L> 20zl
" Scroll 20 characters to the left
map <C-H> 20zh 
"Set backspace for deleting character
set backspace=indent,eol,start
"Set fold method
set foldmethod=indent
set foldlevel=99
"Let CtrlP open files in new tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
