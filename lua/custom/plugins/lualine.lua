-- Pretty status line at the bottom of the window.
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    sections = {
      lualine_x = {
        {
          require('noice').api.status.mode.get,
          cond = require('noice').api.status.mode.has,
          color = { fg = '#ff9e64' },
        },
      },
    },
    options = {
      -- theme = bubbles_theme,
      component_separators = '',
      section_separators = { left = '', right = '' },
    },
  },
}
