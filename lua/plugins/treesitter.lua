return {
  "nvim-treesitter/nvim-treesitter",

  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "typescript",
      "dockerfile",
    })
    vim.list_extend(opts.highlight, {
      enable = true,
    })
    return opts
  end,
}
