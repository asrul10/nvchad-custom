local M = {}

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
    separator_style = "arrow", -- default/round/block/arrow
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
  },
  pickers = {
    find_files = {
      previewer = false,
    },
    live_grep = {
      previewer = false,
    },
    -- find_files = {
    --   theme = "dropdown",
    -- },
  },
}

return M
