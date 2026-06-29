local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

autocmd("LspAttach", {
    callback = function(args)
        local function opts(desc)
            return { buffer = args.buf, desc = "LSP " .. desc }
        end

        map("n", "gD", vim.lsp.buf.declaration, opts "Go to declaration")
        map("n", "gd", vim.lsp.buf.definition, opts "Go to definition")
        map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts "Add workspace folder")
        map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts "Remove workspace folder")

        map("n", "<leader>wl", function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts "List workspace folders")

        map("n", "<leader>D", vim.lsp.buf.type_definition, opts "Go to type definition")

        map("n", "<leader>b", vim.diagnostic.open_float, opts "show diagnostics under the cursor")
        map({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action, opts "show code actions")
    end,
})
