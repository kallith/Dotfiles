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

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
require'nvim-lsp-installer'.setup{}

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<leader>p', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<leader>n', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- -- Enable completion triggered by <c-x><c-o>
    -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    --
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<leader>=', vim.lsp.buf.formatting, bufopts)
end

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}

-- bash
require'lspconfig'.bashls.setup{
    on_attach = on_attach, flags = lsp_flags,
}
-- latex markdown and more
require'lspconfig'.ltex.setup{
    on_attach = on_attach, flags = lsp_flags,
}
-- python
require'lspconfig'.pyright.setup{
    on_attach = on_attach, flags = lsp_flags,
}
-- require'lspconfig'.pylsp.setup
-- sql
require'lspconfig'.sqlls.setup{
    on_attach = on_attach, flags = lsp_flags,
}
-- lua
require'lspconfig'.sumneko_lua.setup{
    on_attach = on_attach, flags = lsp_flags,
    settings = {
        Lua = {
            diagnostics = { globals = {'vim'} },
            telemetry = { enable = false },
            version = 'LuaJIT',
            workspace = { library = vim.api.nvim_get_runtime_file("", true)},
        }
    }
}
-- vim
require'lspconfig'.vimls.setup{
    on_attach = on_attach, flags = lsp_flags,
}
