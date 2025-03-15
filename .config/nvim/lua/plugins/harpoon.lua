return {
   "ThePrimeagen/harpoon",
   --toggle quick menu
   vim.keymap.set({ "n", "v" }, "<leader>ht", function()
      require("harpoon.ui").toggle_quick_menu()
   end),
   --mark a file
   vim.keymap.set({ "n", "v" }, "<leader>ha", function()
      require("harpoon.mark").add_file()
   end),

   --nav to file number
   vim.keymap.set({ "n", "v" }, "<leader>h1", function()
      require("harpoon.ui").nav_file(1) --navigate to file 1
   end),
   vim.keymap.set({ "n", "v" }, "<leader>h2", function()
      require("harpoon.ui").nav_file(2) --navigate to file 2
   end),
   vim.keymap.set({ "n", "v" }, "<leader>h3", function()
      require("harpoon.ui").nav_file(3) --navigate to file 3
   end),
   vim.keymap.set({ "n", "v" }, "<leader>h4", function()
      require("harpoon.ui").nav_file(4) --navigate to file 4
   end),
   vim.keymap.set({ "n", "v" }, "<leader>h5", function()
      require("harpoon.ui").nav_file(5) --navigate to file 5
   end),
   vim.keymap.set({ "n", "v" }, "<leader>h6", function()
      require("harpoon.ui").nav_file(6) --navigate to file 6
   end),
}
