-- return {
--   'rebelot/kanagawa.nvim',
--   init = function()
--     vim.cmd.colorscheme 'kanagawa-wave'
--   end,
-- }

-- return {
--   'rose-pine/neovim',
--   name = 'rose-pine',
--   config = function()
--     vim.cmd 'colorscheme rose-pine'
--   end,
-- }

-- return {
--   'folke/tokyonight.nvim',
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   init = function()
--     vim.cmd.colorscheme 'tokyonight-night'
--   end,
-- }

-- return {
--   'catppuccin/nvim',
--   priority = 1000,
--   name = 'catppuccin',
--   init = function()
--     vim.cmd.colorscheme 'catppuccin-mocha'
--   end,
-- }

return {
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.gruvbox_material_foreground = 'hard'
    vim.g.gruvbox_material_background = 'hard'
    -- vim.g.gruvbox_material_enable_bold = true
    vim.g.gruvbox_material_ui_contrast = 'high'

    vim.cmd.colorscheme 'gruvbox-material'
  end,
}

-- return {
--   'Mofiqul/vscode.nvim',
--   priority = 1000,
--
--   config = function()
--     require('vscode').setup {
--       italic_comments = true,
--       underline_links = true,
--     }
--   end,
--
--   init = function()
--     vim.cmd.colorscheme 'vscode'
--     vim.cmd.hi 'Comment gui=none' -- from kickstart ???
--   end,
-- }
