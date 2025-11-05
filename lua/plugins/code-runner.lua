return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      mode = "float",
      float = {
        border = "rounded",
        blend = 0,
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5,
      },
      filetype = {
        java = {
          "cd \"$dir\" &&",
          "javac \"$fileName\" &&",
          "java \"$fileNameWithoutExt\""
        },
        python = "python -u",
        typescript = "deno run",
        rust = {
          "cd \"$dir\" &&",
          "rustc \"$fileName\" &&",
          "\"$dir\\$fileNameWithoutExt\""
        },
        c = {
          "cd \"$dir\" &&",
          "gcc \"$fileName\" -o \"$fileNameWithoutExt\" &&",
          "\"$dir\\$fileNameWithoutExt\""
        },
        cpp = {
          "cd \"$dir\" &&",
          "g++ \"$fileName\" -o \"$fileNameWithoutExt\" &&",
          "\"$dir\\$fileNameWithoutExt\""
        },
        javascript = "node",
        go = "go run",
        lua = "lua",
      },

    })

    -- Keymap to run code
    vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { desc = "Run code", noremap = true, silent = false })
    vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { desc = "Run file", noremap = true, silent = false })
    vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { desc = "Run file in tab", noremap = true, silent = false })
    vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { desc = "Run project", noremap = true, silent = false })
    vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { desc = "Close runner", noremap = true, silent = false })
  end,
}
