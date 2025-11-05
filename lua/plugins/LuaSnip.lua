return {
  "L3MON4D3/LuaSnip",
  event = "InsertEnter",
  dependencies = {
    "rafamadriz/friendly-snippets", -- Optional: adds many pre-made snippets
  },
  config = function()
    local luasnip = require("luasnip")

    -- Load VSCode-style snippets (from friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Keymaps
    vim.keymap.set({ "i", "s" }, "<C-k>", function()
      if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      end
    end, { silent = true, desc = "Expand or jump snippet" })

    vim.keymap.set({ "i", "s" }, "<C-j>", function()
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      end
    end, { silent = true, desc = "Jump backward in snippet" })

    vim.keymap.set("i", "<C-l>", function()
      if luasnip.choice_active() then
        luasnip.change_choice(1)
      end
    end, { silent = true, desc = "Cycle snippet choice" })

    -- Snippet config
    luasnip.config.set_config({
      history = true,
      updateevents = "TextChanged,TextChangedI",
      enable_autosnippets = true,
    })
  end,
}
