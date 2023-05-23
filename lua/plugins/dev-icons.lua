local M = {
    "nvim-tree/nvim-web-devicons"
}
function M.config()
    local cfgs = {
        override = {
            zsh = {
                icon = "",
                color = "#428850",
                cterm_color = "65",
                name = "Zsh",
            },
        },
        color_icons = true,
        default = true,
    }
    require("nvim-web-devicons").setup(cfgs)
end

return M

