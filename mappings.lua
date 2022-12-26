local M = {}

M.general = {
  n = {
    ["<leader>sa"] = { ":%s/", "Find and replace all" },
    ["<leader>ss"] = { ":.,.+", "Find and replace current cursor to ++" },
    ["<leader>sj"] = { ":s/, /,\\r/g<CR>", "Comma and line break" },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "move line down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "move line up" },
  },
}

return M
