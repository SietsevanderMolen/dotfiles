call plug#begin('.config/nvim/plugged')
    " fuzzy file, buffer, mu, tag etc finder.
    Plug 'kien/ctrlp.vim'

    " low contrast color schemes
    Plug 'junegunn/seoul256.vim'
    Plug 'chriskempson/base16-vim'

    " complete Python mode
    Plug 'klen/python-mode'

    " complete Ada mode
    Plug 'Ada-Bundle'

    " css/less/sass/html color preview for vim
    Plug 'gorodinskiy/vim-coloresque'

    " better raindom parentheses
    Plug 'kien/rainbow_parentheses.vim'
call plug#end()

set nocompatible

" change the mapleader from \ to ,
let mapleader=","

" hide buffers instead of closing them
set hidden

" don't wrap lines
set nowrap
" a tab is 4 spaces
set tabstop=4
" number of spaces to use for autoindenting
set shiftwidth=4
" always set autoindenting on
set autoindent
" copy the previous indentation on autoindenting
set copyindent
" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround
" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab
" use spaces instead of tabs
set expandtab

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" always show relative line numbers
set relativenumber

" set show matching parenthesis
set showmatch
" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase
" highlight search terms
set hlsearch
" show search matches as you type
set incsearch

" remember more commands and search history
set history=1000
" use many muchos levels of undo
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
" change the terminal's title
set title
" don't beep
set visualbell
" don't beep
set noerrorbells

set nobackup
set noswapfile

if has('autocmd')
    filetype plugin indent on
endif

set background=dark
let base16colorspace=256
colorscheme base16-default

syntax on

" highlight tabs, trailing spaces, extended lines
set list
set listchars=tab:>.,trail:◀,extends:#,nbsp:.

" allow mouse scrolling
set mouse=a

" make ; like :
nnoremap ; :

" use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" clear search buffer
nmap <silent> ,/ :nohlsearch<CR>

" allow sudo after opening file
cmap w!! w !sudo tee % >/dev/null

" find tags until home dir
set tags=tags;$HOME

" turn on rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
