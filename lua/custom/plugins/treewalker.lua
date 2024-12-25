return {
  'aaronik/treewalker.nvim',
  opts = {
    highlight = true, -- Whether to briefly highlight the node after jumping to it
    highlight_duration = 250, -- How long should above highlight last (in ms)
  },
  config = function()
    vim.keymap.set({ 'n', 'v' }, '<S-Up>', '<CMD>Treewalker Up<CR>', { noremap = true, silent = true })
    vim.keymap.set({ 'n', 'v' }, '<S-Down>', '<CMD>Treewalker Down<CR>', { noremap = true, silent = true })
    vim.keymap.set({ 'n', 'v' }, '<S-Right>', '<CMD>Treewalker Right<CR>', { noremap = true, silent = true })
    vim.keymap.set({ 'n', 'v' }, '<S-Left>', '<CMD>Treewalker Left<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<A-Down>', '<CMD>Treewalker SwapDown<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<A-Up>', '<CMD>Treewalker SwapUp<CR>', { noremap = true, silent = true })
  end,
}
