local keymap = vim.keymap.set
local opts = { silent = true }
-- Close all windows and exit from Neovim with <leader> and q
keymap("n", "<leader>q", ":qa!<CR>", opts)
-- saving with <leader> and s
keymap("n", "<C-s>", ":w<CR>", opts)

-- buffer
keymap("n", "<C-q>", ":bw<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- reload config
keymap("n", "<leader>r", ":source $MYVIMRC<CR>", opts)

keymap("n", "<leader>wh", "<C-w>h", opts)
keymap("n", "<leader>wj", "<C-w>j", opts)
keymap("n", "<leader>wk", "<C-w>k", opts)
keymap("n", "<leader>wl", "<C-w>l", opts)


-- Telescope
-- <leader> is a space now
local builtin = require("telescope.builtin")
keymap("n", "<leader>ff", builtin.find_files, opts)
keymap("n", "<leader>fg", builtin.live_grep, opts)
keymap("n", "<leader>fb", builtin.buffers, opts)
keymap("n", "<leader>fh", builtin.help_tags, opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>er", ":NvimTreeRefresh<CR>", opts)
keymap("n", "<leader>ef", ":NvimTreeFindFile<CR>", opts) -- search file

-- Terminal
keymap("n", "<leader>tt", ":NeotermToggle<CR>", opts)
keymap("n", "<leader>tx", ":NeotermExit<CR>", opts)

-- Lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
