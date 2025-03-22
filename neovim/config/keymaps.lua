-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "kj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "JK", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "KJ", "<Esc>", { desc = "Exit insert mode" })

-- Remove any previous mapping
vim.api.nvim_del_keymap("i", "<CR>")

-- Force Enter to insert a newline only
vim.keymap.set("i", "<CR>", "<CR>", { noremap = true, silent = true, desc = "Insert newline" })
