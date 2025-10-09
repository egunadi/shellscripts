return {
  "nvim-mini/mini.map",
  version = false,
  config = function()
    local minimap = require("mini.map")

    minimap.setup({
      integrations = {
        minimap.gen_integration.builtin_search(),
        minimap.gen_integration.diagnostic(),
        minimap.gen_integration.gitsigns(),
      },
      symbols = {
        encode = minimap.gen_encode_symbols.dot("4x2"),
      },
      window = {
        width = 10,
      },
    })

    vim.api.nvim_create_autocmd("UIEnter", {
      once = true,
      callback = function()
        if vim.g.neovide then
          -- delay for GUI frontends
          vim.defer_fn(function()
            minimap.open()
            vim.notify("🗺️ Minimap opened in Neovide")
          end, 200)
        else
          -- immediate for terminal
          minimap.open()
          vim.notify("🗺️ Minimap opened in terminal")
        end
      end,
    })
  end,
}
