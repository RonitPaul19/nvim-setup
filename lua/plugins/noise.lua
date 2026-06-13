return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {},
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function(_, opts)
    require("notify").setup({
      background_colour = "NONE"
    })
  end,
}
