local options = {
  number = true,
  relativenumber = true,
  tabstop = 4,
  shiftwidth = 4,
  smartindent = true,
  mouse = "a",
  showmode = false,
  clipboard = "unnamed",
  swapfile = false,
  splitright = true,
  splitbelow = true,
  ignorecase = true,
  cursorline = true,
  termguicolors = true,
  undofile = true,
  scrolloff = 8,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.api.nvim_create_autocmd("TermOpen", { command = "startinsert", pattern = "*" })
