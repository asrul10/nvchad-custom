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

    -- PHP
    "php",

    -- Go
    "go",

    -- Vim
    "vim",
    "lua",

    -- Json
    "json",
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
    "tailwindcss-language-server",

    -- TypeScript, JavaScript
    "deno",
    "typescript-language-server",
    "eslint-lsp",

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

return M
