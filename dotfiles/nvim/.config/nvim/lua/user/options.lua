-- UI
vim.opt.mouse = "a"
vim.opt.termguicolors = true
vim.opt.guifont = "monospace:h17"
-- show line number column
vim.opt.number = true
-- minimum width of line number column
vim.opt.numberwidth = 3
-- highlight current line
vim.opt.cursorline = true
-- always show sign column, errors and so on.
vim.opt.signcolumn = "yes"
-- only show status line in last window.
vim.opt.laststatus = 3
-- We have mode from lualine
vim.opt.showmode = false
-- maximum 
vim.opt.pumheight = 10
-- hide all the completion messages, e.g. "-- XXX completion (YYY)", "match 1 of 2", "The only match", "Pattern not found"
vim.opt.shortmess:append("c")

-- Text rendering
vim.opt.list = true
vim.opt.listchars = {
    tab = "| ",
    trail = "~",
    extends = ">",
    precedes = "<",
    nbsp = "+",
}
vim.opt.wrap = true
-- minimum lines below/above 
vim.opt.scrolloff = 8
-- minimum columns left/right
vim.opt.sidescrolloff = 8

-- indentation
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- search options
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- other editor behaviour
vim.opt.splitbelow = true
vim.opt.splitright = true
-- treat dashes as part of word.
vim.opt.iskeyword:append("-")
-- show completion menu even if only one match. Do not select from menu.
vim.opt.completeopt = { "menuone", "noselect" }

-- Undo/backup/swap directories
vim.opt.fileencoding = "utf-8"
vim.opt.backupdir = vim.fn.expand("~/.local/state/nvim/backup//")
vim.opt.backup = true -- ~/.local/state/nvim/backup//
vim.opt.swapfile = true -- ~/.local/state/nvim/swap//
vim.opt.undofile = true -- ~/.local/state/nvim/undo//

-- faster completion (4000ms default)
vim.opt.updatetime = 300
