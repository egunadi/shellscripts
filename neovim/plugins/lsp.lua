return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      ["*"] = function(_, opts)
        local user_on_attach = opts.on_attach
        opts.on_attach = function(client, bufnr)
          -- 💥 This disables the completion handler from LSP
          vim.bo[bufnr].omnifunc = ""

          if user_on_attach then
            user_on_attach(client, bufnr)
          end
        end
        return true
      end,
    },
  },
}
