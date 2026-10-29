local function header()
  local v = vim.version()
  local nvim = ("v%d.%d.%d"):format(v.major, v.minor, v.patch) .. (v.prerelease and "-dev" or "")
  local astro = require("astronvim").version() or "unknown"
  local stats = require("lazy.stats").stats()
  local ms = math.floor(stats.startuptime * 100 + 0.5) / 100

  local function line(label, value)
    return { text = { { label, hl = "footer" }, { value, hl = "special" } }, align = "center" }
  end

  return {
    line("Neovim     ", nvim),
    line("AstroNvim  ", astro),
    line("Startup    ", ms .. "ms"),
  }
end

---@type LazySpec
return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.dashboard = opts.dashboard or {}
    opts.dashboard.sections = {
      header,
      { padding = 3 },
      { section = "keys", gap = 1, padding = 3 },
    }
  end,
}
