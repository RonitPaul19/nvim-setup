local keymap = vim.keymap

-- Open config
vim.cmd('nmap <leader>c :e ~/AppData/Local/nvim/init.lua<cr>')

-- Save
vim.cmd('nmap <leader>s :w<cr>')

-- Repeat previous f, t, F or T movement
vim.keymap.set('n', "'", ';')

-- Paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- Redo
vim.keymap.set('n', 'U', '<C-r>')

-- Exit insert mode with jj
keymap.set("i", "jj", "<Esc>")

-- Clear search highlight
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Skip folds (down, up)
vim.cmd('nmap j gj')
vim.cmd('nmap k gk')

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Buffer navigation
keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Next buffer" })

-- Move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Keep cursor centered
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Save file
keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

-- Quit
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- File explorer
keymap.set("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })
