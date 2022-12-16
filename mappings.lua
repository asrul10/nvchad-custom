local M = {}

M.general = {
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "move line down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "move line up" },
  },
}

return M
