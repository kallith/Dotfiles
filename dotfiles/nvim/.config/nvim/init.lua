-- require('vim._core.ui2').enable()
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.list = true

vim.opt.listchars = { tab = "| ", trail = "~", extends = ">", precedes = "<", nbsp = "+", }
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.undofile = true

vim.g.mapleader = "\\"
vim.g.localleader = "\\"

--  " syntax and filetype
--  filetype indent on
--  filetype plugin on
--  
--  " keybindings
--  nnoremap K ylpr<CR>  "
