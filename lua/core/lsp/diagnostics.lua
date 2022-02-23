vim.diagnostic.config(
  {
    severity_sort = true,
    signs = true,
    underline = false, -- Do not underline code
    update_in_insert = true,
    virtual_text = false
    -- virtual_text = {
    -- 	prefix = "",
    -- 	spacing = 0,
    -- },
  }
)

local function lspSymbol(name, icon)
  local hl = "DiagnosticSign" .. name
  vim.fn.sign_define(hl, {text = icon, numhl = hl, texthl = hl})
end

lspSymbol("Error", "")
lspSymbol("Info", "")
lspSymbol("Hint", "")
lspSymbol("Warn", "")
local max_width = math.max(math.floor(vim.o.columns * 0.7), 100)
local max_height = math.max(math.floor(vim.o.lines * 0.3), 30)
vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    virtual_text = {
      prefix = "",
      spacing = 0
    },
    signs = true,
    underline = false,
    update_in_insert = false -- update diagnostics insert mode
  }
)
vim.lsp.handlers["textDocument/hover"] =
  vim.lsp.with(
  vim.lsp.handlers.hover,
  {
    border = "rounded",
    max_width = max_width,
    max_height = max_height
  }
)
vim.lsp.handlers["textDocument/signatureHelp"] =
  vim.lsp.with(
  vim.lsp.handlers.signature_help,
  {
    border = "rounded",
    max_width = max_width,
    max_height = max_height
  }
)

vim.lsp.handlers["textDocument/codeLens"] =
  vim.lsp.with(
  vim.lsp.handlers.code_lens,
  {
    border = "rounded",
    max_width = max_width,
    max_height = max_height
  }
)
