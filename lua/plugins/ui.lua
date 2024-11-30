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
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.dashboard.preset.header = [[
        ███╗   ███╗ █████╗  ██████╗██╗  ██╗███████╗ █████╗ ██████╗ ███╗   ██╗
        ████╗ ████║██╔══██╗██╔════╝██║  ██║██╔════╝██╔══██╗██╔══██╗████╗  ██║
        ██╔████╔██║███████║██║     ███████║█████╗  ███████║██████╔╝██╔██╗ ██║
        ██║╚██╔╝██║██╔══██║██║     ██╔══██║██╔══╝  ██╔══██║██╔══██╗██║╚██╗██║
        ██║ ╚═╝ ██║██║  ██║╚██████╗██║  ██║███████╗██║  ██║██║  ██║██║ ╚████║
        ╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝
      ]]
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
    opts = function()
      local icons = LazyVim.config.icons
      local opts = {
        sections = {
          lualine_c = {
            LazyVim.lualine.root_dir(),
            {
              "diagnostics",
              symbols = {
                error = icons.diagnostics.Error,
                warn = icons.diagnostics.Warn,
                info = icons.diagnostics.Info,
                hint = icons.diagnostics.Hint,
              },
            },
            { "filetype", icon_only = true, separator = "", padding = { left = 2, right = 0 } },
            { LazyVim.lualine.pretty_path() },
          },
        },
      }
      return opts
    end,
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
