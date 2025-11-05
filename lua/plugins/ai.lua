return {
  -- GitHub Copilot
  {
    "github/copilot.vim",
    config = function()
      -- disable default tab mapping
      vim.g.copilot_no_tab_map = true
      -- Accept suggestion with Ctrl+J
      vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
    end,
  },
}
