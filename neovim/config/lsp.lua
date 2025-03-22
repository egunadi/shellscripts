-- Disable all LSP completion responses globally
vim.lsp.handlers["textDocument/completion"] = function()
  return {}
end
