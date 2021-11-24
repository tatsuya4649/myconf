set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'camelcasemotion'
Plugin 'vim-bracketed-paste'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'

call vundle#end()
filetype plugin indent on

syntax on
set number
set autoindent
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set autoread
set hidden
set noswapfile
set updatetime=100
set nocompatible
set hlsearch
colorscheme peachpuff

set statusline=%F
set statusline+=%m
set statusline+=%r
set statusline+=%=
set statusline+=%l/%L
set laststatus=2

highlight StatusLine guifg=#FFFFFF guibg=#000000 gui=none ctermfg=white ctermbg=black cterm=none

highlight Comment ctermfg=green

autocmd CursorMoved * checktime

nmap <C-g> :Gtags -g  
nmap <C-b> <C-w><C-w><C-w>q
nmap <C-f> :Gtags -x  
nmap <C-h> :Gtags -f %<CR>
nmap <C-j> :Gtags <C-r><C-w><CR>
nmap <C-k> :Gtags -r <C-r><C-w><CR>
nmap <C-n> :cn<CR>
nmap <C-p> :cp<CR>

let g:vim_jsx_pretty_colorful_config = 1
