set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'tpope/vim-rails'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-ruby/vim-ruby'
Bundle 'digitaltoad/vim-jade'
Bundle 'tpope/vim-haml'
Bundle 'kchmck/vim-coffee-script'
Bundle 'caulfield/vim-slim'
Bundle 'pangloss/vim-javascript'
Bundle 'Raimondi/delimitMate'
Bundle 'depuracao/vim-rdoc'
Bundle 'altercation/vim-colors-solarized'
Bundle "mattn/emmet-vim"
Bundle 'jnwhiteh/vim-golang'

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

" Leader shortcuts for Rails commands
map <Leader>m :Rmodel
map <Leader>c :Rcontroller
map <Leader>v :Rview
map <Leader>u :Rspec

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
