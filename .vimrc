" Plugins VimPlug
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-dadbod'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'jwalton512/vim-blade'
Plug 'morhetz/gruvbox'

call plug#end()

" Basic configuration
set encoding=utf-8
set number						" show line number
set relativenumber				" show relative number
set linespace=12				" set line space
set title						" set title
set tabstop=4					" set tabstop 4 space
set shiftwidth=4  				" set shift width
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set autoindent 					" set auto indent
set cindent						" ciindent
set nocompatible                " be iMproved, required
set mouse=a						" enable mouse
filetype off                    " required
syntax enable
colorscheme gruvbox

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saves
nmap <leader>w :w!<cr>

" Auto save
let g:auto_save = 0
let g:auto_save_silent = 1

" Down is really the next line
nnoremap j gj
nnoremap k gk

"Easy escaping to normal model
imap qq <esc>

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Tab switcher NerdTree
map <S-Right> :tabn<CR>
map <S-Left>  :tabp<CR>

" Files Navigation
map <C-o> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
map <C-e> :History<CR>

" Split Navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Use autocomplete close
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Tagbar shortcut
nmap <F8> :TagbarToggle<CR>

