-- Pin fyler.nvim to the last pre-rewrite commit (2026-03-03).
-- AstroCommunity's `file-explorer.fyler-nvim` spec still targets the pre-rewrite
-- API (`views.finder.*`, window kind `float`). fyler's 2026-06-14 rewrite
-- (1bb18a0) flattened the config and renamed the `float` preset to `floating`,
-- which breaks the spec's keymap with:
--   "after the second argument: expected table, got nil"
-- Remove this pin once AstroCommunity updates its spec for fyler v2.
---@type LazySpec
return {
  "A7Lavinraj/fyler.nvim",
  commit = "b271c7ad914b27384e9e922edfaf8af36fd1e836",
}
