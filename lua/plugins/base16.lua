-- Noctalia community neovim template expects RRethy/base16-nvim + lua/matugen.lua.
-- apply.sh skips creating this file when it already exists; keep lazy=false so the
-- palette is applied before AstroUI's configured colorscheme can stick as final.
return {
  "RRethy/base16-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local ok, matugen = pcall(require, "matugen")
    if ok then matugen.setup() end
  end,
}
