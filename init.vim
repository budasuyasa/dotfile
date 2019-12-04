call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jwalton512/vim-blade'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'yuttie/comfortable-motion.vim'
Plug 'alvan/vim-closetag'
Plug 'liuchengxu/vista.vim'
Plug 'mhinz/vim-startify'
Plug '907th/vim-auto-save'
Plug 'ludovicchabant/vim-gutentags'
Plug 'ryanoasis/vim-devicons'
Plug 'altercation/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'qpkorr/vim-bufkill'
Plug 'tpope/vim-projectionist'
Plug 'noahfrederick/vim-laravel'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'name': 'dracula' }

call plug#end()

" Basic configuration
set encoding=utf-8
set hidden						" set hidden buffer
set number						" show line number
set relativenumber				" show relative number
set linespace=12				" set line space
set title
set tabstop=4					" set tabstop 4 space
set shiftwidth=4  				" set shift width
set nobackup
set ignorecase
set smartcase
set nowrap
set nowritebackup
set updatetime=300
set nobackup
set noswapfile
set showmode                    " always show what mode we're currently editing in
set autoindent 					" set auto indent
set smartindent
set nocompatible                " be iMproved, required
filetype off                    " required
filetype plugin on
syntax enable
set mouse=a

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

let g:auto_save = 1  " enable AutoSave on Vim startup
" Fast saves
nmap <leader>w :w!<cr>
nmap <leader>t :tabnew<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk
nnoremap J <Nop>

"Easy escaping to normal model
imap jj <esc>

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Tab switcher NerdTree
map <S-Right> :bnext<CR>
map <S-Left>  :bprevious<CR>
map <S-l> :bnext<CR>
map <S-h>  :bprevious<CR>

" Files Navigation
map <C-o> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
map <C-e> :History<CR>

" Split Navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Colorscheme configuration
let g:gruvbox_italic = 1
let g:gruvbox_underline = 1
let g:gruvbox_undercurl = 1
let g:gruvbox_contrast_dark = "soft"
set background=dark
colorscheme gruvbox

" Plugin specific
nmap <F8> :Vista!!<CR>
nmap <F7> :Vista finder coc<CR>

" coc completion configuration
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use tab and shift tab to navigate over completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" use enter to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_filetype_map = {
  \ 'blade': 'html',
  \ }

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" show buffer 
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'

let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.blade.php'

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'coc'

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']
" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

" Make it so that a curly brace automatically inserts an indented line
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>

" Vim One themes
" let g:airline_theme='one'
" let g:one_allow_italics = 1 " I love italic for comments

let g:indent_guides_enable_on_vim_startup = 1
