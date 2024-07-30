--------------------
--	basic settings
--------------------
vim.opt.tabstop = 4 		-- set tab width 4chars
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.number = true 		-- display line number

-- display hidden chars
vim.opt.listchars = 'tab:|> ,trail:･'
vim.opt.list = true

-- enable mouse
vim.opt.mouse = 'a'

-- enable clipboard
vim.opt.clipboard:append({unnamedeplus = true})
