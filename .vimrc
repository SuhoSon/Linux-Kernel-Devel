if has("syntax")
	syntax on
endif

set encoding=utf8
set history=1000

set autoread
set autowrite

set cindent
set smartindent
set autoindent
set showmatch

set number
set hlsearch
set incsearch

set ruler
set title
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set laststatus=2

filetype on

colorscheme jellybeans

" Shortcuts
map <C-e> :cs f e 
map <C-c> :cs f c 
map <C-g> :cs f g 
map <C-o> :copen<CR>
map <C-p> :cclose<CR>
map <C-x> :wq<CR>
map <C-j> :cp<CR>
map <C-k> :cn<CR>
map <C-9> :split<CR>
map <C-0> :vs<CR>

" Last modified line
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set rtp+=~/.vim/bundle/Vundle.vim

" ctags
set tags=tags

" cscope
cs add cscope.out

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'brookhong/cscope.vim'

call vundle#end()
