local a = vim.api

local colors = require("apropospriate.colors")

a.nvim_set_hl(0, "Comment", { fg = colors.base1 }) -- any comment
a.nvim_set_hl(0, "ColorColumn", { bg = colors.base2 }) -- used for the columns set with 'colorcolumn'
a.nvim_set_hl(0, "Conceal", { fg = colors.blue }) -- placeholder characters substituted for concealed text see 'conceallevel'
a.nvim_set_hl(0, "Cursor", { bg = colors.pink1, fg = colors.yellow, reverse = 1 }) -- character under the cursor
-- a.nvim_set_hl(0, "lCursor", {}) -- the character under the cursor when |language-mapping| is used see 'guicursor'
-- a.nvim_set_hl(0, "CursorIM", {}) -- like Cursor but used when in IME mode |CursorIM|
a.nvim_set_hl(0, "CursorColumn", { bg = colors.base0plus2 }) -- Screen-column at the cursor when 'cursorcolumn' is set.
a.nvim_set_hl(0, "CursorLine", { link = "CursorColumn" }) -- Screen-line at the cursor when 'cursorline' is set.  Low-priority if foreground ctermfg OR guifg is not set.
-- a.nvim_set_hl(0, "Directory", {}) -- directory names and other special names in listings
a.nvim_set_hl(0, "DiffAdd", { fg = colors.green }) -- diff mode: Added line |diff.txt|
a.nvim_set_hl(0, "DiffChange", { fg = colors.indigo1 }) -- diff mode: Changed line |diff.txt|
a.nvim_set_hl(0, "DiffDelete", { fg = colors.red }) -- diff mode: Deleted line |diff.txt|
-- a.nvim_set_hl(0, "DiffText", {}) -- diff mode: Changed text within a changed line |diff.txt|
-- a.nvim_set_hl(0, "EndOfBuffer", {}) -- filler lines ~ after the end of the buffer.  By default this is highlighted like |hl-NonText|.
-- a.nvim_set_hl(0, "TermCursor", {}) -- cursor in a focused terminal
-- a.nvim_set_hl(0, "TermCursorNC", {}) -- cursor in an unfocused terminal
a.nvim_set_hl(0, "ErrorMsg", { fg = colors.red, bold = 1 }) -- error messages on the command line
a.nvim_set_hl(0, "VertSplit", { fg = colors.base0plus2 }) -- the column separating vertically split windows
a.nvim_set_hl(0, "Folded", { fg = colors.indigo1 }) -- line used for closed folds
-- a.nvim_set_hl(0, "FoldColumn", {}) -- 'foldcolumn'
a.nvim_set_hl(0, "SignColumn", { bg = colors.base0, fg = colors.base2 }) -- column where |signs| are displayed
a.nvim_set_hl(0, "IncSearch", { fg = colors.orange, bg = colors.base1 }) -- 'incsearch' highlighting also used for the text replaced with ":s///c"
a.nvim_set_hl(0, "Substitute", { bg = colors.yellow, fg = colors.base0 }) -- |:substitute| replacement text highlighting
a.nvim_set_hl(0, "LineNr", { fg = colors.base1 }) -- Line number for ":number" and ":#" commands and when 'number' or 'relativenumber' option is set.
a.nvim_set_hl(0, "CursorLineNr", { link = "LineNr" }) -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
a.nvim_set_hl(0, "MatchParen", { fg = colors.red }) -- The character under the cursor or just before it if it is a paired bracket and its match. |pi_paren.txt|
a.nvim_set_hl(0, "ModeMsg", { fg = colors.cyan }) -- 'showmode' message e.g. "-- INSERT -- "
-- a.nvim_set_hl(0, "MsgArea", {}) -- Area for messages and cmdline
-- a.nvim_set_hl(0, "MsgSeparator", {}) -- Separator for scrolled messages `msgsep` flag of 'display'
-- a.nvim_set_hl(0, "MoreMsg", {}) -- |more-prompt|
a.nvim_set_hl(0, "NonText", { fg = colors.cyan1 }) -- '@' at the end of the window characters from 'showbreak' and other characters that do not really exist in the text e.g. ">" displayed when a double-wide character doesn't fit at the end of the line. See also |hl-EndOfBuffer|.
a.nvim_set_hl(0, "Normal", { bg = colors.base0, fg = colors.base3 }) -- normal text
-- a.nvim_set_hl(0, "NormalFloat", {}) -- Normal text in floating windows.
a.nvim_set_hl(0, "NormalNC", { fg = colors.base3minus3 }) -- normal text in non-current windows
a.nvim_set_hl(0, "Pmenu", { bg = colors.base0plus2, fg = colors.base3 }) -- Popup menu: normal item.
a.nvim_set_hl(0, "PmenuSel", { bg = colors.base0minus2 }) -- Popup menu: selected item.
a.nvim_set_hl(0, "PmenuSbar", { bg = colors.base0plus3 }) -- Popup menu: scrollbar.
a.nvim_set_hl(0, "PmenuThumb", { bg = colors.base1 }) -- Popup menu: Thumb of the scrollbar.
a.nvim_set_hl(0, "Question", { fg = colors.green1 }) -- |hit-enter| prompt and yes/no questions
-- a.nvim_set_hl(0, "QuickFixLine", {}) -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
a.nvim_set_hl(0, "Search", { link = "IncSearch" }) -- Last search pattern highlighting see 'hlsearch'.  Also used for similar items that need to stand out.
-- a.nvim_set_hl(0, "SpecialKey", {}) -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
-- a.nvim_set_hl(0, "SpellBad", {}) -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
-- a.nvim_set_hl(0, "SpellCap", {}) -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
-- a.nvim_set_hl(0, "SpellLocal", {}) -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
-- a.nvim_set_hl(0, "SpellRare", {}) -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
a.nvim_set_hl(0, "StatusLine", { bg = colors.base0minus3, fg = colors.base3 }) -- status line of current window
a.nvim_set_hl(0, "StatusLineNC", { bg = colors.base0plus1, fg = colors.base3 }) -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
a.nvim_set_hl(0, "TabLine", { bg = colors.base0minus2 }) -- tab pages line not active tab page label
a.nvim_set_hl(0, "TabLineFill", { bg = colors.base0minus3 }) -- tab pages line where there are no labels
a.nvim_set_hl(0, "TabLineSel", { bg = colors.base0plus1 }) -- tab pages line active tab page label
a.nvim_set_hl(0, "Title", { fg = colors.teal }) -- titles for output from ":set all" ":autocmd" etc.
a.nvim_set_hl(0, "Visual", { bg = colors.base0plus2 }) -- Visual mode selection
-- a.nvim_set_hl(0, "VisualNOS", {}) -- Visual mode selection when vim is "Not Owning the Selection".
a.nvim_set_hl(0, "WarningMsg", { fg = colors.orange }) -- warning messages
a.nvim_set_hl(0, "Whitespace", { bg = colors.base0minus2, fg = colors.base2 }) -- "nbsp" "space" "tab" and "trail" in 'listchars'
-- a.nvim_set_hl(0, "WildMenu", {}) -- current match in 'wildmenu' completion

