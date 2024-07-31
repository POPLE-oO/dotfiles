--------------------
-- super hjkl
--------------------
-- shift-j to 3j
vim.keymap.set("n", "J", "3j", { silent = true, noremap = true })

-- shift-k to 3k
vim.keymap.set("n", "K", "3k", { silent = true, noremap = true })

-- shift-h to 3h
vim.keymap.set("n", "H", "3h", { silent = true, noremap = true })

-- shift-l to 3l
vim.keymap.set("n", "L", "3l", { silent = true, noremap = true })

--------------------
-- backword commands
--------------------
-- delete char of right side from cursor with <C-l>
vim.keymap.set("i", "<C-l>", "<Del>", { silent = true, noremap = true })

-- <C-k> to backword enter
vim.keymap.set("i", "<C-k>", "<Esc>O", { silent = true, noremap = true })

--------------------
-- TERMINAL
--------------------
--------------------
-- entry terminal
--------------------
-- <C-w>t enter terminal
vim.keymap.set("n", "<C-w><C-t>", ":Openterm<CR>", { silent = true, noremap = true })
-- <C-w><C-w> enter terminal
vim.keymap.set("n", "<C-w><C-w>", ":Openterm<CR>", { silent = true, noremap = true })

--------------------
-- finish terminal
--------------------
-- <C-w><C-t> to close terminal insert
vim.keymap.set("t", "<C-w><C-t>", "<C-\\><C-n>:q<CR>", { silent = true, noremap = true })
-- <C-w><C-w> to close terminal insert
vim.keymap.set("t", "<C-w><C-w>", "<C-\\><C-n>:q<CR>", { silent = true, noremap = true })

--------------------
-- inside terminal
--------------------
-- <C-[> to escape from terminal insert mode
vim.keymap.set("t", "<C-[>", "<C-\\><C-n>", { silent = true, noremap = true })

-- <C-w><C-k> move up window
vim.keymap.set("t", "<C-w><C-k>", "<C-\\><C-n><C-w>k", { silent = true, noremap = true })
-- <C-w>k move up window
vim.keymap.set("t", "<C-w>k", "<C-\\><C-n><C-w>k", { silent = true, noremap = true })
