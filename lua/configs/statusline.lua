local M = {}

local stbufnr = function()
    return vim.api.nvim_win_get_buf(vim.g.statusline_winid or 0)
end

local lsp_component = function()
    if rawget(vim, "lsp") then
        for _, client in ipairs(vim.lsp.get_clients()) do
            if client.attached_buffers[stbufnr()] then
                return (vim.o.columns > 100 and " LSP ~ " .. client.name .. " ") or " LSP "
            end
        end
    end

    return ""
end

local cwd_component = function()
    local name = vim.fn.getcwd()
    name = (name:match "([^/\\]+)[/\\]*$" or name) .. " "
    return (vim.o.columns > 85 and name) or ""
end

local hide_in_width = function()
    return vim.fn.winwidth(0) > 120
end

local arrow = function()
    local statusline = require "arrow.statusline"
    return statusline.text_for_statusline_with_icons()
end

M.config = {
    options = {
        always_divide_middle = false,
    },
    sections = {
        lualine_a = { { "mode", icon = "", color = { gui = "bold" } } },
        lualine_b = {
            {
                "filename",
                symbols = { unnamed = "[Empty]" },
            },
            arrow,
            { "branch", icon = "" },
        },
        lualine_c = {
            {
                "diff",
                symbols = {
                    added = " ",
                    modified = " ",
                    removed = " ",
                },
                cond = hide_in_width,
                separator = "",
            },
        },
        lualine_x = {
            {
                lsp_component,
                icon = "",
            },
        },
        lualine_y = {
            "diagnostics",
            "filetype",
            {
                cwd_component,
                icon = "󰉋",
            },
        },
        lualine_z = {
            "location",
        },
    },
}

return M
