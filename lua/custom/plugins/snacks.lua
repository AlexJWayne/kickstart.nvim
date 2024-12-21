return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,

  ---@type snacks.Config
  opts = {
    dashboard = {
      preset = {
        header = [[
  ___   __          ___    ______            
 __/ | / /____________ |  / /__(_)______ ___ 
__/  |/ /_  _ \  __ \_ | / /__  /__  __ `__ \
_/ /|  / /  __/ /_/ /_ |/ / _  / _  / / / / /
/_/ |_/  \___/\____/_____/  /_/  /_/ /_/ /_/ 
]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          -- { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          -- { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },

    -- Moves vim command input to the center as a float.
    input = { enabled = true },

    -- Smoothly animate scrolling.
    scroll = { enabled = true },

    -- Prettier notifications.
    notifier = { enabled = true },
  },
}