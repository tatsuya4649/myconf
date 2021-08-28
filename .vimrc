syntax on
set number
set autoindent
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
set autoread
set hidden
set noswapfile
set updatetime=100

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
