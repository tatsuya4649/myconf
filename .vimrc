set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

autocmd ColorScheme * highlight LineNr ctermfg=226

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'camelcasemotion'
Plugin 'vim-bracketed-paste'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'lighttiger2505/gtags.vim'
Plugin 'lambdalisue/fern.vim'
Plugin 'pechorin/any-jump.vim'

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

autocmd CursorMoved * checktime

nmap <C-g> :Gtags -g  
nmap <C-b> <C-w><C-w><C-w>q
nmap <C-f> :Gtags -x  
nmap <C-k> :GtagsCursor<CR>
nmap <C-h> :Gtags -f %<CR>
nmap <C-k> :Gtags -r <C-r><C-w><CR>
nmap <C-n> :cn<CR>
nmap <C-p> :cp<CR>
nnoremap J :
nnoremap K J
nnoremap <silent> W d<Plug>CamelCaseMotion_w
nmap Y y$
nmap <C-i> :Fern . -reveal=% -drawer -toggle -width=40<CR>"
"nmap <C-j> :AnyJump<CR>"
"nmap <C-b> :AnyJumpBack<CR>"
"nmap <C-c> :AnyJumpLastResults<CR>"

let g:any_jump_colors = {
      \"plain_text":         "Comment",
      \"preview":            "Comment",
      \"preview_keyword":    "Operator",
      \"heading_text":       "Function",
      \"heading_keyword":    "Identifier",
      \"group_text":         "Comment",
      \"group_name":         "Function",
      \"more_button":        "Operator",
      \"more_explain":       "Comment",
      \"result_line_number": "Comment",
      \"result_text":        "Statement",
      \"result_path":        "String",
      \"help":               "Comment"
      \}
hi Pmenu guibg=#1b1b1b ctermbg=Black
let g:vim_jsx_pretty_colorful_config = 1

set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,cp932,iso-2022-jp
set fileformats=unix,dos,mac

set iminsert=0
set imsearch=0
set imcmdline
