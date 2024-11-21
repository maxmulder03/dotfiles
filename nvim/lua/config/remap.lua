vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text up and down with cap j & k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J stays in place
vim.keymap.set("n", "J", "mzJ`z")

-- Jump up and down page with cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search terms stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- ooooohhh yes paste good
vim.keymap.set("x", "<leader>p", [["_dP]])

-- super yank copy to outside clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- super yank entire file to outside clipboard
vim.keymap.set("n", "<leader>yf", 'ggVG"+y')

--
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- find and replace the word youre on!
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- basically chmod +x in a file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>gg", vim.cmd.LazyGit)

vim.keymap.set("n", "<leader>w", "<C-w>")

-- Window Management Shortcuts
-- note: g is being used to remain consistent with wezterm window managment configurations
vim.keymap.set("n", "<leader>gh", "<C-w>h")
vim.keymap.set("n", "<leader>gj", "<C-w>j")
vim.keymap.set("n", "<leader>gk", "<C-w>k")
vim.keymap.set("n", "<leader>gl", "<C-w>l")
