return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,

      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
            ["ai"] = "@conditional.outer",
            ["ii"] = "@conditional.inner",
            ["al"] = "@loop.outer",
            ["il"] = "@loop.inner",
            ["am"] = "@call.outer",
            ["im"] = "@call.inner",
            ["ab"] = "@block.outer",
            ["ib"] = "@block.inner",
            ["aa"] = "@parameter.outer",
            ["ia"] = "@parameter.inner",
            ["a/"] = "@comment.outer",
            ["i/"] = "@comment.inner",
            ["as"] = "@statement.outer",
            ["ga="] = "@assignment.outer",
            ["gi="] = "@assignment.inner",
            ["gl="] = "@assignment.lhs",
            ["gr="] = "@assignment.rhs",
            ["ar"] = "@return.outer",
            ["ir"] = "@return.inner",
          },
        },

        move = {
          enable = true,
          goto_next_start = {
            ["]f"] = "@function.outer",
            ["]c"] = "@class.outer",
            ["]i"] = "@conditional.outer",
            ["]l"] = "@loop.outer",
            ["]m"] = "@call.outer",
            ["]b"] = "@block.outer",
            ["]a"] = "@parameter.inner",
            ["]/"] = "@comment.outer",
            ["]s"] = "@statement.outer",
            ["]="] = "@assignment.outer",
            ["]r"] = "@return.outer",
          },
          goto_next_end = {
            ["]F"] = "@function.outer",
            ["]C"] = "@class.outer",
            ["]I"] = "@conditional.outer",
            ["]L"] = "@loop.outer",
            ["]M"] = "@call.outer",
            ["]B"] = "@block.outer",
            ["]A"] = "@parameter.inner",
          },
          goto_previous_start = {
            ["[f"] = "@function.outer",
            ["[c"] = "@class.outer",
            ["[i"] = "@conditional.outer",
            ["[l"] = "@loop.outer",
            ["[m"] = "@call.outer",
            ["[b"] = "@block.outer",
            ["[a"] = "@parameter.inner",
            ["[/"] = "@comment.outer",
            ["[s"] = "@statement.outer",
            ["[="] = "@assignment.outer",
            ["[r"] = "@return.outer",
          },
          goto_previous_end = {
            ["[F"] = "@function.outer",
            ["[C"] = "@class.outer",
            ["[I"] = "@conditional.outer",
            ["[L"] = "@loop.outer",
            ["[M"] = "@call.outer",
            ["[B"] = "@block.outer",
            ["[A"] = "@parameter.inner",
          },
        },

        swap = {
          enable = true,
          swap_next = {
            ["<leader>na"] = "@parameter.inner",
            ["<leader>nf"] = "@function.outer",
            ["<leader>nb"] = "@block.outer",
          },
          swap_previous = {
            ["<leader>pa"] = "@parameter.inner",
            ["<leader>pf"] = "@function.outer",
            ["<leader>pb"] = "@block.outer",
          },
        },
      },
    })

    -- Repeat movements with ' and ,
    local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")
    vim.keymap.set({ "n", "x", "o" }, "'", ts_repeat_move.repeat_last_move_next)
    vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)
  end,
}
