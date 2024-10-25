local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
-- local keymap = vim.api.nvim_set_keymap
local keymap = vim.keymap.set

vim.g.mapleader = ";"

keymap("i", "kj", "<ESC>", opts)
keymap("t", "kj", "<C-\\><C-n>", opts)
keymap("n", "k", 'v:count == 0 ? "gk" : "k"', { expr = true, silent = true })
keymap("n", "j", 'v:count == 0 ? "gj" : "j"', { expr = true, silent = true })
keymap("n", "gl", "$", { desc = "Go to end of line", noremap = true, silent = true })
keymap("n", "gh", "^", { desc = "Go to start of line", noremap = true, silent = true })
keymap("n", "tn", ":BufferLineCycleNext<Enter>", opts)
keymap("n", "tp", ":BufferLineCyclePrev<Enter>", opts)
keymap("n", "tt", ":tabnew<Enter>", opts)
keymap("n", "tc", ":BufferLinePickClose<Enter>", opts)
keymap("n", "gt", ":BufferLinePick<Enter>", opts)
keymap("n", "tm", ":tabm<Space>", opts)
keymap("n", "<leader><leader>h", "<C-w>h", opts)
keymap("n", "<leader><leader>l", "<C-w>l", opts)
keymap("n", "<leader><leader>k", "<C-w>k", opts)
keymap("n", "<leader><leader>j", "<C-w>j", opts)
keymap("n", "<leader>ntt", ":NvimTreeToggle<Enter>", opts)
keymap("n", "<leader>tt", ":vsplit term://zsh<CR>", { desc = "Show terminal on right", noremap = true, silent = true })
keymap("n", "<leader>ff", ":Telescope find_files<Enter>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<Enter>", opts)
keymap("n", "<leader>flg", ":Telescope live_grep<Enter>", opts)
keymap(
  "n",
  "<leader>rn",
  "<cmd>lua vim.lsp.buf.rename()<CR>",
  { desc = "Rename Variable", noremap = true, silent = true }
)
keymap("n", "<leader>rs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap(
  "n",
  "<leader>ca",
  "<cmd>lua vim.lsp.buf.code_action()<CR>",
  { desc = "Quick Fixes", noremap = true, silent = true }
)
keymap("n", "<leader>w", ":HopWord<Enter>", opts)
keymap("n", "<leader>l", ":HopLine<Enter>", opts)
keymap(
  "v",
  "<leader>ca",
  "<cmd>lua vim.lsp.buf.range_code_action()<CR>",
  { desc = "Quick Fixes", noremap = true, silent = true }
)
keymap("n", "<leader>kj", "<C-L>", { desc = "Clear Highlight", silent = true })
keymap("n", "<leader>rd", ":Trouble<CR>", opts)
keymap("v", "gl", "$", opts)
keymap("v", "gh", "^", opts)
keymap("n", "<leader>ft", ":ToggleTerm<CR>", { desc = "Open ToggleTerm", noremap = true, silent = true })
