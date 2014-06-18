set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'digitaltoad/vim-jade'
Plugin 'tpope/vim-haml'
Plugin 'kchmck/vim-coffee-script'
Plugin 'caulfield/vim-slim'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'depuracao/vim-rdoc'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
Plugin 'jnwhiteh/vim-golang'

call vundle#end()

filetype plugin indent on
syntax enable

set number
set showcmd
set history=1000
set gcr=a:blinkon0
set visualbell
set autoread
set mouse=a
set hlsearch
set ruler
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set cursorline
set hlsearch
set incsearch
set ignorecase
set smartcase
set noswapfile
set nobackup
set nowb
set backspace=indent,eol,start

" set guioptions-=m  "remove menu bar
" set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guifont=Consolas\ 12

autocmd vimenter * if !argc() | NERDTree | endif "NERDTree on startup

let g:NERDTreeWinPos = "right" "NERDTree on right side
let g:NERDTreeMinimalUI = 1 "NERDTree bookmarks disable

let g:user_emmet_leader_key='<C-Q>' " Change emmet hotkeys

set background=dark
colorscheme Tomorrow-Night
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands

" Rspec commands
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "!rspec {spec}"

" Nerdcommenter space after comment sign
let g:NERDSpaceDelims = 1

" CtrpP mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
