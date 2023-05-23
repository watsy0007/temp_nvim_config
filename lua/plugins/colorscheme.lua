local M = {
    "projekt0n/github-nvim-theme",
    lazy = true,
}

function M.config()
    local theme = require("github-theme")
    theme.setup()
end

return M
