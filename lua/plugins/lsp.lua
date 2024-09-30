return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {},
      dockerfile = {},
      eslint = {
        --   settings = {
        --     rulesCustomizations = {
        --       -- Might conflict with prettier
        --       { rule = "@typescript-eslint/no-misused-promises", severity = "off" },
        --       { rule = "@typescript-eslint/no-unsafe-argument", severity = "off" },
        --       { rule = "@typescript-eslint/no-unsafe-assignment", severity = "off" },
        --       { rule = "import/defaults", severity = "off" },
        --       { rule = "import/extensions", severity = "off" },
        --       { rule = "import/namespace", severity = "off" },
        --       { rule = "import/no-cycle", severity = "off" },
        --       { rule = "import/no-unresolved", severity = "off" },

        --       -- Disable some rules that conflict with tsserver warnings
        --       { rule = "*no-unused-vars", severity = "off" },
        --     },
        --     experimental = {},
        --   },
        capabilities = vim.tbl_extend("keep", require("cmp_nvim_lsp").default_capabilities(), {
          document_formatting = false,
          document_range_formatting = false,
        }),
      },
    },
  },
  setup = {
    eslint = function()
      require("lazyvim.util").lsp.on_attach(function(client)
        if client.name == "eslint" then
          client.server_capabilities.documentFormattingProvider = true
        elseif client.name == "tsserver" then
          client.server_capabilities.documentFormattingProvider = false
        end
      end)
    end,
  },
}
