return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("tokyonight").setup {
            cache = false,
            transparent = true,
            style = "night",
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
            on_colors = function(colors)
                colors.bg_statusline = "none"
            end,
            on_highlights = function(highlights, colors)
                highlights.ColorColumn = { bg = colors.bg_highlight }
            end,
        }
        vim.cmd.colorscheme "tokyonight-night"
    end,
    opts = {},
}