-- These groups are not listed as default vim groups,
-- but they are defacto standard group names for syntax highlighting.
-- commented out groups should chain up to their "preferred" group by
-- default.
-- Uncomment and edit if you want more specific syntax highlighting.

a.nvim_set_hl(0, "Constant", { fg = colors.indigo }) -- preferred any constant
a.nvim_set_hl(0, "String", { fg = colors.green }) --   a string constant: "this is a string"
-- a.nvim_set_hl(0, "Character", {}) --  a character constant: 'c' '\n'
a.nvim_set_hl(0, "Number", { link = "Normal" }) --   a number constant: 234 0xff
a.nvim_set_hl(0, "Boolean", { fg = colors.red1 }) --  a boolean constant: TRUE false
-- a.nvim_set_hl(0, "Float", {}) --    a floating point constant: 2.3e10

a.nvim_set_hl(0, "Identifier", { fg = colors.teal }) -- preferred any variable name
a.nvim_set_hl(0, "Function", { fg = colors.blue }) -- function name also: methods for classes

a.nvim_set_hl(0, "Statement", { fg = colors.purple }) -- preferred any statement
-- a.nvim_set_hl(0, "Conditional", {}) --  if then else endif switch etc.
-- a.nvim_set_hl(0, "Repeat", {}) --   for do while etc.
-- a.nvim_set_hl(0, "Label", {}) --    case default etc.
-- a.nvim_set_hl(0, "Operator", {}) -- "sizeof" "+" "*" etc.
-- a.nvim_set_hl(0, "Keyword", {}) --  any other keyword
-- a.nvim_set_hl(0, "Exception", {}) --  try catch throw

