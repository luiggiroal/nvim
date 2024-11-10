-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap.set -- for conciseness

-- use jj to exit insert mode
keymap("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

-- clear search highlights
keymap("n", "<leader>nh", "<cmd>noh<CR><esc>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- save file
keymap({ "i", "x", "n", "s" }, "<A-w>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- better indenting
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- commenting
keymap("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
keymap("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })

-- quit all
keymap("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- buffers
keymap("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
keymap("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- Move Lines
keymap("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
keymap("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
keymap("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
keymap("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- window management
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- window navigation
keymap("n", "<leader>h", "<C-w>h", { desc = "Go to Left Window", remap = true })
keymap("n", "<leader>j", "<C-w>j", { desc = "Go to Lower Window", remap = true })
keymap("n", "<leader>k", "<C-w>k", { desc = "Go to Upper Window", remap = true })
keymap("n", "<leader>l", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
keymap("n", "<C-k>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap("n", "<C-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- tab managment
keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap("n", "<A-l>", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap("n", "<A-h>", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
