local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "json" } }, -- so prettier works only on these filetypes,
  b.formatting.rustywind, -- Tailwind

  -- Elixir // Erlang
  b.formatting.erlfmt,

  -- PostgreSQL // Prisma
  b.formatting.pg_format,
  b.formatting.prismaFmt,

  -- Swift
  b.formatting.swiftformat,

  -- Python
  b.formatting.black,

  -- Haskell
  b.formatting.brittany,

  -- Clojure
  b.formatting.cljstyle,

  -- Elm
  b.formatting.elm_format,

  -- Rust
  b.formatting.rustfmt,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
