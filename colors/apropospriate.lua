vim.g.colors_name = "apropospriate"

local color = vim.o.background or "dark"

require("apropospriate")(require("apropospriate.colors")[color])
