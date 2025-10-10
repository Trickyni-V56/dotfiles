-- mason
-- mason-lspconfig
-- nvim-lspconfig
return {
    {
        'mason-org/mason.nvim', 
        dependencies = {
            'mason-org/mason-lspconfig.nvim',
        },
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    {
        'mason-org/mason-lspconfig.nvim',
        opts = {
            ensure_installed = {
                "bashls",
                "lua_ls",
                "stylua",
                "qmlls",
            },
        },
    },
    {
        'neovim/nvim-lspconfig',
        event = {"BufReadPre", "BufNewFile"},
    --TODO: keymaps
    --icons
    --
    },

}

