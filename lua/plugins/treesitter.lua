return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        event = { "VeryLazy" },
        cmd = { "TSUpdate", "TSInstall", "TSLog", "TSUninstall" },
        build = ":TSUpdate",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        config = function(_, opts)
            local TS = require "nvim-treesitter"
            TS.setup()
            TS.install(opts.ensure_installed)
            vim.api.nvim_create_autocmd("FileType", {
                group = vim.api.nvim_create_augroup("TreesitterSetup", { clear = true }),
                callback = function(event)
                    local lang = vim.treesitter.language.get_lang(event.match)
                    if not lang or not vim.treesitter.language.add(lang) then
                        return
                    end
                    vim.treesitter.start()
                    vim.opt.foldlevel = 99
                    vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
                    vim.wo.foldmethod = "expr"
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end,
            })
        end,
        opts = {
            ensure_installed = {
                "vim",
                "racket",
                "lua",
                "vimdoc",
                "html",
                "css",
                "rust",
                "toml",
                "javascript",
                "typescript",
                "tsx",
                "json",
                "c",
                "cpp",
                "go",
            },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        branch = "main",
        init = function()
            vim.g.no_plugin_maps = true
        end,
        config = function(_, opts)
            -- put your config here
            require("nvim-treesitter-textobjects").setup(opts)
        end,
        opts = {
            select = {
                lookahead = true,
                selection_modes = {
                    ["@parameter.outer"] = "v", -- charwise
                    ["@function.outer"] = "V", -- linewise
                    ["@class.outer"] = "V", -- linewise
                },
                include_surrounding_whitespace = false,
            },
        },
    },
}
