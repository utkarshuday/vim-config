local x = vim.diagnostic.severity

vim.diagnostic.config {
    severity_sort = true,
    virtual_text = { prefix = "" },
    signs = { text = { [x.ERROR] = "󰅙", [x.WARN] = "", [x.INFO] = "󰋼", [x.HINT] = "󰌵" } },
    underline = true,
    float = { border = "single" },
}

vim.lsp.inlay_hint.enable()
