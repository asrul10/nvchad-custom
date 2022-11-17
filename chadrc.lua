local M = {}

M.ui = {
  theme_toggle = { "onedark", "one_light" },
  theme = "monekai",
  changed_themes = {
    -- https://github.com/NvChad/base46/blob/master/lua/base46/themes/monekai.lua
    monekai = {
      base_30 = {
        white = "#DCDFE4",
        darker_black = "#1D1D1D",
        black = "#282828", --  nvim bg
        black2 = "#303030",
        one_bg = "#282828", -- real bg of onedark
        one_bg2 = "#282828",
        one_bg3 = "#282828",
        grey = "#494C55",
        grey_fg = "#52555E",
        grey_fg2 = "#5B5E67",
        light_grey = "#63666F",
        red = "#E06C75",
        baby_pink = "#E06C75",
        pink = "#E06C75",
        green = "#98C379",
        vibrant_green = "#98C379",
        nord_blue = "#81A1C1",
        blue = "#61AFEF",
        yellow = "#E5C07B",
        sun = "#FCE668",
        purple = "#C678DD",
        dark_purple = "#C678DD",
        teal = "#56B6C2",
        orange = "#D39467",
        cyan = "#56B6C2",
        statusline_bg = "#303030",
        lightbg = "#303030",
        pmenu_bg = "#98C379",
        folder_bg = "#61AFEF",
      },
      -- styling https://github.com/chriskempson/base16/blob/main/styling.md
      base_16 = {
        base00 = "#282828",
        base01 = "#282828",
        base02 = "#484854",
        base03 = "#545862",
        base04 = "#5b5e67",
        base05 = "#afb6c3",
        base06 = "#b5bcc9",
        base07 = "#bbc2cf",
        base08 = "#D39467",
        base09 = "#b3a5d4",
        base0A = "#61AFEF",
        base0B = "#E5C07B",
        base0C = "#61AFEF",
        base0D = "#98C379",
        base0E = "#E06C75",
        base0F = "#E06C75",
      },
    },
  },
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
