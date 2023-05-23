local M = {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn"t work on Windows
    build = ":TSUpdate",
    dependencies = { {
        "nvim-treesitter/nvim-treesitter-textobjects",
        init = function()
            -- PERF: no need to load the plugin, if we only need its queries for mini.ai
            local plugin = require("lazy.core.config").spec.plugins["nvim-treesitter"]
            local opts = require("lazy.core.plugin").values(plugin, "opts", false)
            local enabled = false
            if opts.textobjects then
                for _, mod in ipairs({ "move", "select", "swap", "lsp_interop" }) do
                    if opts.textobjects[mod] and opts.textobjects[mod].enable then
                        enabled = true
                        break
                    end
                end
            end
            if not enabled then
                require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textobjects")
            end
        end
    } },
}

function M.config()
    local ensure_installed = {
        "python", "dockerfile", "json", "yaml", "markdown", "html", "scss", "css", "vim", "elixir"
    }
    local highlight = {
        enable = true,
        use_languagetree = true
    }
    local cfgs = {
        ensure_installed = ensure_installed,
        highlight = highlight,
        indent = {
            enable = true
        },
        autotag = {
            enable = true
        },
        context_commentstring = {
            enable = true,
            enable_autocmd = false
        },
        refactor = {
            highlight_definitions = {
                enable = true
            },
            highlight_current_scope = {
                enable = false
            }
        }
    }
    require("nvim-treesitter.configs").setup(cfgs)
end

return M
