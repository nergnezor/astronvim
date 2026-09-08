
-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Re-apply Noctalia's matugen palette after AstroUI sets colorscheme.
return function()
  local ok, matugen = pcall(require, "matugen")
  if ok then matugen.setup() end
end
