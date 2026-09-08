-- Customize None-ls sources (lua pack pulls none-ls in; no extra sources yet).

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    opts.sources = require("astrocore").list_insert_unique(opts.sources, {})
  end,
}
