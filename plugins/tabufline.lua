local fn = vim.fn
local api = vim.api
local isBufValid = require("nvchad_ui.tabufline").isBufValid

local function getNvimTreeWidth()
  for _, win in pairs(api.nvim_tabpage_list_wins(0)) do
    if vim.bo[api.nvim_win_get_buf(win)].ft == "NvimTree" then
      return api.nvim_win_get_width(win) + 1
    end
  end
  return 0
end

local function getBtnsWidth() -- close, theme toggle btn etc
  local width = 6
  if fn.tabpagenr "$" ~= 1 then
    width = width + ((3 * fn.tabpagenr "$") + 2) + 10
    width = not vim.g.TbTabsToggled and 8 or width
  end
  return width
end

local function styleBufferTab(nr)
  local close_btn = "%" .. nr .. "@TbKillBuf@ %X"
  local name = (#api.nvim_buf_get_name(nr) ~= 0) and fn.fnamemodify(api.nvim_buf_get_name(nr), ":t") or " No Name "
  name = "%" .. nr .. "@TbGoToBuf@" .. "  " .. name .. "  " .. "%X"

  -- color close btn for focused / hidden  buffers
  if nr == api.nvim_get_current_buf() then
    close_btn = (vim.bo[0].modified and "%" .. nr .. "@TbKillBuf@%#TbLineBufOnModified# ")
      or ("%#TbLineBufOnClose#" .. close_btn)
    name = "%#TbLineBufOn#" .. name .. close_btn
  else
    close_btn = (vim.bo[nr].modified and "%" .. nr .. "@TbKillBuf@%#TbBufLineBufOffModified# ")
      or ("%#TbLineBufOffClose#" .. close_btn)
    name = "%#TbLineBufOff#" .. name .. close_btn
  end

  return name
end

return {
  buttons = function()
    return ""
  end,
  bufferlist = function()
    local buffers = {} -- buffersults
    local available_space = vim.o.columns - getNvimTreeWidth() - getBtnsWidth()
    local current_buf = api.nvim_get_current_buf()
    local has_current = false -- have we seen current buffer yet?

    -- show buffer index numbers
    if vim.g.tbufpick_showNums then
      for index, value in ipairs(vim.g.visibuffers) do
        local name = value:gsub("", "(" .. index .. ")")
        table.insert(buffers, name)
      end
      return table.concat(buffers) .. "%#TblineFill#" .. "%=" -- buffers + empty space
    end

    vim.g.bufirst = 0
    for _, bufnr in ipairs(vim.t.bufs) do
      if isBufValid(bufnr) then
        if ((#buffers + 1) * 21) > available_space then
          if has_current then
            break
          end

          vim.g.bufirst = vim.g.bufirst + 1
          table.remove(buffers, 1)
        end

        has_current = (bufnr == current_buf and true) or has_current
        table.insert(buffers, styleBufferTab(bufnr))
      end
    end

    vim.g.visibuffers = buffers
    return table.concat(buffers) .. "%#TblineFill#" .. "%=" -- buffers + empty space
  end,
}
