return {
    {
        "saghen/blink.cmp",
        dependencies = {
            {
                "L3MON4D3/LuaSnip",
                version = "v2.*",
                dependencies = "rafamadriz/friendly-snippets",
                config = function()
                    require("luasnip.loaders.from_vscode").lazy_load()
                end,
            },
        },
        version = "1.*",
        event = { "InsertEnter", "CmdLineEnter" },
        opts = {
            keymap = {
                preset = "default",
                ["<C-e>"] = false,
                ["<C-h>"] = { "hide", "fallback" },
            },
            appearance = {
                nerd_font_variant = "normal",
            },
            completion = { documentation = { auto_show = true } },
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
                providers = {
                    buffer = { score_offset = -5 },
                },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" },
            snippets = { preset = "luasnip" },
            cmdline = {
                keymap = { preset = "inherit" },
                completion = { menu = { auto_show = true } },
            },
        },
        opts_extend = { "sources.default" },
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "InsertEnter",
        opts = {
            doc_lines = 0,
            bind = true,
            max_height = 3,
            handler_opts = {
                border = "single",
            },
        },
        -- or use config
        config = function(_, opts)
            local lsp_signature = require "lsp_signature"
            lsp_signature.setup(opts)
            vim.keymap.set({ "i", "x" }, "<C-p>", function()
                lsp_signature.toggle_float_win()
            end, { silent = true, noremap = true, desc = "toggle signature" })
        end,
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
        opts = {},
    },
}
