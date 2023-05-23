local M = {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim", {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make"
    } },
}

function M.config()
    local telescope = require("telescope")
    telescope.setup()
    telescope.load_extension("fzf")
end

return M
