return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter',
  opts = {
    icons = {
      mappings = true,
      keys = {},
    },

    preset = 'helix',

    -- Document existing key chains
    spec = {
      { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>f', group = '[F]ind' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>t', group = '[T]erminal' },
      { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      { '<leader>n', group = '[N]eovim', mode = { 'n' } },
    },
  },
}
