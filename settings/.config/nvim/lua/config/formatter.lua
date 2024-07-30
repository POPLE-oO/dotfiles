-- auto format after saving
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({

	logging = true,
	log_level = vim.log.levels.WARN,

	-- set formatters
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},
	},
})
