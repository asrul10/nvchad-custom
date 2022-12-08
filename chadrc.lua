local M = {}

M.ui = {
  theme_toggle = { "onedark", "one_light" },
  theme = "gruvbox",
  transparency = true,
  changed_themes = {
    gruvbox = {
      -- https://github.com/NvChad/base46/blob/master/lua/base46/themes/monekai.lua
      base_30 = {
        grey = "#7c6f64",
        grey_fg = "#7c6f64",
        grey_fg2 = "#7c6f64",
      },
      -- styling https://github.com/chriskempson/base16/blob/main/styling.md
      base_16 = {},
    },
  },
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
