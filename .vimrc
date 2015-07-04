set nocompatible
filetype off

call plug#begin("~/.vim/plugged")

Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bling/vim-airline'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-ruby/vim-ruby'
Plug 'digitaltoad/vim-jade'
Plug 'tpope/vim-haml'
Plug 'kchmck/vim-coffee-script'
Plug 'caulfield/vim-slim'
Plug 'pangloss/vim-javascript'
Plug 'Raimondi/delimitMate'
Plug 'depuracao/vim-rdoc'
Plug 'mattn/emmet-vim'
Plug 'jnwhiteh/vim-golang'
Plug 'mileszs/ack.vim'
Plug 'duggiefresh/vim-easydir'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }

call plug#end()

filetype plugin indent on
syntax enable

set clipboard=unnamedplus
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

autocmd vimenter * NERDTree " NERDTree on startup
let g:NERDTreeWinPos = "right" "NERDTree on right side
let g:NERDTreeMinimalUI = 1 "NERDTree bookmarks disable

let g:user_emmet_leader_key='<C-Q>' " Change emmet hotkeys

set background=dark
colorscheme solarized
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar

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

let g:neocomplcache_enable_at_startup = 1
