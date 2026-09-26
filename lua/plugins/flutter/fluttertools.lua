return {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        dev_log = {
            enabled = true,
            open_cmd = "80vsplit",
            focus_on_open = false,
        },
    },
    config = true,
}
