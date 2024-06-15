local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = ";"

keymap("i", "kj", "<ESC>", opts)
keymap("t", "kj", "<C-\\><C-n>", opts)
keymap("n", "k", "v:count == 0 ? \"gk\" : \"k\"", { expr = true, silent = true })
keymap("n", "j", "v:count == 0 ? \"gj\" : \"j\"", { expr = true, silent = true })
keymap("n", "gl", "$", opts)
keymap("n", "gh", "^", opts)
keymap("n", "tn", ":tabnext<Enter>", opts)
keymap("n", "tp", ":tabp<Enter>", opts)
keymap("n", "tt", ":tabnew<Enter>", opts)
keymap("n", "tc", ":tabclose<Enter>", opts)
keymap("n", "tm", ":tabm<Space>", opts)
keymap("n", "<leader><leader>h", "<C-w>h", opts)
keymap("n", "<leader><leader>l", "<C-w>l", opts)
keymap("n", "<leader><leader>k", "<C-w>k", opts)
keymap("n", "<leader><leader>j", "<C-w>j", opts)
keymap("n", "<leader>ntt", ":NvimTreeToggle<Enter>", opts)
keymap("n", "<leader>tt", ":vsplit term://zsh<CR>", opts)
keymap("n", "<leader>ff", ":Telescope find_files<Enter>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<Enter>", opts)
keymap("n", "<leader>flg", ":Telescope live_grep<Enter>", opts)
keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "<leader>rs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "<leader>w", ":HopWord<Enter>", opts)
keymap("n", "<leader>l", ":HopLine<Enter>", opts)
keymap("v", "<leader>ca", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", opts)
keymap("n", "<leader>kj", "<C-L>", term_opts)
keymap("n", "<leader>rd", ":Trouble<CR>", opts)
keymap("v", "gl", "$", opts)
keymap("v", "gh", "^", opts)
