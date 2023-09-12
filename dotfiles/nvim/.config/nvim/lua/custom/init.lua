local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

local g = vim.g
local opt = vim.opt

-- revert to nvim defaults
g.mapleader = nil
opt.clipboard = nil
opt.whichwrap = nil
opt.shortmess = opt.shortmess._info.default
opt.shortmess:append("c")

-- and personal preferences

-- Indenting
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

-- Undo/backup/swap directories
vim.opt.fileencoding = "utf-8"
vim.opt.backupdir = vim.fn.expand("~/.local/state/nvim/backup//")
vim.opt.backup = true -- ~/.local/state/nvim/backup//
vim.opt.swapfile = true -- ~/.local/state/nvim/swap//
vim.opt.undofile = true -- ~/.local/state/nvim/undo//
--

-- text rendering
vim.opt.list = true
vim.opt.listchars = {
    tab = "| ",
    trail = "~",
    extends = ">",
    precedes = "<",
    nbsp = "+",
}
-- minimum lines below/above 
vim.opt.scrolloff = 8
-- minimum columns left/right
vim.opt.sidescrolloff = 8


