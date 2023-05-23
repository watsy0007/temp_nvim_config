local M = {
    "itmecho/neoterm.nvim",
}

function M.config()
    local term = require("neoterm")
    local cfgs = {
        clear_on_run = true,
        mode = "horizontal",
        noinsert = false

    }
    term.setup(cfgs)
end

return M
