vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>n", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>q", ":q<CR>", { desc = "Exit file" })
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>o", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- spit resize
keymap.set("n", "<leader>>", "10<C-w>>", { desc = "Rezide window >" })
keymap.set("n", "<leader><", "10<C-w><", { desc = "Rezide window >" })

-- Move single line in Normal mode
vim.keymap.set("n", "<leader>j", ":m .+1<CR>==", { desc = "Move current line down" })
vim.keymap.set("n", "<leader>k", ":m .-2<CR>==", { desc = "Move current line up" })

-- Move selected lines in Visual mode
vim.keymap.set("v", "<leader>j", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "<leader>k", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- Stay in Visual mode after indenting
vim.keymap.set("v", ">", ">gv", { desc = "Indent and stay in Visual mode" })
vim.keymap.set("v", "<", "<gv", { desc = "Un-indent and stay in Visual mode" })
