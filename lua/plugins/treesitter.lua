return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "vim", "vimdoc", "python", "javascript", "typescript", "html", "css", "json" },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = { enable = true },
    })
  end,
}
