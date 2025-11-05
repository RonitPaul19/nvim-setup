return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = false,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      window = {
        position = "right",
        width = 30,
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = {
          enabled = true,
        },
      },
    })

    -- Toggle focus between neo-tree and editor
    local function toggle_neotree_focus()
      local manager = require("neo-tree.sources.manager")
      local state = manager.get_state("filesystem")
      if state and state.winid and vim.api.nvim_win_is_valid(state.winid) then
        if vim.api.nvim_get_current_win() == state.winid then
          vim.cmd("wincmd p")
        else
          vim.api.nvim_set_current_win(state.winid)
        end
      else
        vim.cmd("Neotree focus")
      end
    end

    vim.keymap.set("n", "<leader>e", toggle_neotree_focus, { desc = "Toggle focus file explorer" })
  end,
}
