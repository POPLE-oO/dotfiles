-- Esc to jj
vim.keymap.set("i", "jj", "<Esc>", { silent = true, noremap = true})

-- delete char of right side from cursor with <C-l>
vim.keymap.set("i", "<C-l>", "<Del>", {silent = true, noremap = true})
