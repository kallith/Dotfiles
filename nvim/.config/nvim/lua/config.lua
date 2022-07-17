require'nvim-treesitter.configs'.setup{
    ensure_installed = "all",
    sync_install = false,
    auto_install = true,
    ignore_install = {},
    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },
}

require'nvim-lsp-installer'.setup{}

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
--
-- bash
require'lspconfig'.bashls.setup{}
-- latex markdown and more
require'lspconfig'.ltex.setup{}
-- python
require'lspconfig'.pyright.setup{}
-- sql
require'lspconfig'.sqlls.setup{}
-- lua
require'lspconfig'.sumneko_lua.setup{}
-- vim
require'lspconfig'.vimls.setup{}
