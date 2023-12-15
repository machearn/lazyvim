return {
  {
    "m4xshen/smartcolumn.nvim",
    event = "BufRead",
    opts = {
      disabled_filetypes = { "dashboard", "neo-tree", "starter", "help", "text", "markdown" },
      colorcolumn = { "80", "100", "120" },
      custom_colorcolumn = {
        gitcommit = "72",
      },
    },
  },
  { "sainnhe/sonokai" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      local logo = [[
        ███╗   ███╗ █████╗  ██████╗██╗  ██╗███████╗ █████╗ ██████╗ ███╗   ██╗
        ████╗ ████║██╔══██╗██╔════╝██║  ██║██╔════╝██╔══██╗██╔══██╗████╗  ██║
        ██╔████╔██║███████║██║     ███████║█████╗  ███████║██████╔╝██╔██╗ ██║
        ██║╚██╔╝██║██╔══██║██║     ██╔══██║██╔══╝  ██╔══██║██╔══██╗██║╚██╗██║
        ██║ ╚═╝ ██║██║  ██║╚██████╗██║  ██║███████╗██║  ██║██║  ██║██║ ╚████║
        ╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
