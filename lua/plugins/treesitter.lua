return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = function(_, opts)
    opts.auto_install = true
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "typescript",
      "dockerfile",
    })
    vim.list_extend(opts.highlight, {
      enable = true,
    })
    vim.list_extend(opts.indent, {
      enable = true,
    })
    return opts
  end,
}
