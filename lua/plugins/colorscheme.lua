return {
  { "sainnhe/sonokai" },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      if vim.g.neovide then
        return { transparent = false }
      end
      return { transparent = true }
    end,
  },
  {
    "uloco/bluloco.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      opts.colorscheme = "solarized-osaka"
      return opts
    end,
  },
}
