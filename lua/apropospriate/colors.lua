if vim.o.background == "dark" then
	colors = {
		base0 = "#424242",
		base1 = "#757575",
		base2 = "#9e9e9e",
		base3 = "#e0e0e0",
		yellow = "#ffee58",
		yellow1 = "#fff59d",
		brown = "#bcaaa4",
		brown1 = "#d7ccc8",
		orange = "#ffcc80",
		orange1 = "#ffa726",
		red = "#e57373",
		red1 = "#ef9a9a",
		pink = "#f8bbd0",
		pink1 = "#ff80ab",
		purple = "#e1bee7",
		purple1 = "#9575cd",
		blue = "#64b5f6",
		blue1 = "#42a5f5",
		indigo = "#c5cae9",
		indigo1 = "#7986cb",
		cyan = "#80deea",
		cyan1 = "#26c6da",
		teal = "#80cbc4",
		teal1 = "#4db6ac",
		green = "#c5e1a5",
		green1 = "#f4ff81",
		base0minus1 = "#404040",
		base0minus2 = "#3e3e3e",
		base0minus3 = "#3b3b3b",
		base0plus1 = "#474747",
		base0plus2 = "#4b4b4b",
		base0plus3 = "#585858",
		base3minus3 = "#c9c9c9",
		flashing_color = "#ed588b",
	}

	colors.light_emphasis = colors.base0minus3
	colors.light_emphasis1 = colors.base0minus2
	colors.light_emphasis2 = colors.base0minus1
	colors.highlight_line_color = colors.base0plus1
else
	colors = {
		base0 = "#fafafa",
		base1 = "#90a4ae",
		base2 = "#78909c",
		base3 = "#546e7a",
		yellow = "#f57f17",
		yellow1 = "#f9a725",
		brown = "#4e342e",
		brown1 = "#6d4c41",
		orange = "#d84315",
		orange1 = "#ff5722",
		red = "#d50000",
		red1 = "#ff1744",
		pink = "#f8bbd0",
		pink1 = "#ec407a",
		purple = "#7e57c2",
		purple1 = "#b388ff",
		blue = "#42a5f5",
		blue1 = "#1e88e5",
		indigo = "#5c6bc0",
		indigo1 = "#9fa8da",
		cyan = "#0097a7",
		cyan1 = "#00b8d4",
		teal = "#26a69a",
		teal1 = "#00897b",
		green = "#66bb6a",
		green1 = "#558b2f",
		base0minus1 = "#fafafa",
		base0minus2 = "#fafafa",
		base0minus3 = "#fafafa",
		base0plus1 = "#f4f4f4",
		base0plus2 = "#e6e6e6",
		base0plus3 = "#dbdbdb",
		base3minus3 = "#607e8c",
		flashing_color = "#f8bbd0",
	}

	colors.light_emphasis = colors.base0plus3
	colors.light_emphasis1 = colors.base0plus2
	colors.light_emphasis2 = colors.base0plus1
	colors.highlight_line_color = colors.base0minus1
end

return colors
