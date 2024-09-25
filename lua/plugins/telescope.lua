return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, _opts)
    local telescope = require("telescope")

    -- Append additional configurations
    telescope.setup({
      defaults = {
        -- Add directories or files you want to exclude using Lua patterns
        file_ignore_patterns = {
          "node_modules", -- example for excluding node_modules
          ".git", -- example for excluding git folder
          "dist", -- example for excluding dist folder
          "%.jpg", -- example for excluding .jpg files
          "%.png", -- example for excluding .png files
          ".nx", -- example for excluding .nx files
        },
      },
      keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
        {
          "<leader>fp",
          function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
          desc = "Find Plugin File",

        },
      },
    })
  end,
}
