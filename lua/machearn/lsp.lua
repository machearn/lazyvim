local M = {}

local ok, lsp = pcall(require, "lspconfig")
if not ok then
  return
end

local function disable_client_if_large_file(client)
  local conf = lsp[client]
  local try_add = conf.manager.try_add
  conf.manager.try_add = function(bufnr)
    if vim.b.large_file then
      return try_add(bufnr)
    end
  end
end

function M.lsp_speedup()
  local clients = vim.lsp.get_active_clients()
  for _, client in ipairs(clients) do
    disable_client_if_large_file(client.name)
  end
end

return M
