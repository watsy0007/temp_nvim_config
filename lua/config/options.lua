local cmd = vim.cmd
local opt = vim.opt

-- Global variables
local g = vim.g
local s = vim.s
local indent = 4

cmd([[
	filetype plugin indent on
]])


-- Disable builtin plugins
local disabled_built_ins = { "2html_plugin", "getscript", "getscriptPlugin", "gzip", "logipat", "netrw", "netrwPlugin",
    "netrwSettings", "netrwFileHandlers", "matchit", "tar", "tarPlugin", "rrhelper",
    "spellfile_plugin", "vimball", "vimballPlugin", "zip", "zipPlugin", "tutor", "rplugin",
    "synmenu", "optwin", "compiler", "bugreport", "ftplugin" }

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end

-- Colorscheme
-- By default, use rose-pine
cmd.colorscheme("github_dark")
