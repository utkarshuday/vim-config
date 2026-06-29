return {
    "nvim-telescope/telescope.nvim",
    version = "v0.2.1",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    opts = {
        defaults = {
            prompt_prefix = "   ",
            sorting_strategy = "ascending",
            layout_config = {
                horizontal = {
                    prompt_position = "top",
                    preview_width = 0.55,
                },
                width = 0.87,
                height = 0.80,
            },
        },
    },
}
