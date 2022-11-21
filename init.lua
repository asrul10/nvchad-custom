local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
local g = vim.g

g.toggle_theme_icon = ""
opt.number = true
opt.numberwidth = 1
opt.relativenumber = true
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
