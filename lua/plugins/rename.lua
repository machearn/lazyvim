return {
  {
    "smjonas/inc-rename.nvim",
    event = "BufRead",
    opts = {
      cmd_name = "IncRename",
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        inc_rename = true,
      },
    },
  },
}
