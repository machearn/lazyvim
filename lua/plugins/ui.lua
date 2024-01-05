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
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "solarized_dark",
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      plugins = {
        presets = {
          operators = false,
        },
      },
    },
  },
}
