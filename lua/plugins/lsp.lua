return {
  "neovim/nvim-lspconfig",
  opts = {
    -- Add the eslint LSP setup here
    servers = {
      eslint = {
        settings = {
          rulesCustomizations = {
            -- Might conflict with prettier
            { rule = "@typescript-eslint/no-misused-promises", severity = "off" },
            { rule = "@typescript-eslint/no-unsafe-argument", severity = "off" },
            { rule = "@typescript-eslint/no-unsafe-assignment", severity = "off" },
            { rule = "import/defaults", severity = "off" },
            { rule = "import/extensions", severity = "off" },
            { rule = "import/namespace", severity = "off" },
            { rule = "import/no-cycle", severity = "off" },
            { rule = "import/no-unresolved", severity = "off" },

            -- Disable some rules that conflict with tsserver warnings
            { rule = "*no-unused-vars", severity = "off" },
          },
          experimental = {},
        },
        capabilities = vim.tbl_extend("keep", require("cmp_nvim_lsp").default_capabilities(), {
          document_formatting = false,
          document_range_formatting = false,
        }),
      },
    },
  },
}
