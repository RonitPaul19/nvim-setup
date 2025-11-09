return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      -- Get the Lua LSP configuration
      local lua_ls_config = vim.lsp.config.lua_ls

      -- Customize it (just edit its table fields)
      lua_ls_config.settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = { checkThirdParty = false },
          completion = { callSnippet = "Replace" },
        },
      }

      -- Finally start the LSP
      vim.lsp.start(lua_ls_config)
    end,
  },
}
