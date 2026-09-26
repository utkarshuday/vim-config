local function map(mode, lhs, rhs, desc)
    local options = { noremap = true, silent = true }
    if desc then
        options.desc = desc
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

map("n", "<Esc>", "<cmd>nohlsearch<CR>", "Clear search highlights")
map("t", "<Esc><Esc>", "<C-\\><C-n>", "Exit terminal mode")

-- Disable arrow keys in normal mode
map("n", "<left>", '<cmd>echo "Use h to move"<CR>')
map("n", "<right>", '<cmd>echo "Use l to move"<CR>')
map("n", "<up>", '<cmd>echo "Use k to move"<CR>')
map("n", "<down>", '<cmd>echo "Use j to move"<CR>')

-- Keybinds to make split navigation easier.
map("n", "<C-h>", "<C-w><C-h>", "Move focus to the left window")
map("n", "<C-l>", "<C-w><C-l>", "Move focus to the right window")
map("n", "<C-j>", "<C-w><C-j>", "Move focus to the lower window")
map("n", "<C-k>", "<C-w><C-k>", "Move focus to the upper window")

-- Move in insert mode
map("i", "<C-h>", "<Left>", "Move left")
map("i", "<C-l>", "<Right>", "Move right")
map("i", "<C-j>", "<Down>", "Move down")
map("i", "<C-k>", "<Up>", "Move up")
map("i", "<C-e>", "<End>", "Move end of line")

-- Keybind to go to netrw
map("n", "<C-n>", "<cmd>:Ex<CR>")

-- Miscellaneous keybindings
map({ "x", "n" }, "<leader>y", '"+y')
map({ "x", "n" }, "<leader>p", '"+p')
map({ "x", "n" }, "<leader>a", "ggVG")
map({ "x", "n" }, "<leader>q", "<cmd>bd<cr>")
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "J", ":m '>+1<CR>gv=gv")

-- Comment lines
vim.keymap.set("n", "<leader>/", "gcc", { remap = true, desc = "Toggle comment" })
vim.keymap.set("v", "<leader>/", "gc", { remap = true, desc = "Toggle comment" })

-- Centre it
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Arrow keybindings
map("n", "H", require("arrow.persist").previous)
map("n", "L", require("arrow.persist").next)
map("n", "<C-s>", require("arrow.persist").toggle)

-- Treesitter text object bindings
vim.keymap.set({ "x", "o" }, "af", function()
    require("nvim-treesitter-textobjects.select").select_textobject("@function.outer", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "if", function()
    require("nvim-treesitter-textobjects.select").select_textobject("@function.inner", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "ac", function()
    require("nvim-treesitter-textobjects.select").select_textobject("@class.outer", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "ic", function()
    require("nvim-treesitter-textobjects.select").select_textobject("@class.inner", "textobjects")
end)

-- Telescope keybindings
local telescope_builtin = require "telescope.builtin"
map("n", "<leader>tp", function()
    telescope_builtin.git_files {
        use_git_root = false,
        show_untracked = true,
    }
end, "Telescope: find all files in cwd")
map(
    "n",
    "<leader>ta",
    "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
    "Telescope find all files"
)
map("n", "<leader>tc", telescope_builtin.git_commits, "Telescope git commits")
map("n", "<leader>ts", telescope_builtin.git_status, "Telescope git status")
map("n", "<leader>tg", telescope_builtin.live_grep, "Telescope live grep")
map("n", "<leader>tb", telescope_builtin.buffers, "Telescope buffers")

map("n", "<leader>x", "<cmd>!chmod +x %<CR>")

-- Flutter keybindings
map("n", "<leader>fs", "<cmd>FlutterRun<cr>") -- start the project
map("n", "<leader>fr", "<cmd>FlutterReload<cr>") -- hot reload
map("n", "<leader>fR", "<cmd>FlutterRestart<cr>") -- hot restart
map("n", "<leader>fq", "<cmd>FlutterQuit<cr>") -- quit
map("n", "<leader>fd", "<cmd>FlutterDevices<cr>")
map("n", "<leader>fe", "<cmd>FlutterEmulators<cr>")
map("n", "<leader>fo", "<cmd>FlutterOutlineToggle<cr>")
map("n", "<leader>fl", "<cmd>FlutterLogToggle<cr>")
map("n", "<leader>fp", "<cmd>FlutterPubGet<cr>")

-- Tmux keybindings
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>")
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>")
map("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<CR>")
