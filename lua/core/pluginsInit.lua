local tab_modules = {
  "plugins.configs.impatient",
  "plugins.configs.alpha",
  "plugins.configs.vsnip",
  "plugins.configs.icons",
  "plugins.configs.luasnip",
  "plugins.core.lsp.signature-lsp",
  "core.lsp",
  "plugins.configs.cmp-nvim",
  "plugins.configs.treesitter-nvim",
  "plugins.configs.chadtree",
  "plugins.core.lsp.lspsaga",
  "plugins.configs.formatter",
  "plugins.configs.gitsigns",
  "plugins.configs.colorizer",
  "plugins.configs.statusline",
  "plugins.configs.bufferline",
  "plugins.configs.telescope",
  "plugins.configs.whichkey",
  "plugins.configs.autopairs",
  "plugins.configs.go-preview",
  "plugins.configs.todo-comments",
  "plugins.configs.dap",
  "plugins.configs.neorg",
  "plugins.configs.notify",
  "plugins.configs.comments",
  "plugins.configs.themes",
  "plugins.configs.presence",
  "plugins.configs.vgit"
}

for i = 1, #tab_modules, 1 do
  pcall(require, tab_modules[i])
end
