-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "kj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "JK", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "KJ", "<Esc>", { desc = "Exit insert mode" })

-- Remove any previous mapping
pcall(vim.api.nvim_del_keymap, "i", "<CR>")

-- Force Enter to insert a newline only
vim.keymap.set("i", "<CR>", "<CR>", { noremap = true, silent = true, desc = "Insert newline" })

if vim.g.neovide then
  -- Set the initial scale factor
  vim.g.neovide_scale_factor = 1.0

  local function change_scale_factor(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end

  -- Zoom in with Ctrl + =
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.25)
  end, { desc = "Zoom In (Neovide)" })

  -- Zoom out with Ctrl + -
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.25)
  end, { desc = "Zoom Out (Neovide)" })
end
