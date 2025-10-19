return {
  {
    "folke/snacks.nvim",
    -- commit = "a4de830",
    priority = 1000,
    opts = {
      dashboard = {
        enabled = true,
        width = 40,
        preset = {
          keys = {
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "y", desc = "File Explorer", action = ":Yazi" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('recent')" },
            {
              icon = " ",
              key = "p",
              desc = "Projects",
              action = ":lua Snacks.dashboard.pick('projects')",
            },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = ":cd ~/.config/nvim | Yazi",
            },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
          header = {
            [[
  ,-.       _,---._ __  / \
 /  )    .-'       `./ /   \
(  (   ,'            `/    /|
 \  `-"             \'\   / |
  `.              ,  \ \ /  |
   /`.          ,'-`----Y   |
  (            ;        |   '
  |  ,-.    ,-'         |  /
  |  | (   |            | /
  )  |  \  `.___________|/
  `--'   `--']],
          },
        },
        formats = {},
        sections = {
          { section = "header", indent = 5 },
          { title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { title = "Projects", section = "projects", indent = 2, padding = 1 },
          { section = "keys", indent = 2, padding = 1 },
        },
      },
    },
    keys = {
      {
        "<leader>g",
        function()
          Snacks.dashboard()
        end,
        desc = "Bring up the greeter",
      },
    },
  },
}
