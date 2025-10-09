return {
  { "folke/noice.nvim", enabled = false },
  { "folke/flash.nvim", enabled = false }, -- just in case you're using flash motions
  { "dgagn/diagflow.nvim", enabled = false }, -- another popup culprit sometimes
  { "nvim-mini/mini.pairs", enabled = false }, -- optional if you're done with it
  { "j-hui/fidget.nvim", enabled = false }, -- if showing LSP UI
  { "blink.cmp", enabled = false }, -- 👈 this is the one that's hijacking <CR>
}
