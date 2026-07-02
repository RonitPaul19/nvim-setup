local M = {}
local default_theme = "rose-pine"

local light_themes = { ["e-ink"] = true }

local theme_configs = {
  everforest = function()
    vim.g.everforest_background = "soft"
    vim.g.everforest_transparent_background = true
    vim.g.everforest_enable_italic = true
  end,
  ["e-ink"] = function()
    require("e-ink").setup()
  end,
  moonfly = function()
    vim.g.moonfly_transparent = true
  end,
  ["rose-pine"] = function()
    require("rose-pine").setup({
      styles = { transparency = true },
    })
  end,
}

local function set_transparent_highlights()
  local groups = {
    "Normal",
    "NormalFloat",
    "SignColumn",
    "LineNr",
    "FoldColumn",
    "StatusLine",
    "StatusLineNC",
    "TabLineFill",
    "Pmenu",
    "PmenuSel",
    "CursorLineNr",
    "EndOfBuffer",
  }
  for _, group in ipairs(groups) do
    pcall(vim.api.nvim_set_hl, 0, group, { bg = "NONE" })
  end
end

function M.load()
  local ok, theme = pcall(dofile, vim.fn.stdpath("config") .. "/lua/_theme_state.lua")
  if not ok or type(theme) ~= "string" then
    theme = default_theme
  end

  vim.opt.background = light_themes[theme] and "light" or "dark"

  if theme_configs[theme] then
    theme_configs[theme]()
  end

  pcall(vim.cmd, "colorscheme " .. theme)

  set_transparent_highlights()
end

M.load()

local state_file = vim.fn.stdpath("config") .. "/lua/_theme_state.lua"

local watcher = vim.uv.new_fs_event()
if watcher then
  watcher:start(state_file, {}, vim.schedule_wrap(function()
    M.load()
  end))
  vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
      watcher:close()
    end,
  })
end

return M
