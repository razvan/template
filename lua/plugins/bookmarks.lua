-- lua/user/plugins/bookmarks.lua
return {
  {
    "MattesGroeger/vim-bookmarks",
    event = "VeryLazy", -- load lazily
    config = function()
      -- basic settings: show signs and highlights
      -- vim.g.bookmark_sign = "★" -- sign character in signcolumn
      vim.g.bookmark_highlight_lines = 1 -- highlight the whole line
      vim.g.bookmark_auto_close = 1
      -- optional: customize toggle key (example: <leader>m)
      vim.keymap.set("n", "<leader>bm", ":BookmarkToggle<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>bb", ":BookmarkShowAll<CR>", { noremap = true, silent = true })
      -- customize highlight groups (adjust to your theme)
      vim.cmd "hi link BookSign Visual"
      vim.cmd "hi link BookLine Visual"
    end,
  },
}
