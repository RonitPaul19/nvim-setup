local function apply_theme()
  local ok, theme = pcall(dofile, vim.fn.stdpath("config") .. "/lua/config/selected_theme.lua")
  if ok and theme then
    vim.cmd("colorscheme " .. theme)
  end
end

apply_theme()
