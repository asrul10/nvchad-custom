local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- Lua
  b.formatting.stylua,

  -- TypeScript, JavaScript
  b.formatting.deno_fmt,
  b.code_actions.eslint,

  -- PHP
  b.diagnostics.phpcs,
  b.formatting.phpcsfixer,

  -- Go
  b.formatting.goimports,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
