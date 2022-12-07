local M = {}

local function border(hl_name)
  return {
    { "┌", hl_name },
    { "─", hl_name },
    { "┐", hl_name },
    { "│", hl_name },
    { "┘", hl_name },
    { "─", hl_name },
    { "└", hl_name },
    { "│", hl_name },
  }
end

M.treesitter = {
  ensure_installed = {
    -- HTML CSS
    "html",
    "css",
    "scss",

    -- TypeScript, JavaScript
    "javascript",
    "typescript",
    "tsx",
    -- "tailwindcss-language-server",

    -- PHP
    "php",

    -- Go
    "go",
    "gomod",

    -- Vim
    "vim",
    "lua",

    -- Json
    "json",

    -- Markdown
    "markdown",

    -- SQL
    "sql",
  },
}

M.mason = {
  ui = {
    icons = {
      package_pending = " ",
      package_installed = " ",
      package_uninstalled = " ",
    },
  },

  ensure_installed = {
    -- Lua
    "lua-language-server",
    "stylua",

    -- HTML CSS
    "css-lsp",
    "html-lsp",

    -- TypeScript, JavaScript
    "deno",
    "typescript-language-server",
    "eslint_d",

    -- Go
    "gopls",
    "goimports",

    -- PHP
    "intelephense",
    "php-cs-fixer",
    "phpcs",

    -- Shell
    "shfmt",
    "shellcheck",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- ui config
M.ui = {
  statusline = {
    separator_style = "block",
    overriden_modules = function()
      return require "custom.plugins.statusline"
    end,
  },
  tabufline = {
    overriden_modules = function()
      return require "custom.plugins.tabufline"
    end,
  },
}

-- telescope
M.telescope = {
  defaults = {
    prompt_prefix = "  ",
    selection_caret = "  ",
    entry_prefix = "  ",
    layout_config = {
      width = 0.50,
      height = 0.80,
    },
    borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
  },
  pickers = {
    find_files = {
      previewer = false,
    },
    live_grep = {
      previewer = false,
    },
    buffers = {
      previewer = false,
    },
  },
}

-- gitsigns
M.gitsigns = {
  signs = {
    add = { hl = "DiffAdd", text = "▌", numhl = "GitSignsAddNr" },
    change = { hl = "DiffChange", text = "▌", numhl = "GitSignsChangeNr" },
    delete = { hl = "DiffDelete", text = "━", numhl = "GitSignsDeleteNr" },
    topdelete = { hl = "DiffDelete", text = "━", numhl = "GitSignsDeleteNr" },
  },
}

-- cmp
M.cmp = {
  window = {
    completion = {
      border = border "CmpBorder",
      winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
    },
    documentation = {
      border = border "CmpDocBorder",
    },
  },
}

return M
