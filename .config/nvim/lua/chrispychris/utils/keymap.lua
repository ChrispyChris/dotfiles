local util = {}
local opts = { noremap = true, silent = true, desc = nil}

-- Function to set keymaps and provide a description with typical default options provided.
util.map = function(mode, lhs, rhs, options)
  options = options or {}
  for k, v in pairs(opts) do
    if options[k] == nil then
      options[k] = v
    end
  end
  options.desc = options.desc or "No description provided!"
  vim.keymap.set(mode, lhs, rhs, options)
end

return util
