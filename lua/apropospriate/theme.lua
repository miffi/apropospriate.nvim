local colorschemes = require("apropospriate.colors")
local theme = {}

theme.setup = function(background)
  local colors = colorschemes[background]

	return {
		Comment = { fg = colors.base1 }, -- any comment
		ColorColumn = { bg = colors.base2 }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = colors.blue }, -- placeholder characters substituted for concealed text see 'conceallevel'
		Cursor = { bg = colors.pink1, fg = colors.yellow }, -- character under the cursor
		-- highlight("lCursor", {}) -- the character under the cursor when |language-mapping| is used see 'guicursor'
		-- highlight("CursorIM", {}) -- like Cursor but used when in IME mode |CursorIM|
		CursorColumn = { bg = colors.base0plus2 }, -- Screen-column at the cursor when 'cursorcolumn' is set.
		CursorLine = { link = "CursorColumn" }, -- Screen-line at the cursor when 'cursorline' is set.  Low-priority if foreground ctermfg OR guifg is not set.
		-- highlight("Directory", {}) -- directory names and other special names in listings
		DiffAdd = { fg = colors.green }, -- diff mode: Added line |diff.txt|
		DiffChange = { fg = colors.indigo1 }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { fg = colors.red }, -- diff mode: Deleted line |diff.txt|
		-- highlight("DiffText", {}) -- diff mode: Changed text within a changed line |diff.txt|
		-- highlight("EndOfBuffer", {}) -- filler lines ~ after the end of the buffer.  By default this is highlighted like |hl-NonText|.
		-- highlight("TermCursor", {}) -- cursor in a focused terminal
		-- highlight("TermCursorNC", {}) -- cursor in an unfocused terminal
		ErrorMsg = { fg = colors.red, bold = 1 }, -- error messages on the command line
		VertSplit = { fg = colors.base0plus2 }, -- the column separating vertically split windows
		Folded = { fg = colors.base1 }, -- line used for closed folds
		-- highlight("FoldColumn", {}) -- 'foldcolumn'
		SignColumn = { bg = colors.base0, fg = colors.base2 }, -- column where |signs| are displayed
		IncSearch = { fg = colors.orange, bg = colors.base1 }, -- 'incsearch' highlighting also used for the text replaced with ":s///c"
		Substitute = { bg = colors.yellow, fg = colors.base0 }, -- |:substitute| replacement text highlighting
		LineNr = { fg = colors.base1 }, -- Line number for ":number" and ":#" commands and when 'number' or 'relativenumber' option is set.
		CursorLineNr = { fg = colors.base2 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen = { underline = true }, -- The character under the cursor or just before it if it is a paired bracket and its match. |pi_paren.txt|
		ModeMsg = {}, -- 'showmode' message e.g. "-- INSERT -- "
		-- highlight("MsgArea", {}) -- Area for messages and cmdline
		-- highlight("MsgSeparator", {}) -- Separator for scrolled messages `msgsep` flag of 'display'
		-- highlight("MoreMsg", {}) -- |more-prompt|
		NonText = { link = "Comment" }, -- '@' at the end of the window characters from 'showbreak' and other characters that do not really exist in the text e.g. ">" displayed when a double-wide character doesn't fit at the end of the line. See also |hl-EndOfBuffer|.
		Normal = { bg = colors.base0, fg = colors.base3 }, -- normal text
		-- highlight("NormalFloat", {}) -- Normal text in floating windows.
		NormalNC = { fg = colors.base3minus3 }, -- normal text in non-current windows
		Pmenu = { bg = colors.base0plus2, fg = colors.base3 }, -- Popup menu: normal item.
		PmenuSel = { bg = colors.base0minus2 }, -- Popup menu: selected item.
		PmenuSbar = { bg = colors.base0plus3 }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = colors.base1 }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = colors.green }, -- |hit-enter| prompt and yes/no questions
		-- highlight("QuickFixLine", {}) -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { link = "IncSearch" }, -- Last search pattern highlighting see 'hlsearch'.  Also used for similar items that need to stand out.
		-- highlight("SpecialKey", {}) -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		-- highlight("SpellBad", {}) -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- highlight("SpellCap", {}) -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- highlight("SpellLocal", {}) -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- highlight("SpellRare", {}) -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { bg = colors.base0minus1 }, -- status line of current window
		StatusLineNC = { bg = colors.base0plus1 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = colors.base0minus2 }, -- tab pages line not active tab page label
		TabLineFill = { bg = colors.base0minus3 }, -- tab pages line where there are no labels
		TabLineSel = { bg = colors.base0plus1 }, -- tab pages line active tab page label
		Title = { fg = colors.teal }, -- titles for output from ":set all" ":autocmd" etc.
		Visual = { bg = colors.base0plus2 }, -- Visual mode selection
		-- highlight("VisualNOS", {}) -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = colors.orange1 }, -- warning messages
		Whitespace = { bg = colors.base0minus2, fg = colors.base2 }, -- "nbsp" "space" "tab" and "trail" in 'listchars'
		-- highlight("WildMenu", {}) -- current match in 'wildmenu' completion

		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- commented out groups should chain up to their "preferred" group by
		-- default.
		-- Uncomment and edit if you want more specific syntax highlighting.

		Constant = { fg = colors.indigo }, -- preferred any constant
		String = { fg = colors.green }, --   a string constant: "this is a string"
		-- highlight("Character", {}) --  a character constant: 'c' '\n'
		Number = { link = "Normal" }, --   a number constant: 234 0xff
		Boolean = { fg = colors.red1 }, --  a boolean constant: TRUE false
		-- highlight("Float", {}) --    a floating point constant: 2.3e10

		Identifier = { fg = colors.teal }, -- preferred any variable name
		Function = { fg = colors.blue }, -- function name also: methods for classes

		Statement = { fg = colors.purple }, -- preferred any statement
		-- highlight("Conditional", {}) --  if then else endif switch etc.
		-- highlight("Repeat", {}) --   for do while etc.
		-- highlight("Label", {}) --    case default etc.
		-- highlight("Operator", {}) -- "sizeof" "+" "*" etc.
		-- highlight("Keyword", {}) --  any other keyword
		-- highlight("Exception", {}) --  try catch throw

		PreProc = { fg = colors.blue1 }, -- preferred generic Preprocessor
		-- highlight("Include", {}) --  preprocessor #include
		-- highlight("Define", {}) --   preprocessor #define
		-- highlight("Macro", {}) --    same as Define
		-- highlight("PreCondit", {}) --  preprocessor #if #else #endif etc.

		Type = { fg = colors.orange }, -- preferred int long char etc.
		-- highlight("StorageClass", {}) -- static register volatile etc.
		-- highlight("Structure", {}) --  struct union enum etc.
		-- highlight("Typedef", {}) --  A typedef

		Special = { fg = colors.blue }, -- preferred any special symbol
		SpecialChar = { fg = colors.indigo }, --  special character in a constant
		Tag = { fg = colors.cyan1 }, --    you can use CTRL-] on this
		Delimiter = { fg = colors.base2 }, --  character that needs attention
		SpecialComment = { fg = colors.purple1 }, -- special things inside a comment
		Debug = { fg = colors.teal1 }, --    debugging statements

		Underlined = { underline = 1 }, -- preferred text that stands out HTML links
		Bold = { bold = 1 },
		Italic = { italic = 1 },

		-- "Ignore" below may be invisible...
		-- highlight("Ignore", {}) -- preferred left blank hidden  |hl-Ignore|

		Error = { link = "ErrorMsg" }, -- preferred any erroneous construct

		Todo = { fg = colors.yellow1 }, -- preferred anything that needs extra attention mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups or use their own. Consult your LSP client's
		-- documentation.

		LspReferenceText = { underline = 1 }, -- used for highlighting "text" references
		LspReferenceRead = { link = "LspReferenceText" }, -- used for highlighting "read" references
		LspReferenceWrite = { link = "LspReferenceText" }, -- used for highlighting "write" references
		-- highlight("LSPInlayHint", { link = "Comment" })

		DiagnosticOk = { fg = colors.green }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default except Underline
		DiagnosticError = { fg = colors.red }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default except Underline
		DiagnosticWarn = { fg = colors.orange1 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default except Underline
		DiagnosticInfo = { fg = colors.green1 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default except Underline
		DiagnosticHint = { fg = colors.teal }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default except Underline

		-- highlight("LspDiagnosticsVirtualTextError", { link = "LspDiagnosticsDefaultError" }) -- Used for "Error" diagnostic virtual text
		-- highlight("LspDiagnosticsVirtualTextWarning", { link = "LspDiagnosticsDefaultWarning" }) -- Used for "Warning" diagnostic virtual text
		-- highlight("LspDiagnosticsVirtualTextInformation", { link = "LspDiagnosticsDefaultInformation" }) -- Used for "Information" diagnostic virtual text
		-- highlight("LspDiagnosticsVirtualTextHint", { link = "LspDiagnosticsDefaultHint" }) -- Used for "Hint" diagnostic virtual text

		DiagnosticUnderlineError = { fg = "none" }, -- Used to underline "Error" diagnostics
		DiagnosticUnderlineWarning = { fg = "none" }, -- Used to underline "Warning" diagnostics
		DiagnosticUnderlineInformation = { fg = "none" }, -- Used to underline "Information" diagnostics
		DiagnosticUnderlineHint = { fg = "none" }, -- Used to underline "Hint" diagnostics

		-- highlight("LspDiagnosticsFloatingError", { link = "LspDiagnosticsDefaultError" }) -- Used to color "Error" diagnostic messages in diagnostics float
		-- highlight("LspDiagnosticsFloatingWarning", { link = "LspDiagnosticsDefaultWarning" }) -- Used to color "Warning" diagnostic messages in diagnostics float
		-- highlight("LspDiagnosticsFloatingInformation", { link = "LspDiagnosticsDefaultInformation" }) -- Used to color "Information" diagnostic messages in diagnostics float
		-- highlight("LspDiagnosticsFloatingHint", { link = "LspDiagnosticsDefaultHint" }) -- Used to color "Hint" diagnostic messages in diagnostics float

		-- highlight("LspDiagnosticsSignError", { link = "LspDiagnosticsDefaultError" }) -- Used for "Error" signs in sign column
		-- highlight("LspDiagnosticsSignWarning", { link = "LspDiagnosticsDefaultWarning" }) -- Used for "Warning" signs in sign column
		-- highlight("LspDiagnosticsSignInformation", { link = "LspDiagnosticsDefaultInformation" }) -- Used for "Information" signs in sign column
		-- highlight("LspDiagnosticsSignHint", { link = "LspDiagnosticsDefaultHint" }) -- Used for "Hint" signs in sign column

		LspCodeLens = { fg = colors.purple1 }, -- Used to color the virtual text of the codelens

		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing tree-sitter support is a WIP group names may change.
		-- By default most of these groups link to an appropriate Vim group
		-- TSError -> Error for example so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.

		-- highlight("TSAnnotation", {}) -- For C++/Dart attributes annotations that can be attached to the code to denote some kind of meta information.
		-- highlight("TSAttribute", {}) -- unstable TODO: docs
		-- highlight("TSBoolean", {}) -- For booleans.
		-- highlight("TSCharacter", {}) -- For characters.
		-- highlight("TSComment", {}) -- For comment blocks.
		TSConstructor = { link = "Delimiter" }, -- For constructor calls and definitions: ` { })` in Lua and Java constructors.
		-- highlight("TSConditional", {}) -- For keywords related to conditionnals.
		-- highlight("TSConstant", {}) -- For constants
		-- highlight("TSConstBuiltin", {}) -- For constant that are built in the language: `nil` in Lua.
		-- highlight("TSConstMacro", {}) -- For constants that are defined by macros: `NULL` in C.
		-- highlight("TSError", {}) -- For syntax/parser errors.
		-- highlight("TSException", {}) -- For exception related keywords.
		-- highlight("TSField", {}) -- For fields.
		-- highlight("TSFloat", {}) -- For floats.
		-- highlight("TSFunction", {}) -- For function calls and definitions.
		-- highlight("TSFuncBuiltin", {}) -- For builtin functions: `table.insert` in Lua.
		-- highlight("TSFuncMacro", {}) -- For macro defined fuctions calls and definitions: each `macro_rules` in Rust.
		-- highlight("TSInclude", {}) -- For includes: `#include` in C `use` or `extern crate` in Rust or `require` in Lua.
		-- highlight("TSKeyword", {}) -- For keywords that don't fall in previous categories.
		-- highlight("TSKeywordFunction", {}) -- For keywords used to define a fuction.
		-- highlight("TSLabel", {}) -- For labels: `label:` in C and `:label:` in Lua.
		-- highlight("TSMethod", {}) -- For method calls and definitions.
		-- highlight("TSNamespace", {}) -- For identifiers referring to modules and namespaces.
		-- highlight("TSNone", {}) -- TODO: docs
		-- highlight("TSNumber", {}) -- For all numbers
		-- highlight("TSOperator", {}) -- For any operator: `+` but also `->` and `*` in C.
		-- highlight("TSParameter", {}) -- For parameters of a function.
		-- highlight("TSParameterReference", {}) -- For references to parameters of a function.
		-- highlight("TSProperty", {}) -- Same as `TSField`.
		-- highlight("TSPunctDelimiter", {}) -- For delimiters ie: `.`
		-- highlight("TSPunctBracket", {}) -- For brackets and parens.
		-- highlight("TSPunctSpecial", {}) -- For special punctutation that does not fall in the catagories before.
		-- highlight("TSRepeat", {}) -- For keywords related to loops.
		-- highlight("TSString", {}) -- For strings.
		-- highlight("TSStringRegex", {}) -- For regexes.
		-- highlight("TSStringEscape", {}) -- For escape characters within a string.
		-- highlight("TSSymbol", {}) -- For identifiers referring to symbols or atoms.
		-- highlight("TSType", {}) -- For types.
		-- highlight("TSTypeBuiltin", {}) -- For builtin types.
		-- highlight("TSVariable", { fg = colors.teal }) -- Any variable name that does not have another highlight.
		-- highlight("TSVariableBuiltin", {}) -- Variable names that are defined by the languages like `this` or `self`.

		-- highlight("TSTag", {}) -- Tags like html tag names.
		-- highlight("TSTagDelimiter", {}) -- Tag delimiter like `<` `>` `/`
		TSText = { link = "Normal" }, -- For strings considered text in a markup language.
		["@text.emphasis"] = { link = "Italic" }, -- For text to be represented with emphasis.
		["@text.underline"] = { link = "Underlined" }, -- For text to be represented with an underline.
		["@text.strike"] = { strikethrough = true }, -- For strikethrough text.
		-- highlight("TSTitle", {}) -- Text that is part of a title.
		-- highlight("TSLiteral", {}) -- Literal text.
		-- highlight("TSURI", {}) -- Any URI like a link or email.
	}
end

return theme
