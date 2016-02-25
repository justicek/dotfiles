" vundle config (plugin management) "
set nocompatible
filetype off

" set runtime path to include and initialize vundle "
set rtp+=~/.vim/bundle/Vundle.vim

" --- plugins begin --- "
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'

call vundle#end()
filetype plugin indent on
" --- plugins end --- "


" colors/syntax "
:colorscheme elflord 
syntax enable

set number
set backspace=indent,eol,start
"set smarttab
"set autoindent

set nrformats-=octals

set incsearch
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set laststatus=2
"set ruler
set wildmenu
set lazyredraw

set scrolloff=1

" tab-related config "
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
