local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
local g = vim.g

g.toggle_theme_icon = ""
opt.number = true
opt.numberwidth = 1
opt.relativenumber = true

vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = "Hightlight selection on yank",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 500 }
  end,
})
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
