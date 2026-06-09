vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim'
})

require('lualine').setup{
	options = {
		theme = 'auto',
		globalstatus = false,
	}
}
vim.opt.showmode = false
