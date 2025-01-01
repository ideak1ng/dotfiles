-- add line numbers
vim.opt.number = true
-- add system clipboard
vim.opt.clipboard = "unnamedplus"
-- set visuals to leader key
vim.opt.showcmd = true
-- auto create directories and files if does not exists
vim.api.nvim_create_augroup('AutoCreateDir', { clear = true })
vim.api.nvim_create_autocmd('BufWritePre', {
	group = 'AutoCreateDir',
	pattern = '*',
	callback = function()
		local dir = vim.fn.expand('<afile>:p:h')
		if vim.fn.isdirectory(dir) == 0 then
			vim.fn.mkdir(dir, 'p')
		end
	end,
})

