-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.mouse = ""
vim.opt.clipboard:append({ "unnamedplus" })
if vim.g.neovide then
  vim.opt.guifont = "Hack Nerd Font Mono:h18"
  vim.g.neovide_input_macos_option_key_is_meta = "both"
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_cursor_vfx_mode = { "torpedo", "sonicboom" }
end
