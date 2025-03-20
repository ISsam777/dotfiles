local map = vim.keymap.set

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
map("v", "Y", "<cmd>'<,'>y+<CR>", { desc = "general copy selected text " })

-- map("n", "<leader>nn", "<cmd>set nu!<CR>", { desc = "toggle line number" })
-- map("n", "<leader>nr", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

map("n", "<leader>fm", function()
   require("conform").format({ lsp_fallback = true })
end, { desc = "general format file" })
-- global lsp mappings
map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })
-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })
-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map(
   "n",
   "<leader>fa",
   "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
   { desc = "telescope find all files" }
)
vim.api.nvim_set_keymap("n", "<leader>o", ":Telescope opener<cr>", { noremap = true, silent = true })
-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

-- todo-comments
vim.keymap.set("n", "]t", function()
   require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
   require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- You can also specify a list of valid jump keywords

vim.keymap.set("n", "]t", function()
   require("todo-comments").jump_next({ keywords = { "ERROR", "WARNING" } })
end, { desc = "Next error/warning todo comment" })

-- resize
vim.keymap.set("n", "<C-S-k>", [[<cmd>vertical resize +5<cr>]])
vim.keymap.set("n", "<C-S-j>", [[<cmd>vertical resize -5<cr>]])
vim.keymap.set("n", "<C-S-h>", [[<cmd>horizontal resize +2<cr>]])
vim.keymap.set("n", "<C-S-l>", [[<cmd>horizontal resize -2<cr>]])
--tab
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
--harpoon

vim.keymap.set({ "n", "v" }, "<leader>hh", function()
   require("harpoon.ui").toggle_quick_menu()
end, { desc = "harpoon menu" })
vim.keymap.set({ "n", "v" }, "<leader>ha", function()
   require("harpoon.mark").add_file()
end, { desc = "add file to menu" })

vim.keymap.set({ "n", "v" }, "<leader>h1", function()
   require("harpoon.ui").nav_file(1)
end, { desc = "nav file 1" })

vim.keymap.set({ "n", "v" }, "<leader>h2", function()
   require("harpoon.ui").nav_file(2)
end, { desc = "nav file 2" })

vim.keymap.set({ "n", "v" }, "<leader>h3", function()
   require("harpoon.ui").nav_file(3)
end, { desc = "nav file 3" })

vim.keymap.set({ "n", "v" }, "<leader>h4", function()
   require("harpoon.ui").nav_file(4)
end, { desc = "nav file 4" })

vim.keymap.set({ "n", "v" }, "<leader>h5", function()
   require("harpoon.ui").nav_file(5)
end, { desc = "nav file 5" })

vim.keymap.set({ "n", "v" }, "<leader>h6", function()
   require("harpoon.ui").nav_file(6)
end, { desc = "nav file 6" })

vim.keymap.set({ "n", "v" }, "<leader>n", function()
   require("harpoon.ui").nav_next()
end, { desc = "nav next" })

vim.keymap.set({ "n", "v" }, "<leader>b", function()
   require("harpoon.ui").nav_prev()
end, { desc = "nav prev" })
