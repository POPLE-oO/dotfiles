--------------------
--	basic settings
--------------------
vim.opt.tabstop = 4 -- set tab width 4chars
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.number = true -- display line number

-- display hidden chars
vim.opt.listchars = "tab:|> ,trail:･"
vim.opt.list = true

-- enable mouse
vim.opt.mouse = "a"

-- enable clipboard
vim.opt.clipboard:append({ unnamedeplus = true })

--------------------
--	auto commands
--------------------
-- run at startup
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		-- write your own startup commands
	end,
})

--------------------
--	original commands
--------------------
-- open terminal
-- -> <C-w>t <C-w><C-w>に設定しておく
vim.api.nvim_create_user_command("Openterm", function()
	-- ターミナルを画面の下側に起動
	vim.cmd("below split")
	vim.cmd("term")

	-- ターミナルの大きさを高さ10に
	vim.api.nvim_win_set_height(0, 10)

	-- 起動後ターミナル内でinsertモードに
	vim.cmd("startinsert")

	-- ターミナル起動後元のファイルに戻る
	-- vim.cmd("winc k")
end, {})
