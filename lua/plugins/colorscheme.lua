return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "rose-pine/neovim", name = "rose-pine" },

  {
    "LazyVim/LazyVim", -- bootstrap lazy.nvim, LazyVim and your plugins
    opts = { colorscheme = "catppuccin" },
  },

  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },
}
