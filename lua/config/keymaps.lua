-- lua/config/keymaps.lua

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })

-- Splits
vim.keymap.set("n", "<leader>|", "<C-w>v", { desc = "Split vertical" })
vim.keymap.set("n", "<leader>-", "<C-w>s", { desc = "Split horizontal" })

-- Buffer cycling
vim.keymap.set("n", "<S-l>", ":bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", ":bprevious<cr>", { desc = "Previous buffer" })
