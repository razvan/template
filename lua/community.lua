-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.file-explorer.fyler-nvim" },
  -- Base pack with basedpyright and ruff
  { import = "astrocommunity.pack.python.base" },
  { import = "astrocommunity.pack.python.basedpyright" },
  -- { import = "astrocommunity.pack.python.ruff" },
  -- { import = "astrocommunity.pack.python.black" },
}
