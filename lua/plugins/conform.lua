return { -- Autoformat
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
        formatters_by_ft = {
            c = { "clang-format" },
            cpp = { "clang-format" },
            lua = { "stylua" },
            rust = { "rustfmt", lsp_fallback = "fallback" },
            css = { "prettier" },
            html = { "prettier" },
            toml = { "taplo" },
            javascript = { "prettier" },
            typescript = { "prettier" },
            javascriptreact = { "prettier" },
            typescriptreact = { "prettier" },
            json = { "prettier" },
            markdown = { "prettier" },
            racket = { "racketfmt" },
        },
        -- notify_on_error = false,
        format_on_save = function(bufnr)
            local disable_filetypes = { c = true, cpp = true }
            if disable_filetypes[vim.bo[bufnr].filetype] then
                return nil
            else
                return {
                    timeout_ms = 500,
                    lsp_format = "fallback",
                }
            end
        end,
    },
}