a.nvim_set_hl(0, "PreProc", { fg = colors.blue1 }) -- preferred generic Preprocessor
-- a.nvim_set_hl(0, "Include", {}) --  preprocessor #include
-- a.nvim_set_hl(0, "Define", {}) --   preprocessor #define
-- a.nvim_set_hl(0, "Macro", {}) --    same as Define
-- a.nvim_set_hl(0, "PreCondit", {}) --  preprocessor #if #else #endif etc.

a.nvim_set_hl(0, "Type", { fg = colors.orange }) -- preferred int long char etc.
-- a.nvim_set_hl(0, "StorageClass", {}) -- static register volatile etc.
-- a.nvim_set_hl(0, "Structure", {}) --  struct union enum etc.
-- a.nvim_set_hl(0, "Typedef", {}) --  A typedef

a.nvim_set_hl(0, "Special", { fg = colors.blue }) -- preferred any special symbol
a.nvim_set_hl(0, "SpecialChar", { fg = colors.indigo }) --  special character in a constant
a.nvim_set_hl(0, "Tag", { fg = colors.cyan1 }) --    you can use CTRL-] on this
a.nvim_set_hl(0, "Delimiter", { fg = colors.base2 }) --  character that needs attention
a.nvim_set_hl(0, "SpecialComment", { fg = colors.cyan }) -- special things inside a comment
a.nvim_set_hl(0, "Debug", { fg = colors.teal1 }) --    debugging statements

a.nvim_set_hl(0, "Underlined", { underline = 1 }) -- preferred text that stands out HTML links
a.nvim_set_hl(0, "Bold", { bold = 1 })
a.nvim_set_hl(0, "Italic", { italic = 1 })

-- "Ignore" below may be invisible...
-- a.nvim_set_hl(0, "Ignore", {}) -- preferred left blank hidden  |hl-Ignore|

a.nvim_set_hl(0, "Error", { link = "ErrorMsg" }) -- preferred any erroneous construct

a.nvim_set_hl(0, "Todo", { fg = colors.yellow1 }) -- preferred anything that needs extra attention mostly the keywords TODO FIXME and XXX

-- These groups are for the native LSP client. Some other LSP clients may
-- use these groups or use their own. Consult your LSP client's
-- documentation.

a.nvim_set_hl(0, "LspReferenceText", { underline = 1 }) -- used for highlighting "text" references
a.nvim_set_hl(0, "LspReferenceRead", { link = "LspReferenceText" }) -- used for highlighting "read" references
a.nvim_set_hl(0, "LspReferenceWrite", { link = "LspReferenceText" }) -- used for highlighting "write" references

a.nvim_set_hl(0, "LspDiagnosticsDefaultError", { fg = colors.red }) -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default except Underline
a.nvim_set_hl(0, "LspDiagnosticsDefaultWarning", { fg = colors.orange }) -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default except Underline
a.nvim_set_hl(0, "LspDiagnosticsDefaultInformation", { fg = colors.green }) -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default except Underline
a.nvim_set_hl(0, "LspDiagnosticsDefaultHint", { fg = colors.teal }) -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default except Underline

