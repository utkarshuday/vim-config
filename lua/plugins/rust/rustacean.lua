return {
    "mrcjkb/rustaceanvim",
    version = "^9",
    lazy = false,
    config = function()
        vim.g.rustaceanvim = {
            server = {
                on_attach = function(_, bufnr)
                    vim.keymap.set("n", "<leader>oc", function()
                        vim.cmd.RustLsp "openCargo"
                    end, { silent = true, buffer = bufnr })

                    vim.keymap.set("n", "<leader>em", function()
                        vim.cmd.RustLsp "expandMacro"
                    end, { silent = true, buffer = bufnr })
                end,
            },
        }
    end,
}
