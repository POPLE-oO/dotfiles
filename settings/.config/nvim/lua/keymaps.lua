-- delete char of right side from cursor with <C-l>
vim.keymap.set("i", "<C-l>", "<Del>", { silent = true, noremap = true })

-- <C-k> to backword enter
vim.keymap.set("i", "<C-k>", "<Esc>O", { silent = true, noremap = true })

-- <C-w>t enter terminal
vim.keymap.set("n", "<C-w><C-t>", ":Openterm<CR>", { silent = true, noremap = true })
-- <C-w><C-w> enter terminal
vim.keymap.set("n", "<C-w><C-w>", ":Openterm<CR>", { silent = true, noremap = true })

-- <C-[> to escape from terminal insert mode
vim.keymap.set("t", "<C-[>", "<C-\\><C-n>", { silent = true, noremap = true })

-- <C-w><C-t> to close terminal
vim.keymap.set("t", "<C-w><C-t>", "<C-\\><C-n>:q<CR>", { silent = true, noremap = true })
-- <C-w><C-w> to close terminal
vim.keymap.set("t", "<C-w><C-w>", "<C-\\><C-n>:q<CR>", { silent = true, noremap = true })

-- <C-w><C-k> move up window
vim.keymap.set("t", "<C-w><C-k>", "<C-\\><C-n><C-w>k", { silent = true, noremap = true })
-- <C-w>k move up window
vim.keymap.set("t", "<C-w>k", "<C-\\><C-n><C-w>k", { silent = true, noremap = true })
