-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<CMD>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Open the Lazy plugin manager
vim.keymap.set('n', '<leader>nl', vim.cmd.Lazy, { desc = '[N]eovim [L]azy' })

-- Open the Mason grammar manager
vim.keymap.set('n', '<leader>nm', vim.cmd.Mason, { desc = '[N]eovim [M]ason' })

-- Save buffer
vim.keymap.set('n', '<C-s>', vim.cmd.w, { desc = 'Save Buffer' })
vim.keymap.set('i', '<C-s>', '<Esc><Left><CMD>w<CR>', { desc = 'Save Buffer' })

-- Redo with `U` like helix
vim.keymap.set('n', 'U', '<C-r>', { desc = 'Redo' })

-- Go to the dashboard
vim.keymap.set('n', '<leader>nd', ':lua Snacks.dashboard()<CR>', { desc = '[N]eovim [D]ashboard' })

-- Toggle Hardtime.nvim if its getting in my way.
vim.keymap.set('n', '<leader>nh', '<CMD>Hardtime toggle<CR>', { desc = '[H]ardtime' })

-- Open a new terminal
vim.keymap.set('n', '<leader>wt', vim.cmd.terminal, { desc = 'New Terminal' })

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
vim.keymap.set('n', '<C-Left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-Right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-Down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-Up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
