" Plugins Configuration 

call plug#begin('~/.local/share/nvim/plugged')
let setup = get(g:, 'setup', 'minimal')

" Text object
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'lakhalouahid/vim-textobj-custom'

" Make comment insanely fast
" Plug 'chrisbra/vim-commentary'
Plug 'b3nj5m1n/kommentary'


" Make auto pairs
"Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-autopairs'
" Replace With Register
Plug 'vim-scripts/ReplaceWithRegister'

"l Repeat
Plug 'tpope/vim-repeat'

" Surround
Plug 'tpope/vim-surround'

" Colorscheme gruvbox
Plug 'morhetz/gruvbox'


" Maximize and Unmaximize
Plug 'KabbAmine/vZoom.vim', {'on': ['<Plug>(vzoom)', 'VZoomAutoToggle']}

" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Vim-wiki
Plug 'lervag/wiki.vim'

" ipython
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }


if setup == 'default'
  " nvim-lspconfig
  "
  Plug 'dmitmel/cmp-digraphs'
  Plug 'nvim-lua/lsp-status.nvim'
  Plug 'milisims/nvim-luaref'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/lsp-status.nvim'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-emoji'
  Plug 'hrsh7th/nvim-cmp'

  " For luasnip users.
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'honza/vim-snippets'

  " Awesome tpope Plugins
  Plug 'tpope/vim-fugitive'
  " Plug 'vim-airline/vim-airline'

  " textobj function
  Plug 'kana/vim-textobj-function'

  Plug 'mattn/emmet-vim', {'for': 'html,css'}
  " Custom Stuff
  Plug 'junegunn/vim-easy-align'

  " Sort paragraph
  Plug 'christoomey/vim-sort-motion'

  " Goyo
  Plug 'junegunn/goyo.vim'

  " Wordnet
  Plug 'fncll/wordnet.vim'

  " markdown previewer
  Plug 'iamcco/markdown-preview.nvim'

endif
call plug#end()
