local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
local g = vim.g

g.toggle_theme_icon = ""
opt.number = true
opt.numberwidth = 1
opt.relativenumber = true
opt.colorcolumn = "100"

-- [[ Highlight on yank ]]
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
