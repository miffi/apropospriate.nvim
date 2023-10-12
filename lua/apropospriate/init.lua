local theme = require("apropospriate.theme")

local apropospriate = {}

function apropospriate.setup(background)
  vim.g.colors_name = "apropospriate"
  for name, options in pairs(theme.setup(background)) do
    vim.api.nvim_set_hl(0, name, options)
  end
end

return apropospriate
