return {
  'Mofiqul/vscode.nvim',
  priority = 1000,

  config = function()
    require('vscode').setup {
      italic_comments = true,
      underline_links = true,
    }
  end,

  init = function()
    vim.cmd.colorscheme 'vscode'
    vim.cmd.hi 'Comment gui=none' -- from kickstart ???
  end,
}
