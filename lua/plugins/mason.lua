return {
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_pending = " ",
                    package_installed = " ",
                    package_uninstalled = " ",
                },
            },
        },
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            automatic_enable = {
                exclude = { "stylua", "rust_analyzer" },
            },
            ensure_installed = {},
        },
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-tool-installer").setup {
                ensure_installed = {
                    -- LSPs
                    "lua-language-server",
                    "bash-language-server",
                    "rust-analyzer",
                    "clangd",
                    "taplo",

                    -- Formatters & Linters
                    "stylua",
                    "clang-format",
                    "shfmt",
                },
                auto_update = true,
                run_on_start = true,
                start_delay = 3000,
                debounce_hours = 5,
            }
        end,
    },
}
