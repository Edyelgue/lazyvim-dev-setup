return {
  {
    "catppuccin/nvim",
    opts = {
      transparent_background = true,
      integrations = {
        treesitter = true,
        telescope = true,
        cmp = true,
        nvimtree = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
