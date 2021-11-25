--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- To enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local base00 = hsl('#424242')
local base01 = hsl('#757575')
local base02 = hsl('#9e9e9e')
local base03 = hsl('#e0e0e0')
local yellow = hsl('#ffee58')
local yellow1 = hsl('#fff59d')
local brown = hsl('#bcaaa4')
local brown1 = hsl('#d7ccc8')
local orange = hsl('#ffcc80')
local orange1 = hsl('#ffa726')
local red = hsl('#e57373')
local red1 = hsl('#ef9a9a')
local pink = hsl('#f8bbd0')
local pink1 = hsl('#ff80ab')
local purple = hsl('#e1bee7')
local purple1 = hsl('#9575cd')
local blue = hsl('#64b5f6')
local blue1 = hsl('#42a5f5')
local indigo = hsl('#c5cae9')
local indigo1 = hsl('#7986cb')
local cyan = hsl('#80deea')
local cyan1 = hsl('#26c6da')
local teal = hsl('#80cbc4')
local teal1 = hsl('#4db6ac')
local green = hsl('#c5e1a5')
local green1 = hsl('#f4ff81')
local base00minus1 = base00.da(3)
local base00minus2 = base00.da(5)
local base00minus3 = base00.da(10)
local base00plus1 = base00.li(3)
local base00plus2 = base00.li(5)
local base00plus3 = base00.li(12)
local base03minus3 = base03.da(10)
local light_emphasis = base00minus3
local light_emphasis1 = base00minus2
local light_emphasis2 = base00minus1
local flashing_color = pink.da(25)
local highlight_line_color = base00plus1

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    Comment      { fg = base01 }, -- any comment
    ColorColumn  { bg = base02 }, -- used for the columns set with 'colorcolumn'
    Conceal      { fg = blue }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { bg = pink1, fg = yellow, gui = 'inverse' }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = base00plus2 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { CursorColumn }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory    { }, -- directory names (and other special names in listings)
    DiffAdd      { fg = green }, -- diff mode: Added line |diff.txt|
    DiffChange   { fg = indigo1 }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg = red }, -- diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { fg = red, gui = 'bold' }, -- error messages on the command line
    VertSplit    { fg = base00plus2 }, -- the column separating vertically split windows
    Folded       { fg = base01 }, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { bg = base00, fg = base02 }, -- column where |signs| are displayed
    IncSearch    { fg = orange, bg = base01 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { bg = yellow, fg = base00 }, -- |:substitute| replacement text highlighting
    LineNr       { fg = base01 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { LineNr }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { fg = red }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg = cyan }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { }, -- |more-prompt|
    NonText      { fg = cyan1 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { bg = base00, fg = base03 }, -- normal text
    -- NormalFloat  { }, -- Normal text in floating windows.
    NormalNC     { Normal, fg = base03minus3 }, -- normal text in non-current windows
    Pmenu        { bg = base00plus2, fg = base03 }, -- Popup menu: normal item.
    PmenuSel     { Pmenu, bg = base00plus3 }, -- Popup menu: selected item.
    PmenuSbar    { Pmenu }, -- Popup menu: scrollbar.
    PmenuThumb   { PmenuSbar, bg = base01 }, -- Popup menu: Thumb of the scrollbar.
    Question     { fg = green1 }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { IncSearch }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { bg = base00minus3, fg = base03 }, -- status line of current window
    StatusLineNC { bg = base00plus1, fg = base03 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { bg = base00minus2 }, -- tab pages line, not active tab page label
    TabLineFill  { bg = base00minus3 }, -- tab pages line, where there are no labels
    TabLineSel   { bg = base00plus1 }, -- tab pages line, active tab page label
    Title        { fg = blue, gui = 'bold' }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = base00plus2 }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = orange }, -- warning messages
    Whitespace   { bg=base00minus2, fg = yellow}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = indigo }, -- (preferred) any constant
    String         { fg = green }, --   a string constant: "this is a string"
    -- Character      { }, --  a character constant: 'c', '\n'
    Number         { Normal }, --   a number constant: 234, 0xff
    Boolean        { fg = red1 }, --  a boolean constant: TRUE, false
    -- Float          { }, --    a floating point constant: 2.3e10

    Identifier     { fg = teal }, -- (preferred) any variable name
    Function       { fg = blue }, -- function name (also: methods for classes)

    Statement      { fg = purple }, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc        { fg = blue1 }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = orange }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        { fg = blue }, -- (preferred) any special symbol
    SpecialChar    { fg = indigo }, --  special character in a constant
    Tag            { fg = cyan1 }, --    you can use CTRL-] on this
    Delimiter      { fg = base02 }, --  character that needs attention
    SpecialComment { fg = cyan }, -- special things inside a comment
    Debug          { fg = teal1 }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { ErrorMsg }, -- (preferred) any erroneous construct

    Todo           { fg = yellow1 }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText                     { gui = 'underline', guisp = base02 }, -- used for highlighting "text" references
    LspReferenceRead                     { LspReferenceText }, -- used for highlighting "read" references
    LspReferenceWrite                    { LspReferenceText }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           { fg = red }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { fg = orange }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation     { fg = green }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint            { fg = teal }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    LspDiagnosticsVirtualTextError       { LspDiagnosticsDefaultError }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning     { LspDiagnosticsDefaultWarning }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation { LspDiagnosticsDefaultInformation }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint        { LspDiagnosticsDefaultHint }, -- Used for "Hint" diagnostic virtual text

    LspDiagnosticsUnderlineError         { fg = 'none', gui = 'none' }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning       { fg = 'none', gui = 'none' }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation   { fg = 'none', gui = 'none' }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint          { fg = 'none', gui = 'none' }, -- Used to underline "Hint" diagnostics

    LspDiagnosticsFloatingError          { LspDiagnosticsDefaultError       }, -- Used to color "Error" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingWarning        { LspDiagnosticsDefaultWarning     }, -- Used to color "Warning" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingInformation    { LspDiagnosticsDefaultInformation }, -- Used to color "Information" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingHint           { LspDiagnosticsDefaultHint        }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError              { LspDiagnosticsDefaultError       }, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            { LspDiagnosticsDefaultWarning     }, -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation        { LspDiagnosticsDefaultInformation }, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint               { LspDiagnosticsDefaultHint        }, -- Used for "Hint" signs in sign column

    LspCodeLens                          { fg = purple1 }, -- Used to color the virtual text of the codelens

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { fg = teal };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    TSText               { Normal };    -- For strings considered text in a markup language.
    TSEmphasis           { Italic };    -- For text to be represented with emphasis.
    TSUnderline          { Underlined };    -- For text to be represented with an underline.
    TSStrike             { fg = blue1, bg = base00minus3 };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

  }
end)

return theme

-- vi:nowrap
