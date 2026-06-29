return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function(_, opts)
        local defaults = require("configs.statusline").config
        local config = vim.tbl_deep_extend("force", defaults, opts)
        require("lualine").setup(config)
    end,
    opts = {
        option = {
            theme = "base16",
            -- theme = "tokyonight"
        },
    },
}