a.nvim_set_hl(0, "LspDiagnosticsVirtualTextError", { link = "LspDiagnosticsDefaultError" }) -- Used for "Error" diagnostic virtual text
a.nvim_set_hl(0, "LspDiagnosticsVirtualTextWarning", { link = "LspDiagnosticsDefaultWarning" }) -- Used for "Warning" diagnostic virtual text
a.nvim_set_hl(0, "LspDiagnosticsVirtualTextInformation", { link = "LspDiagnosticsDefaultInformation" }) -- Used for "Information" diagnostic virtual text
a.nvim_set_hl(0, "LspDiagnosticsVirtualTextHint", { link = "LspDiagnosticsDefaultHint" }) -- Used for "Hint" diagnostic virtual text

a.nvim_set_hl(0, "LspDiagnosticsUnderlineError", { fg = "none" }) -- Used to underline "Error" diagnostics
a.nvim_set_hl(0, "LspDiagnosticsUnderlineWarning", { fg = "none" }) -- Used to underline "Warning" diagnostics
a.nvim_set_hl(0, "LspDiagnosticsUnderlineInformation", { fg = "none" }) -- Used to underline "Information" diagnostics
a.nvim_set_hl(0, "LspDiagnosticsUnderlineHint", { fg = "none" }) -- Used to underline "Hint" diagnostics

a.nvim_set_hl(0, "LspDiagnosticsFloatingError", { link = "LspDiagnosticsDefaultError" }) -- Used to color "Error" diagnostic messages in diagnostics float
a.nvim_set_hl(0, "LspDiagnosticsFloatingWarning", { link = "LspDiagnosticsDefaultWarning" }) -- Used to color "Warning" diagnostic messages in diagnostics float
a.nvim_set_hl(0, "LspDiagnosticsFloatingInformation", { link = "LspDiagnosticsDefaultInformation" }) -- Used to color "Information" diagnostic messages in diagnostics float
a.nvim_set_hl(0, "LspDiagnosticsFloatingHint", { link = "LspDiagnosticsDefaultHint" }) -- Used to color "Hint" diagnostic messages in diagnostics float

a.nvim_set_hl(0, "LspDiagnosticsSignError", { link = "LspDiagnosticsDefaultError" }) -- Used for "Error" signs in sign column
a.nvim_set_hl(0, "LspDiagnosticsSignWarning", { link = "LspDiagnosticsDefaultWarning" }) -- Used for "Warning" signs in sign column
a.nvim_set_hl(0, "LspDiagnosticsSignInformation", { link = "LspDiagnosticsDefaultInformation" }) -- Used for "Information" signs in sign column
a.nvim_set_hl(0, "LspDiagnosticsSignHint", { link = "LspDiagnosticsDefaultHint" }) -- Used for "Hint" signs in sign column

a.nvim_set_hl(0, "LspCodeLens", { fg = colors.purple1 }) -- Used to color the virtual text of the codelens

-- These groups are for the neovim tree-sitter highlights.
-- As of writing tree-sitter support is a WIP group names may change.
-- By default most of these groups link to an appropriate Vim group
-- TSError -> Error for example so you do not have to define these unless
-- you explicitly want to support Treesitter's improved syntax awareness.

