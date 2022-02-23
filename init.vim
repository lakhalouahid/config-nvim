"### NOEVIM INIT CONFIGURATION FILE ###
"## Global Settings ##
let setup = get(g:, 'setup', 'default')

" Leader
let mapleader = " "  " Define the leader character
let maplocalleader = " "  " Define the leader character

" Behavior
"
set ruler          " Show the line and columninit.vim number
set nowrap         " Don't Wrap the lineBs
set encoding=utf-8 " Encoding UTF-8
set nocompatible   " No compat vith vi
set title          " Title Setting
set hidden         " Make a buffer becomes hidden when it is abandoned
set scrolloff=0
set signcolumn=no  " Left column for errors
set colorcolumn=0  " 80 red column
set cmdheight=1    " Cmd Height
set shortmess+=c   " Don't give ins-completion-menu messages
set noshowmode
set nohlsearch     " No hlsearch
set completeopt=menuone,noinsert,noselect
set exrc           " Read local vimrc config file
set nowrapscan
set updatetime=200
set belloff=all    " Set off the bell sound
syntax enable      " Enable synthax highlighting
filetype on        " Enable filetype detection
filetype plugin on " Enable loading the plugin files for specific file type
filetype indent on " Enable loading the indent file for specific file type



" Tabs and identations
set expandtab      " Expand tabs to spaces
set tabstop=2      " Tab settings
set shiftwidth=2   " Tab settings
set smarttab       " Smarttab
set smartindent    " Smart indent
set autoindent     " Auto ident
set relativenumber " Show relative line number

" Spelling
set spelllang=en_us " Make english as the default language for spelling
set background=dark " Use my beautiful drak background theme

" Themes
set termguicolors

" Search
set path=.**       " Search from the current folder and down
set wildmode=longest:list
" Ignore files
set wildignore+=*.pyc
set wildignore+=*build/*
set wildignore+=**/coverage/*
set wildignore+=**/__pycache__/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*
set numberwidth=1
"set number         " Show absolute number
set incsearch      " Show where the pattern, as it was typed so far, matches
set hlsearch
" Backups
set history=700                         " Set the history to 700 deep
set undolevels=700                      " No more then 700 undolevels
set noswapfile                          " No swap files :)
set nobackup                            " No backups :)
set undofile                            " Use a undofile for each opened file
set undodir=$HOME/.local/share/nvim/undodir " Define the undodir

" Extra stuff
set clipboard=unnamed                     " Use the plus register as the clipboard register
set rtp+=$HOME/.local/share/nvim/lua  " Runtime

" Vim provider
let g:python3_host_prog = '/usr/bin/python3'
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_python_provider = 0
let g:python_recommended_style = 0


" Plugings
source $HOME/.config/nvim/vim/plugs.vim
source $HOME/.config/nvim/vim/mappings.vim
source $HOME/.config/nvim/vim/configurations.vim


" Colorscheme
colorscheme gruvbox

augroup ExtraWhiteSpace
  autocmd!
  autocmd! InsertLeave * match extrawhitespace /\s\+$/
augroup END
highlight extrawhitespace ctermbg=DarkMagenta guibg=DarkMagenta

lua << EOF
  require('init')
EOF
