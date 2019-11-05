call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jwalton512/vim-blade'
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'

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
set showmode                    " always show what mode we're currently editing in
set nowrap
set autoindent 					" set auto indent
set smartindent
set cindent						" ciindent
set nocompatible                " be iMproved, required
set mouse=a
filetype off                    " required
syntax enable
colorscheme gruvbox
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saves
nmap <leader>w :w!<cr>
nmap <leader>t :tabnew<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

"Easy escaping to normal model
imap qq <esc>

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Tab switcher NerdTree
map <S-Right> :bnext<CR>
map <S-Left>  :bprevious<CR>

" Files Navigation
map <C-o> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
map <C-e> :History<CR>

" Split Navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nmap <F8> :TagbarToggle<CR>

" coc completion configuration
" use tab and shift tab to navigate over completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" use enter to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" show buffer 
let g:airline#extensions#tabline#enabled = 1
