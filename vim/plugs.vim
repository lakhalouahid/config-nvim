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
Plug 'chrisbra/vim-commentary'

" Make auto pairs
Plug 'jiangmiao/auto-pairs'

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

if setup == 'default'
  " nvim-lspconfig
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/nvim-cmp'

  " For luasnip users.
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'honza/vim-snippets'

  " Awesome tpope Plugins
  Plug 'tpope/vim-fugitive'

  " textobj function
  Plug 'kana/vim-textobj-function'

  " Custom Stuff
  Plug 'junegunn/vim-easy-align'

  " Sort paragraph
  Plug 'christoomey/vim-sort-motion'

  " Goyo
  Plug 'junegunn/goyo.vim'

  " Wordnet
  Plug 'fncll/wordnet.vim'

  " Fuzzy finder
  Plug 'junegunn/fzf'


endif
call plug#end()
