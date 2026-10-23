---@type LazySpec
return {
  "dlyongemallo/diffview-plus.nvim",
  opts = {
    view = {
      -- unified diff in a single window instead of side-by-side
      default = { layout = "diff1_inline" },
    },
  },
}
