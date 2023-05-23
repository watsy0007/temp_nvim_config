local M = {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
        opt = true
    },
}

function M.config()
    local tree = require("nvim-tree")
    local tree_cb = require("nvim-tree.config").nvim_tree_callback

    local renderer = {
        icons = {
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    arrow_open = "",
                    arrow_closed = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "U",
                    deleted = "",
                    ignored = "◌",
                },
            },
        },
    }

    local diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    }
    local view = {
        width = 30,
        side = "left",
        mappings = {
            list = {
                { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
                { key = "h",                  cb = tree_cb "close_node" },
                { key = "v",                  cb = tree_cb "vsplit" },
            },
        },
    }
    local config = {
        renderer = renderer,
        diagnostics = diagnostics,
        view = view
    }
    tree.setup(config)
end

return M
