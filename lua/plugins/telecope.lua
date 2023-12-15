return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
    keys = {
      {
        ";f",
        function()
          local builtin = require("telescope.builtin")
          builtin.find_files({
            no_ignore = false,
            hidden = true,
          })
        end,
        desc = "Find files",
      },
      {
        ";b",
        function()
          local builtin = require("telescope.builtin")
          builtin.buffers()
        end,
        desc = "Find buffers",
      },
      {
        ";;",
        function()
          local builtin = require("telescope.builtin")
          builtin.live_grep()
        end,
        desc = "Live grep",
      },
      {
        ";:",
        function()
          local builtin = require("telescope.builtin")
          builtin.commands()
        end,
        desc = "Commands",
      },
      {
        ";d",
        function()
          local builtin = require("telescope.builtin")
          builtin.diagnostics()
        end,
        desc = "Diagnostics",
      },
      {
        ";e",
        function()
          local telescope = require("telescope")
          telescope.extensions.file_browser.file_browser({
            path = "%:p:h",
            cwd = vim.fn.expand("%:p:h"),
            respect_gitignore = false,
            hidden = true,
            grouped = true,
            previewer = false,
            initial_mode = "normal",
            layout_config = { height = 40 },
          })
        end,
        desc = "File browser",
      },
      {
        ";t",
        function()
          local builtin = require("telescope.builtin")
          builtin.treesitter()
        end,
        desc = "Treesitter",
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local fb_actions = telescope.extensions.file_browser.actions
      opts.extensions = {
        file_browser = {
          theme = "dropdown",
          hijack_netw = true,
          mappings = {
            ["n"] = {
              ["a"] = fb_actions.create,
              ["H"] = fb_actions.goto_parent_dir,
              ["<C-u>"] = function(prompt_bufnr)
                for i = 1, 10 do
                  actions.move_selection_previous(prompt_bufnr)
                end
              end,
              ["<C-d>"] = function(prompt_bufnr)
                for i = 1, 10 do
                  actions.move_selection_next(prompt_bufnr)
                end
              end,
            },
          },
        },
      }
      telescope.setup(opts)
      telescope.load_extension("file_browser")
    end,
  },
}
