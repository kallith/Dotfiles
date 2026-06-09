vim.pack.add({
	"https://github.com/ellisonleao/gruvbox.nvim"
})
require("gruvbox").setup({
	contrast = "soft",
})
vim.cmd.colorscheme("gruvbox")

