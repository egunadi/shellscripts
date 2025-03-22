return {
  "nvim-tree/nvim-tree.lua",
  cmd = "NvimTreeToggle",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30, -- Sidebar width
        side = "left",
      },
      filters = {
        dotfiles = false, -- Show hidden files
      },
    })
  end,
}
