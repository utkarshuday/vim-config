return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "mason.nvim",
            "mason-org/mason-lspconfig.nvim",
            "saghen/blink.cmp",
        },
        config = function()
            require "configs.lspconfig"
        end,
    },
}
