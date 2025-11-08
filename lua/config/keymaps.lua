local keymap = vim.keymap

-- Open config
vim.cmd('nmap <leader>c :e ~/AppData/Local/nvim/init.lua<cr>')

-- Save
vim.cmd('nmap <leader>s :w<cr>')

-- Repeat previous f, t, F or T movement
vim.keymap.set('n', "'", ';')

-- Paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- Redo
vim.keymap.set('n', 'U', '<C-r>')

-- Exit insert mode with jj
keymap.set("i", "jj", "<Esc>")

-- Clear search highlight
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Skip folds (down, up)
vim.cmd('nmap j gj')
vim.cmd('nmap k gk')

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Buffer navigation
keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Next buffer" })

-- Move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Keep cursor centered
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Save file
keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

-- Quit
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- File explorer
keymap.set("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })


-- Vim in VS Code
if vim.g.vscode then
  local opts = { noremap = true, silent = true }

  local mappings = {
    -- Word navigation
    { 'n', 'w', 'cursorWordPartRight' },
    { 'n', 'b', 'cursorWordPartLeft' },
    { 'v', 'w', 'cursorWordPartRightSelect' },
    { 'v', 'b', 'cursorWordPartLeftSelect' },

    -- Code navigation
    { 'n', '<leader>gd', 'editor.action.revealDefinition' },
    { 'n', '<leader>gy', 'editor.action.goToTypeDefinition' },
    { 'n', '<leader>gi', 'editor.action.goToImplementation' },
    { 'n', '<leader>gr', 'editor.action.goToReferences' },
    { 'n', '<leader>gs', 'workbench.action.gotoSymbol' },
    { 'n', '<leader>gl', 'workbench.action.gotoLine' },
    { 'n', '<leader>lel', 'workbench.action.navigateToLastEditLocation' },

    -- Quick search and peek options
    { 'n', '<leader>ss', 'workbench.action.showAllSymbols' },
    { 'n', '<leader>cp', 'workbench.action.showCommands' },
    { 'n', '<leader>sf', 'workbench.action.quickOpen' },
    { 'n', '<leader>vd', 'editor.action.peekDefinition' },
    { 'n', '<leader>vi', 'editor.action.peekImplementation' },
    { 'n', '<leader>vt', 'editor.action.peekTypeDefinition' },
    { 'n', 'gh', 'editor.action.showHover' },
    { 'n', '<leader>fr', 'references-view.findReferences' },
    { 'n', '<leader>sr', 'editor.action.referenceSearch.trigger' },

    -- Find, replace and refactor
    { 'n', '<leader>ff', 'actions.find' },
    { 'n', '<leader>fr', 'editor.action.startFindReplaceAction' },
    { 'n', '<leader>fg', 'workbench.action.findInFiles' },
    { 'n', '<leader>rg', 'workbench.action.replaceInFiles' },
    { 'n', '<leader>re', 'editor.action.rename' },
    { 'n', '<leader>rf', 'editor.action.refactor' },
    { 'n', '<leader>qf', 'editor.action.quickFix' },
    { 'n', '<leader>sg', 'editor.action.triggerSuggest' },

    -- Line editing and code maintenance
    { 'n', '<leader>fc', 'editor.action.formatDocument' },
    { 'n', '<leader>oi', 'editor.action.organizeImports' },
    { 'n', '<leader>ne', 'editor.action.marker.next' },
    { 'n', '<leader>pe', 'editor.action.marker.prev' },

    -- File and workspace management
    { 'n', '<leader>rp', 'workbench.action.openRecent' },
    { 'n', '<leader>nf', 'workbench.action.files.newUntitledFile' },
    { 'n', '<leader>cf', 'workbench.action.closeActiveEditor' },
    { 'n', '<leader>fa', 'workbench.action.closeAllEditors' },
    { 'n', '<leader>of', 'workbench.action.files.openFile' },
    { 'n', '<leader>rw', 'workbench.action.reloadWindow' },
    { 'n', '<leader>os', 'workbench.action.openSettingsJson' },

    -- Window management
    { 'n', '<leader>wv', 'workbench.action.splitEditor' },
    { 'n', '<leader>wh', 'workbench.action.splitEditorDown' },
    { 'n', '<leader>ww', 'workbench.action.joinTwoGroups' },
    { 'n', '<leader>wa', 'workbench.action.evenEditorWidths' },
  }

  for _, mapping in ipairs(mappings) do
    local mode, key, command = mapping[1], mapping[2], mapping[3]
    vim.keymap.set(mode, key, function()
      vim.fn.VSCodeNotify(command)
    end, opts)
  end
end
