" essentials "
set nocompatible                " turn off vi-compability
filetype off                    " allow filetype configs
set number                      " show line numbers
set backspace=indent,eol,start  " backspace through all chars
set nrformats-=octals           " dont use octal when adding/subtracting

" set runtime path to include and initialize vundle "
set rtp+=~/.vim/bundle/Vundle.vim

" plugins "
call vundle#begin()

" vundle plugin management "
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fireplace' 
Plugin 'tpope/vim-classpath'
call vundle#end()
filetype plugin indent on

" colors/syntax "
syntax enable
" gruvbox "
colorscheme gruvbox 
set bg=dark

" <F4> to toggle search highlighting "
set incsearch
nmap <F4> :set hls! <cr>
nnoremap / :set hlsearch<cr>/

set laststatus=2
set wildmenu
set lazyredraw
set scrolloff=1

" tab-related config "
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" key bindings / command binding "

" /l for toggling visible characters "
nmap <leader>l :set list!<CR>
" use better keys for tabs and EOLs
set listchars=tab:▸\ ,eol:¬

" these remappings work but cause workflow distruption due to message on vim enter/exit "
" au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" relative line number "
set relativenumber

" always show line numbers, but only in current window "
:au WinEnter * :setlocal relativenumber
:au WinLeave * :setlocal norelativenumber

" absolute line numbers in insert mode "
:au InsertEnter * :set number
:au InsertLeave * :set relativenumber

" autoclose omnicomplete preview window "
autocmd CompleteDone * pclose
