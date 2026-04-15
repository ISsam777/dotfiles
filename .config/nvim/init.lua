require("config.lazy")
require("core.keymap")
vim.diagnostic.config({ signs = false })
vim.api.nvim_create_autocmd("VimEnter", {
   callback = function()
      vim.cmd("set rnu! nu!")
      vim.cmd("set cursorline!")
   end,
})
-- Disable ESLint LSP server and hide virtual text in Neovim
-- Add this to your init.lua or init.vim file
local isLspDiagnosticsVisible = true
