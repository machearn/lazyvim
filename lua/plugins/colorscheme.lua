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
    opts = function()
      if vim.g.neovide then
        return { transparent = false }
      end
      return { transparent = true }
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      opts.colorscheme = "bluloco-dark"
      return opts
    end,
  },
}
