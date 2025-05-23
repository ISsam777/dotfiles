require("config.lazy")
require("core.keymap")
vim.api.nvim_create_autocmd("VimEnter", {
   callback = function()
      vim.cmd("set rnu! nu!")
      vim.cmd("set cursorline!")
   end,
})
