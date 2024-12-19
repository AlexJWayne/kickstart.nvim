-- Pretty status line at the bottom of the window.
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      -- theme = bubbles_theme,
      component_separators = '',
      section_separators = { left = '', right = '' },
    },
  },
}
