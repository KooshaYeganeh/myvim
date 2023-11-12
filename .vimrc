
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'chriskempson/base16-vim'
Plugin 'wuelnerdotexe/vim-enfocado'
Plugin 'rust-lang/rust.vim'
Plugin 'ollykel/v-vim'
Plugin 'cheap-glitch/vim-v'
Plugin 'zakuro9715/vim-vtools'
Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
"
" ...
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8

au BufNewFile,BufRead *.py
\set tabstop=4
\set softtabstop=4
\set shiftwidth=4
\set textwidth=79
\set expandtab
\set autoindent
\set fileformat=unix


au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
highlight BadWhitespace ctermbg=red guibg=darkred

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let python_highlight_all=1
syntax on

colorscheme atom-dark

set number
set showmatch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc
set visualbell
set noerrorbells



