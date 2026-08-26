return {
  "AstroNvim/astrolsp",
  opts = {
    config = {
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            -- This is needed because Stackable ops have a custom rustfmt.toml
            -- that enables features that require nightly.
            rustfmt = {
              extraArgs = { "+nightly-2026-07-01" },
            },
          },
        },
      },
    },
  },
}
