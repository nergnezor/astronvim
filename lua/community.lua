-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.git.diffview-nvim" },
  -- rust/dart packs removed: no rustc/cargo/flutter/dart on PATH, and they
  -- pulled mason packages (codelldb, dart-debug-adapter, selene) that only
  -- failed. Re-add when the toolchains are installed.
  -- Colorschemes removed: Noctalia writes lua/matugen.lua via base16-nvim.
}
