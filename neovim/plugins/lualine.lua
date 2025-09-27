return {
  "nvim-lualine/lualine.nvim",
  opts = {
    sections = {
      lualine_c = {
        { "filename", path = 2 }, -- 0 = name only, 1 = relative path, 2 = absolute full path
      },
    },
  },
}
