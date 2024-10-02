-- return {
--   {
--     "neovim/nvim-lspconfig",
--     lazy = false,
--     opts = {
--       servers = {
--         tailwindcss = {},
--         dockerls = {},
--         eslint = {
--           capabilities = vim.tbl_extend("keep", require("cmp_nvim_lsp").default_capabilities(), {
--             document_formatting  = false,
--             document_range_formatting = false,
--           }),
--         },
--       },
--     },
--     setup = {
--       eslint = function()
--         require("lazyvim.util").lsp.on_attach(function(client)
--           if client.name == "eslint" then
--             client.server_capabilities.documentFormattingProvider = true
--           elseif client.name == "tsserver" then
--             client.server_capabilities.documentFormattingProvider = false
--           end
--         end)
--       end,
--     },
--   },
-- }

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    opts = {
      diagnostics = {
        underline = true,
        update_in_insert = false,
      },
      document_highlight = {
        enabled = true,
      },
      -- codelens = {
      --   enabled = true,
      -- },
      servers = {
        dockerls = {},
        tailwindcss = {},
        tsserver = {
          settings = {},
        },
        html = {},
        -- angularls = {
        --   settings = {
        --     root_dir = "nx.json",
        --   },
        -- },
        lua_ls = {},
      },
    },
    setup = {
      -- angularls = function()
      --   local lspconfig = require("lspconfig")

      --   return {
      --     cmd = { "ngserver", "--stdio", "--tsProbeLocations", "", "--ngProbeLocations", "" },
      --     filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx" },
      --     root_dir = lspconfig.util.root_pattern("angular.json", "package.json", ".git"),
      --     on_new_config = function(new_config, new_root_dir)
      --       new_config.cmd = {
      --         "ngserver",
      --         "--stdio",
      --         "--tsProbeLocations",
      --         new_root_dir,
      --         "--ngProbeLocations",
      --         new_root_dir,
      --       }
      --     end,
      --   }
      -- end,
    },
    -- config = function()
    --   local capabilities = require("cmp_nvim_lsp").default_capabilities()
    --   local lspconfig = require("lspconfig")

    --   lspconfig.tsserver.setup({
    --     capabilities = capabilities,
    --   })
    --   lspconfig.angularls.setup({
    --     root_dir = root_pattern("nx.json"),
    --   })
    --   lspconfig.html.setup({
    --     capabilities = capabilities,
    --   })
    --   lspconfig.lua_ls.setup({
    --     capabilities = capabilities,
    --   })
    --   lspconfig.tsserver.setup({
    --     cmd = { "typescript-language-server", "--stdio" },
    --     filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
    --     root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
    --     settings = { documentFormatting = false },
    --   })
    --   vim.keymap.set("n", "k", vim.lsp.buf.hover, {})
    --   vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
    --   vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
    --   vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    -- end,
  },
}
