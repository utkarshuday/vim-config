return {
    "folke/trouble.nvim",
    opts = {
        win = {
            type = "split",
            position = "right",
            size = 0.3,
        },
    },
    cmd = "Trouble",
    keys = {
        {
            "<leader>xo",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
    },
}
