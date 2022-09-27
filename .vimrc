set nocompatible
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
"About Go"
Plugin 'fatih/vim-go'
"About Rust"
Plugin 'rust-lang/rust.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

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

nmap <C-g> :Gtags -g  
nmap <C-b> <C-w><C-w><C-w>q
nmap <C-f> :Gtags -x  
nmap <C-k> :GtagsCursor<CR>
nmap <C-h> :Gtags -f %<CR>
nmap <C-j> :GtagsCursor<CR>
nmap <C-k> :Gtags -r <C-r><C-w><CR>
nmap <C-y> :cn<CR>
nmap <C-p> :cp<CR>
nnoremap J :
nnoremap K J
nnoremap <silent> <C-n> :bprev<CR>
nnoremap <silent> <C-m> :bnext<CR>
nnoremap <silent> W d<Plug>CamelCaseMotion_w
nmap Y y$
nnoremap <silent> <C-t> :NERDTreeToggle<CR>


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
"colorscheme peachpuff"
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

" fzf
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>g :GFiles<CR>
nnoremap <silent> <leader>G :GFiles?<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>h :History<CR>
nnoremap <silent> <leader>r :Rg<CR>