-- a.nvim_set_hl(0, "TSAnnotation", {}) -- For C++/Dart attributes annotations that can be attached to the code to denote some kind of meta information.
-- a.nvim_set_hl(0, "TSAttribute", {}) -- unstable TODO: docs
-- a.nvim_set_hl(0, "TSBoolean", {}) -- For booleans.
-- a.nvim_set_hl(0, "TSCharacter", {}) -- For characters.
-- a.nvim_set_hl(0, "TSComment", {}) -- For comment blocks.
a.nvim_set_hl(0, "TSConstructor", { link = "Delimiter" }) -- For constructor calls and definitions: ` { })` in Lua and Java constructors.
-- a.nvim_set_hl(0, "TSConditional", {}) -- For keywords related to conditionnals.
-- a.nvim_set_hl(0, "TSConstant", {}) -- For constants
-- a.nvim_set_hl(0, "TSConstBuiltin", {}) -- For constant that are built in the language: `nil` in Lua.
-- a.nvim_set_hl(0, "TSConstMacro", {}) -- For constants that are defined by macros: `NULL` in C.
-- a.nvim_set_hl(0, "TSError", {}) -- For syntax/parser errors.
-- a.nvim_set_hl(0, "TSException", {}) -- For exception related keywords.
-- a.nvim_set_hl(0, "TSField", {}) -- For fields.
-- a.nvim_set_hl(0, "TSFloat", {}) -- For floats.
-- a.nvim_set_hl(0, "TSFunction", {}) -- For function calls and definitions.
-- a.nvim_set_hl(0, "TSFuncBuiltin", {}) -- For builtin functions: `table.insert` in Lua.
-- a.nvim_set_hl(0, "TSFuncMacro", {}) -- For macro defined fuctions calls and definitions: each `macro_rules` in Rust.
-- a.nvim_set_hl(0, "TSInclude", {}) -- For includes: `#include` in C `use` or `extern crate` in Rust or `require` in Lua.
-- a.nvim_set_hl(0, "TSKeyword", {}) -- For keywords that don't fall in previous categories.
-- a.nvim_set_hl(0, "TSKeywordFunction", {}) -- For keywords used to define a fuction.
-- a.nvim_set_hl(0, "TSLabel", {}) -- For labels: `label:` in C and `:label:` in Lua.
-- a.nvim_set_hl(0, "TSMethod", {}) -- For method calls and definitions.
-- a.nvim_set_hl(0, "TSNamespace", {}) -- For identifiers referring to modules and namespaces.
-- a.nvim_set_hl(0, "TSNone", {}) -- TODO: docs
-- a.nvim_set_hl(0, "TSNumber", {}) -- For all numbers
-- a.nvim_set_hl(0, "TSOperator", {}) -- For any operator: `+` but also `->` and `*` in C.
-- a.nvim_set_hl(0, "TSParameter", {}) -- For parameters of a function.
-- a.nvim_set_hl(0, "TSParameterReference", {}) -- For references to parameters of a function.
-- a.nvim_set_hl(0, "TSProperty", {}) -- Same as `TSField`.
-- a.nvim_set_hl(0, "TSPunctDelimiter", {}) -- For delimiters ie: `.`
-- a.nvim_set_hl(0, "TSPunctBracket", {}) -- For brackets and parens.
-- a.nvim_set_hl(0, "TSPunctSpecial", {}) -- For special punctutation that does not fall in the catagories before.
-- a.nvim_set_hl(0, "TSRepeat", {}) -- For keywords related to loops.
-- a.nvim_set_hl(0, "TSString", {}) -- For strings.
-- a.nvim_set_hl(0, "TSStringRegex", {}) -- For regexes.
-- a.nvim_set_hl(0, "TSStringEscape", {}) -- For escape characters within a string.
-- a.nvim_set_hl(0, "TSSymbol", {}) -- For identifiers referring to symbols or atoms.
-- a.nvim_set_hl(0, "TSType", {}) -- For types.
-- a.nvim_set_hl(0, "TSTypeBuiltin", {}) -- For builtin types.
-- a.nvim_set_hl(0, "TSVariable", { fg = colors.teal }) -- Any variable name that does not have another highlight.
-- a.nvim_set_hl(0, "TSVariableBuiltin", {}) -- Variable names that are defined by the languages like `this` or `self`.

-- a.nvim_set_hl(0, "TSTag", {}) -- Tags like html tag names.
-- a.nvim_set_hl(0, "TSTagDelimiter", {}) -- Tag delimiter like `<` `>` `/`
a.nvim_set_hl(0, "TSText", { link = "Normal" }) -- For strings considered text in a markup language.
a.nvim_set_hl(0, "TSEmphasis", { link = "Italic" }) -- For text to be represented with emphasis.
a.nvim_set_hl(0, "TSUnderline", { link = "Underlined" }) -- For text to be represented with an underline.
a.nvim_set_hl(0, "TSStrike", { fg = colors.blue1, bg = colors.base0minus3 }) -- For strikethrough text.
-- a.nvim_set_hl(0, "TSTitle", {}) -- Text that is part of a title.
-- a.nvim_set_hl(0, "TSLiteral", {}) -- Literal text.
-- a.nvim_set_hl(0, "TSURI", {}) -- Any URI like a link or email.
