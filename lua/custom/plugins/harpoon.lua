return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {},
  config = function()
    require('telescope').load_extension 'harpoon'

    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'
    local terminal = require 'harpoon.term'
    local cmdui = require 'harpoon.cmd-ui'

    -- Buffers
    vim.keymap.set('n', '<leader>a', function()
      mark.add_file()
    end, { desc = '[A]dd to marked files' })
    vim.keymap.set('n', '<leader><leader>', '<CMD>Telescope harpoon marks<CR>', { desc = '[ ] Show marked files' })

    vim.keymap.set('n', '<A-t>', function()
      ui.nav_file(1)
    end, { desc = 'Switch to mark 1' })
    vim.keymap.set('n', '<A-s>', function()
      ui.nav_file(2)
    end, { desc = 'Switch to mark 2' })
    vim.keymap.set('n', '<A-r>', function()
      ui.nav_file(3)
    end, { desc = 'Switch to mark 3' })
    vim.keymap.set('n', '<A-a>', function()
      ui.nav_file(4)
    end, { desc = 'Switch to mark 4' })

    vim.keymap.set('n', '<A-x>', function()
      ui.nav_prev()
    end, { desc = 'Previous mark' })
    vim.keymap.set('n', '<A-d>', function()
      ui.nav_next()
    end, { desc = 'Next mark' })

    -- Terminals
    vim.keymap.set('n', '<leader>tt', function()
      terminal.gotoTerminal(1)
    end, { desc = 'Switch to terminal 1' })
    vim.keymap.set('n', '<leader>ts', function()
      terminal.gotoTerminal(2)
    end, { desc = 'Switch to terminal 2' })
    vim.keymap.set('n', '<leader>tr', function()
      terminal.gotoTerminal(3)
    end, { desc = 'Switch to terminal 3' })
    vim.keymap.set('n', '<leader>ta', function()
      terminal.gotoTerminal(4)
    end, { desc = 'Switch to terminal 4' })

    vim.keymap.set('n', '<leader>t<leader>', function()
      cmdui.toggle_quick_menu()
    end, { desc = 'Command Menu' })
  end,
}
