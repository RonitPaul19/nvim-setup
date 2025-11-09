return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- options: latte, frappe, macchiato, mocha
      transparent_background = true,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        functions = { "bold" },
        keywords = { "bold" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      integrations = {
        telescope = true,
        nvimtree = true,
        lsp_trouble = true,
        cmp = true,
        gitsigns = true,
        treesitter = true,
      },
    })
    vim.cmd([[colorscheme catppuccin]])
  end,
}
