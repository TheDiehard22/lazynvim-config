return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  {
    "LazyVim/LazyVim", -- bootstrap lazy.nvim, LazyVim and your plugins
    opts = { colorscheme = "catppuccin" },
  },
}
