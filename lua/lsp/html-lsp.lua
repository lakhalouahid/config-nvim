local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
local configs = require('lspconfig.configs')
local lspconfig = require('lspconfig')
if not configs.html then
  configs.html = {
    default_config = {
      cmd = { "vscode-html-language-server", "--stdio" },
      filetypes = { "html" },
      autostart = false,
      init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
          css = true,
          javascript = true
        },
        provideFormatter = true
      },
      settings = {},
      single_file_support = true
    }
  }
end
lspconfig.html.setup({init_options = {formatting = true}})
