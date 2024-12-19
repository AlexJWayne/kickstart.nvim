-- Vim habits trainer.
return {
  'm4xshen/hardtime.nvim',
  dependencies = { 'MunifTanjim/nui.nvim' },
  opts = {
    disabled_keys = {
      ['<Up>'] = {},
      ['<Down>'] = {},
      ['<Left>'] = {},
      ['<Right>'] = {},
    },
    restricted_keys = {
      ['<Up>'] = { 'n', 'x' },
      ['<Down>'] = { 'n', 'x' },
      ['<Left>'] = { 'n', 'x' },
      ['<Right>'] = { 'n', 'x' },
    },
    disable_mouse = false,
  },
}
