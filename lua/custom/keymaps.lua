-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Open the Lazy plugin manager
vim.keymap.set('n', '<leader>vl', vim.cmd.Lazy, { desc = 'Lazy' })

-- Save buffer
vim.keymap.set('n', '<C-s>', vim.cmd.w, { desc = 'Save Buffer' })
vim.keymap.set('i', '<C-s>', '<Esc><Left><cmd>w<CR>', { desc = 'Save Buffer' })

-- Redo with `U` like helix
vim.keymap.set('n', 'U', '<C-r>', { desc = 'Redo' })

-- Go to the dashboard
vim.keymap.set('n', '<leader>vd', ':lua Snacks.dashboard()<CR>', { desc = 'Dashboard' })

-- Toggle Hardtime.nvim if its getting in my way.
vim.keymap.set('n', '<leader>tt', '<CMD>Hardtime toggle<CR>', { desc = 'Hardtime' })

-- Toggle zen mode
vim.keymap.set('n', '<leader>tz', '<CMD>ZenMode<CR>', { desc = 'Zen' })

-- Open a new terminal
vim.keymap.set('n', '<leader>rt', vim.cmd.terminal, { desc = 'New Terminal' })

-- Tree navigation -- TODO
vim.keymap.set({ 'n', 'v' }, '<S-Up>', '<cmd>Treewalker Up<cr>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, '<S-Down>', '<cmd>Treewalker Down<cr>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, '<S-Right>', '<cmd>Treewalker Right<cr>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, '<S-Left>', '<cmd>Treewalker Left<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-Down>', '<cmd>Treewalker SwapDown<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-Up>', '<cmd>Treewalker SwapUp<cr>', { noremap = true, silent = true })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
