local util = require('lspconfig/util')
require('lspconfig').gopls.setup({
  autostart = true,
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gotmpl" },
  root_dir = util.root_pattern("go.mod", ".git"),
  single_file_support = true,
})
