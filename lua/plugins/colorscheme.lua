return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        functions = { "bold" },
        keywords = { "bold" },
      },
      integrations = {
        telescope = true,
        nvimtree = true,
        lsp_trouble = true,
        cmp = true,
        gitsigns = true,
        treesitter = true,
      },
      custom_highlights = function(colors)
        return {
          -- make telescope windows fully transparent
          TelescopeNormal = { bg = "NONE" },
          TelescopeBorder = { bg = "NONE" },
          TelescopePromptNormal = { bg = "NONE" },
          TelescopePromptBorder = { bg = "NONE" },
          TelescopeResultsNormal = { bg = "NONE" },
          TelescopeResultsBorder = { bg = "NONE" },
          TelescopePreviewNormal = { bg = "NONE" },
          TelescopePreviewBorder = { bg = "NONE" },
          TelescopeTitle = { bg = "NONE" },
          TelescopePromptTitle = { bg = "NONE" },
          TelescopeResultsTitle = { bg = "NONE" },
          TelescopePreviewTitle = { bg = "NONE" },
        }
      end,
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
