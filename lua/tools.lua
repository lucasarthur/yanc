local vim = vim
local tools = {}

-- load all plugins from directory
function tools.load_plugins(dir)
  local abs = vim.fn.stdpath('config') .. '/lua/' .. dir
  local files = vim.fn.globpath(abs, "*.lua", true, true)

  for _, file in ipairs(files) do
    local module = dir:gsub('/', '.') .. '.' .. file:match("([^/]+)%.lua$")
    if module then
      local ok, err = pcall(require, module)
      if not ok then
        vim.notify('Error loading ' .. module .. ': ' .. err, vim.log.levels.ERROR)
      end
    end
  end
end

return tools
