local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  b.formatting.deno_fmt,                                                    -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  -- b.formatting.stylua,
  -- b.formatting.diagnostics.commitlint,
  -- b.formatting.diagnostics.gitlint,
  -- b.formatting.golangci_lint,
  -- b.formatting.diagnostics.jsonlint,
  -- b.formatting.diagnostics.markdownlint
}

null_ls.setup {
  debug = true,
  sources = sources,
}
