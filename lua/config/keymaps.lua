-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local discipline = require("machearn.discipline")
discipline.cowboy()
local which_key = require("which-key")

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>rn", ":IncRename ", { desc = "IncRename" })
map("n", "+", "<C-a>", opts)
map("n", "-", "<C-x>", opts)
map("n", "<C-n>", "5j", opts)
map("n", "<C-p>", "5k", opts)
map({ "n", "v", "x" }, ";", function()
  which_key.show(";")
end, { desc = "+Telescope" })
map("n", "<leader>cs", "<cmd>Lspsaga finder<CR>", { desc = "lsp find symbols" })
