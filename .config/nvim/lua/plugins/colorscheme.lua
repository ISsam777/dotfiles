return {
   "folke/tokyonight.nvim",
   -- "rose-pine/neovim",
   priority = 1000,
   config = function()
      vim.cmd("colorscheme tokyonight-storm")
      -- vim.cmd("colorscheme rose-pine")
   end, -- code
}
