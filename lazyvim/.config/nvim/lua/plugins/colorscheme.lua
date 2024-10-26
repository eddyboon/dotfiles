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
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme "catppuccin-macchiato"
  --   end,
  -- }
  --
  -- Another onedark colorscheme
  -- {
  --   "navarasu/onedark.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("onedark").setup {
  --       style = "cool",
  --     }
  --     require("onedark").load()
  --   end,
  -- }
  --
  -- Dracula Colorscheme
  -- {
  --   "Mofiqul/dracula.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd("colorscheme dracula")
  --   end,
  -- }
  --
  -- Tokyonight Colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme tokyonight-storm")
    end,
  }
}
