-- debug
vim.lsp.set_log_level("error")



require('mappings')
require('nvim-autopairs').setup{}
-- loads lsp servers
if vim.g.setup ~= 'minimal' then
  require('lsp/lua-lsp')
  require('lsp/bash-lsp')
  require('lsp/typescript-lsp')
  require('lsp/python-lsp')
  require('lsp/vim-lsp')
  require('lsp/gopls-lsp')
  require('lsp/ccls-lsp')
  -- configuration language server
  require('config')
end
