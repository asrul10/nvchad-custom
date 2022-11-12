local M = {}

M.ui = {
  theme_toggle = { "onedark", "one_light" },
  theme = "monekai",
  changed_themes = {
    monekai = {
      base_16 = {
        -- styling https://github.com/chriskempson/base16/blob/main/styling.md
        base00 = "#282828",
      },
    },
  },
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
