set nocompatible
set autoread
set mouse=r
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'camelcasemotion'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'lighttiger2505/gtags.vim'
Plugin 'pechorin/any-jump.vim'
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'

Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'antoinemadec/coc-fzf'
Plugin 'dense-analysis/ale'
Plugin 'voldikss/vim-floaterm'
Plugin 'haishanh/night-owl.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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

set statusline=%F
set statusline+=%m
set statusline+=%r
set statusline+=%=
set statusline+=%l/%L
set laststatus=2

autocmd CursorMoved * checktime

nmap <C-b> <C-w><C-w><C-w>q
nnoremap J :
nnoremap K J
nnoremap <silent> <C-n> :bprev<CR>
nnoremap <silent> <C-m> :bnext<CR>
nnoremap <silent> W d<Plug>CamelCaseMotion_w
nmap Y y$

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
let g:vim_jsx_pretty_colorful_config = 1

set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,cp932,iso-2022-jp
set fileformats=unix,dos,mac

set iminsert=0
set imsearch=0
set imcmdline

set t_Co=256
set bg=dark
highlight Comment ctermfg=green
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set t_ut=

" About Go "
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0

" fzf settings
let $FZF_DEFAULT_OPTS="--layout=reverse"
let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }

let mapleader = "\<Space>"
nnoremap <SPACE> <Nop>
nnoremap <leader>t :NERDTreeToggle<CR>

set timeout timeoutlen=130
inoremap <silent>fj <Esc>
noremap <silent>fj <Esc>
inoremap <silent>dj {}<Left>
inoremap <silent>sj []<Left>
inoremap <silent>aj ()<Left>
inoremap <silent>vj <><Left>
inoremap <silent>ja ``<Left>
inoremap wj <Esc>:w<CR>
inoremap <silent><C-f> <right>
inoremap <silent><C-b> <left>
inoremap <silent><C-y> {
inoremap <silent><C-u> }
inoremap <silent><C-d> -
inoremap <silent><C-p> =
inoremap <silent><C-l> $
inoremap <silent><C-n> :
inoremap <silent><C-s> \
inoremap <silent><C-t> \|
inoremap <silent><C-r> _
inoremap <silent><C-x> ?

tnoremap <silent><C-e> <C-\><C-n>:FloatermNew<CR>
nnoremap <silent><C-p>  :FloatermPrev<CR>
tnoremap <silent><C-p>  <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent><C-l>  :FloatermNext<CR>
tnoremap <silent><C-l>  <C-\><C-n>:FloatermNext<CR>
nnoremap <silent><C-t> :FloatermToggle<CR>
tnoremap <silent><C-t> <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent><C-k> :FloatermKill<CR>
tnoremap <silent><C-k> <C-\><C-n>:FloatermKill<CR>
tnoremap <silent><Esc> <C-\><C-n>
nnoremap <silent><C-q>  :terminal<CR>i
tnoremap <silent><C-q>  <C-\><C-n>:bdelete!<CR>

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use Ctrl-k to show documentation in preview window.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <silent><expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
inoremap <silent><expr> <Esc> coc#pum#visible() ? coc#pum#cancel() : "\<Esc>"

inoremap <silent><BS> <nop>

nnoremap <silent><leader>r xph
nnoremap <silent><leader>l hxp

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

nmap gl :CocFzfList<CR>
nmap gm :CocList mru<CR>
nmap gr :CocFzfList grep<CR>
nmap dg :CocFzfList diagnostics<CR>

let g:ale_linters = {
    \ 'python': [],
    \ }

let g:ale_fixers = {
    \	'python': ['autopep8', 'black', 'isort'],
	\   'typescript': ['prettier'],
	\   'typescriptreact': ['prettier'],
	\   'javascript': ['prettier'],
	\   'javascriptreact': ['prettier'],
	\   'css': ['prettier'],
    \ }

let g:python3_host_prog = "python"
let g:ale_python_flake8_executable = g:python3_host_prog
let g:ale_python_flake8_options = '-m flake8'
let g:ale_python_autopep8_executable = g:python3_host_prog
let g:ale_python_autopep8_options = '-m autopep8'
let g:ale_python_isort_executable = g:python3_host_prog
let g:ale_python_isort_options = '-m isort'
let g:ale_python_black_executable = g:python3_host_prog
let g:ale_python_black_options = '-m black'

let g:ale_fix_on_save = 1
let g:ale_fix_on_enter = 0
let g:ale_completion_autoimport = 1
let g:ale_disable_lsp = 1
let g:ale_enabled = 1
let g:ale_linters_explicit = 1

nnoremap x "_x
nnoremap s "_s

autocmd! bufwritepost $MYVIMRC source %
hi Floaterm guibg=black
hi FloatermBorder guibg=black guifg=cyan

" For airline
let g:airline#extensions#tabline#enabled = 1
colorscheme night-owl
