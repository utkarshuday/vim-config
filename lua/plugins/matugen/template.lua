local ret = {
    bg = "#24283b",
    bg_dark = "#1f2335",
    bg_dark1 = "#1b1e2d",
    bg_highlight = "#292e42",
    blue = "#7aa2f7",
    blue0 = "#3d59a1",
    blue1 = "#2ac3de",
    blue2 = "#0db9d7",
    blue5 = "#89ddff",
    blue6 = "#b4f9f8",
    blue7 = "#394b70",
    comment = "#565f89",
    cyan = "#7dcfff",
    dark3 = "#545c7e",
    dark5 = "#737aa2",
    fg = "#c0caf5",
    fg_dark = "#a9b1d6",
    fg_gutter = "#3b4261",
    green = "#9ece6a",
    green1 = "#73daca",
    green2 = "#41a6b5",
    magenta = "#bb9af7",
    magenta2 = "#ff007c",
    orange = "#ff9e64",
    purple = "#9d7cd8",
    red = "#f7768e",
    red1 = "#db4b4b",
    teal = "#1abc9c",
    terminal_black = "#414868",
    yellow = "#e0af68",
    git = {
        add = "#449dab",
        change = "#6183bb",
        delete = "#914c54",
    },
}

local ret = {
    -- Foreground and Background
    fg = "{{colors.on_surface.default.hex}}", -- main foreground
    bg = "{{colors.surface.default.hex}}", -- main background

    bg_dark = "{{colors.surface_container_high.default.hex}}",
    bg_dark1 = "{{colors.surface_container_highest.default.hex}}",

    blue = "{{colors.primary.default.hex}}",
    blue0 = "{{colors.primary.default.hex | lighten: -15 | saturate: -30}}",
    blue1 = "{{colors.tertiary.default.hex}}",
    blue2 = "{{colors.tertiary.default.hex | lighten: -10 | saturate: 15}}",
    blue5 = "{{colors.secondary.default.hex}}",
    blue6 = "{{colors.secondary.default.hex | saturate: -20}}",
    blue7 = "{{colors.primary.default.hex | lighten: -30 | saturate: -50}}",

    green = "{{colors.primary.default.hex | set_hue: 90}}",
    cyan = "{{colors.primary.default.hex | set_hue: 195}}",
    teal = "{{colors.primary.default.hex | set_hue: 170}}",
    purple = "{{colors.primary.default.hex | set_hue: 270}}",
    magenta = "{{colors.primary.default.hex | set_hue: 300}}",
    orange = "{{colors.primary.default.hex | set_hue: 25}}",
    yellow = "{{colors.primary.default.hex | set_hue: 40}}",

    green1 = "{{colors.primary.default.hex | set_hue: 160 | saturate: -10}}",
    green2 = "{{colors.primary.default.hex | set_hue: 185 | darken: 10}}",
    magenta2 = "{{colors.primary.default.hex | set_hue: 330 | saturate: 30 | lighten: 10}}",

    red = "{{colors.error.default.hex}}",
    red1 = "{{colors.error_container.default.hex}}",

    -- git = {
    --     add = "{{colors.secondary.default.hex}}",
    --     change = "{{colors.tertiary.default.hex}}",
    --     delete = "{{colors.error.default.hex}}",
    -- },
}
return ret
