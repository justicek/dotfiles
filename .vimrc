" vundle config (plugin management) "
set nocompatible
filetype off

" set runtime path to include and initialize vundle "
set rtp+=~/.vim/bundle/Vundle.vim

" plugins "
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
" Plugin 'tpope/vim-fireplace' 
" Plugin 'tpope/vim-classpath'

call vundle#end()
filetype plugin indent on

" colors/syntax "
syntax enable
:colorscheme gruvbox 
set bg=dark

set number
set backspace=indent,eol,start
set nrformats-=octals

set incsearch
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set laststatus=2
set wildmenu
set lazyredraw

set scrolloff=1

" tab-related config "
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" these remappings work but cause slowdown and force message on vim enter/exit "
" au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
