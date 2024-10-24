return {
  -- OneDark Pro colorscheme
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd("colorscheme onedark")
  --   end,
  -- }
  --
  -- Catppuccin colorscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin-frappe"
    end,
  }
}
