local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.numberwidth = 1

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
