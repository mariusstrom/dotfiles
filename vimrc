set nocompatible    " disable downlevel compat
filetype off
syntax enable       " enable syntax processing

" Enable Vundle {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'altercation/Vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" }}}
" Color {{{
set background=dark
" let g:solarized_termcolors=256	" downgrade Solarized to work on any terminal
" colorscheme solarized
let g:airline_theme='solarized_flood'
" }}}
" Tabs {{{
set tabstop=4           " visual spaces per <TAB>
set softtabstop=4       " number of spaces in a <TAB> when editing
set expandtab           " tabs are spaces
" }}}
" UI {{{
set showcmd             " show last command in bottom bar
set wildmenu            " visual autocomplete for tab-menu
set lazyredraw          " redwraw only when necessary
" }}}
" Searching {{{
set showmatch           " show matching ({[]})
set hlsearch            " highlight searching
set incsearch           " incremental searching as characters are entered
" }}}
" Folding {{{
set foldenable          " enable folding
set foldlevelstart=99   " show a bunch of folds by default
set foldnestmax=10      " nested fold max
" space opens/closes folds
nnoremap <space> za
set foldmethod=indent   " folds based on indents
" }}}
set modelines=1

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" leave this down here
" vim:foldmethod=marker:foldlevel=0
