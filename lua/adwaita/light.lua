local u = require("adwaita.utils")
local link_other_highlights = require("adwaita.utils").link_other_highlights

local highlight = u.highlight

local colors = u.gen_colors()

local M = {}

local set_terminal_color = function()
	vim.g.terminal_color_0 = colors.light_2
	vim.g.terminal_color_1 = colors.red_2
	vim.g.terminal_color_2 = colors.green_2
	vim.g.terminal_color_3 = colors.orange_3
	vim.g.terminal_color_4 = colors.blue_2
	vim.g.terminal_color_5 = colors.purple_3
	vim.g.terminal_color_6 = colors.teal_2
	vim.g.terminal_color_7 = colors.light_4
	vim.g.terminal_color_8 = colors.light_7
	vim.g.terminal_color_9 = colors.red_1
	vim.g.terminal_color_10 = colors.green_1
	vim.g.terminal_color_11 = colors.orange_2
	vim.g.terminal_color_12 = colors.blue_1
	vim.g.terminal_color_13 = colors.purple_1
	vim.g.terminal_color_14 = colors.teal_1
	vim.g.terminal_color_15 = colors.light_3
	vim.g.terminal_color_background = colors.light_2
	vim.g.terminal_color_foreground = colors.dark_3
end
M.set = function()
	set_terminal_color()
	highlight("Normal", colors.dark_3, colors.light_2, "none", "none")
	highlight("NormalFloat", colors.dark_3, colors.light_3, "none", "none")
	highlight("FloatBorder", colors.light_4, colors.light_3, "none", "none")
	highlight("ColorColumn", "none", colors.dark_1, "none", "none")
	highlight("Cursor", colors.light_5, colors.dark_1, "none", "none")
	highlight("CursorLine", "none", vim.g.adwaita_disable_cursorline and "none" or colors.light_3, "none", "none")
	highlight("CursorColumn", "none", colors.light_3, "none", "none")
	highlight("Directory", colors.dark_4, colors.light_2, "bold", "none")
	highlight("DiffAdd", colors.teal_3, colors.light_2, "none", "none")
	highlight("DiffChange", colors.orange_3, colors.light_2, "none", "none")
	highlight("DiffDelete", colors.red_1, colors.light_2, "none", "none")
	highlight("DiffText", colors.violet_4, colors.light_2, "none", "none")
	highlight("EndOfBuffer", colors.light_2, colors.light_2, "none", "none")
	highlight("ErrorMsg", colors.red_3, colors.light_2, "underline", "none")
	highlight("VertSplit", colors.light_4, colors.light_2, "none", "none")
	highlight("Folded", colors.dark_1, colors.light_2, "none", "none")
	highlight("FoldedColumn", colors.dark_1, colors.light_2, "none", "none")
	highlight("SignColumn", colors.dark_2, colors.light_2, "none", "none")
	highlight("IncSearch", colors.dark_4, "#FCF7B5", "none", "none")
	highlight("LineNr", colors.light_6, colors.light_2, "none", "none")
	highlight(
		"CursorLineNr",
		colors.light_7,
		vim.g.adwaita_disable_cursorline and "none" or colors.light_3,
		"bold",
		"none"
	)
	highlight("MatchParen", colors.dark_3, colors.light_2, "bold", "none")
	highlight("ModeMsg", colors.dark_3, colors.light_3, "none", "none")
	highlight("MoreMsg", colors.dark_3, colors.light_3, "none", "none")
	highlight("NonText", colors.light_3, colors.light_2, "none", "none")
	highlight("Pmenu", colors.dark_3, colors.light_3, "none", "none")
	highlight("PmenuSel", colors.light_2, colors.blue_5, "none", "none")
	highlight("PmenuSbar", "none", colors.dark_1, "none", "none")
	highlight("PmenuThumb", "none", colors.light_5, "none", "none")
	highlight("Question", colors.blue_1, colors.light_2, "none", "none")
	highlight("Search", colors.dark_4, "#FCF7B5", "none", "none")
	highlight("SpecialKey", colors.dark_2, colors.light_2, "none", "none")
	highlight("StatusLine", colors.dark_3, colors.light_3, "none", "none")
	highlight("StatusLineNC", colors.dark_3, colors.light_3, "none", "none")
	highlight("Tabline", colors.dark_3, colors.light_3, "none", "none")
	highlight("TablineFill", colors.dark_3, colors.light_3, "none", "none")
	highlight("TablineSel", colors.dark_3, colors.light_2, "none", "none")
	highlight("Title", "none", "none", "bold", "none")
	highlight("Visual", "none", colors.blue_1, "none", "none")
	highlight("VisualNOS", "none", colors.blue_1, "none", "none")
	highlight("WarningMsg", colors.yellow_4, "none", "bold", "none")
	highlight("WildMenu", colors.dark_3, colors.blue_5, "none", "none")
	highlight("Comment", colors.dark_1, "none", "none", "none")
	highlight("Constant", colors.violet_4, "none", "none", "none")
	highlight("String", colors.teal_5, "none", "none", "none")
	highlight("Character", colors.teal_5, "none", "none", "none")
	highlight("Number", colors.violet_4, "none", "none", "none")
	highlight("Boolean", colors.violet_4, "none", "none", "none")
	highlight("Float", colors.violet_4, "none", "none", "none")
	highlight("Identifier", colors.orange_5, "none", "none", "none")
	highlight("Function", colors.blue_4, "none", "none", "none")
	highlight("Statement", colors.purple_2, "none", "none", "none")
	highlight("Conditional", colors.orange_5, "none", "bold", "none")
	highlight("Repeat", colors.purple_1, "none", "none", "none")
	highlight("Label", colors.purple_2, "none", "none", "none")
	highlight("Operator", colors.dark_3, "none", "none", "none")
	highlight("Keyword", colors.orange_5, "none", "bold", "none")
	highlight("Exception", colors.orange_4, "none", "none", "none")
	highlight("PreProc", colors.violet_4, "none", "none", "none")
	highlight("Include", colors.orange_5, "none", "bold", "none")
	highlight("Define", colors.yellow_6, "none", "none", "none")
	highlight("Macro", colors.yellow_6, "none", "none", "none")
	highlight("Type", colors.teal_5, "none", "bold", "none")
	highlight("StorageClass", colors.teal_5, "none", "bold", "none")
	highlight("Typedef", colors.teal_5, "none", "bold", "none")
	highlight("Structure", colors.teal_5, "none", "none", "none")
	highlight("Special", colors.red_2, "none", "none", "none")
	highlight("SpecialChar", colors.red_2, "none", "none", "none")
	highlight("Tag", colors.teal_5, "none", "none", "none")
	highlight("Delimiter", colors.dark_3, "none", "none", "none")
	highlight("SpecialComment", colors.dark_1, "none", "none", "none")
	highlight("Debug", colors.dark_3, "none", "none", "none")
	highlight("Underline", colors.dark_3, "none", "none", "none")
	highlight("Conceal", colors.dark_3, "none", "none", "none")
	highlight("Ignore", colors.dark_3, "none", "none", "none")
	highlight("Error", colors.red_1, "none", "undercurl", "none")
	highlight("Todo", colors.dark_3, "none", "none", "none")
	highlight("SpellBad", colors.red_3, "none", "undercurl", "none")
	highlight("SpellCap", colors.red_3, "none", "undercurl", "none")
	highlight("SpellRare", colors.red_3, "none", "undercurl", "none")
	highlight("SpellLocal", colors.red_3, "none", "undercurl", "none")
	highlight("Whitespace", colors.light_3, "none", "none", "none")

	highlight("TSTSPunctBracket", colors.dark_3, "none", "none", "none")
	highlight("TSPunctSpecial", colors.red_3, "none", "none", "none")
	highlight("markdownTSPunctSpecial", colors.teal_5, "none", "bold", "none")
	highlight("TSConstant", colors.violet_4, "none", "none", "none")
	highlight("TSConstBuiltin", colors.violet_4, "none", "none", "none")
	highlight("TSConstMacro", colors.teal_3, "none", "none", "none")
	highlight("TSStringRegex", colors.teal_5, "none", "none", "none")
	highlight("TSString", colors.teal_5, "none", "none", "none")
	highlight("TSCharacter", colors.teal_5, "none", "none", "none")
	highlight("TSNumber", colors.violet_4, "none", "none", "none")
	highlight("TSBoolean", colors.violet_4, "none", "none", "none")
	highlight("TSFloat", colors.violet_4, "none", "none", "none")
	highlight("TSAnnotation", colors.yellow_4, "none", "none", "none")
	highlight("TSAttribute", colors.orange_4, "none", "none", "none")
	highlight("TSNamespace", colors.orange_5, "none", "none", "none")
	highlight("TSFuncBuiltin", colors.blue_4, "none", "none", "none")
	highlight("TSFuncMacro", colors.blue_4, "none", "none", "none")
	highlight("TSFunction", colors.blue_4, "none", "none", "none")
	highlight("TSParameter", colors.dark_3, "none", "none", "none")
	highlight("TSParameterReference", colors.dark_3, "none", "none", "none")
	highlight("TSMethod", colors.blue_4, "none", "none", "none")
	highlight("TSField", colors.dark_3, "none", "none", "none")
	highlight("TSProperty", colors.dark_3, "none", "none", "none")
	highlight("TSConstructor", colors.blue_4, "none", "none", "none")
	highlight("TSConditional", colors.orange_5, "none", "bold", "none")
	highlight("TSRepeat", colors.purple_1, "none", "none", "none")
	highlight("TSLabel", colors.purple_2, "none", "none", "none")
	highlight("TSOperator", colors.dark_3, "none", "none", "none")
	highlight("TSKeyword", colors.orange_5, "none", "bold", "none")
	highlight("TSKeywordFunction", colors.orange_5, "none", "bold", "none")
	highlight("TSKeywordOperator", colors.dark_3, "none", "bold", "none")
	highlight("TSException", colors.orange_4, "none", "none", "none")
	highlight("TSType", colors.teal_5, "none", "bold", "none")
	highlight("TSTypeBuiltin", colors.teal_5, "none", "bold", "none")
	highlight("TSStructure", colors.teal_5, "none", "bold", "none")
	highlight("TSInclude", colors.orange_5, "none", "bold", "none")
	highlight("TSVariable", colors.dark_3, "none", "none", "none")
	highlight("TSVariableBuiltin", colors.dark_3, "none", "none", "none")
	highlight("TSText", colors.teal_5, "none", "none", "none")
	highlight("TSUnderline", colors.dark_3, "none", "none", "none")
	highlight("TSTag", colors.teal_5, "none", "none", "none")
	highlight("TSTagDelimiter", colors.teal_5, "none", "none", "none")
	highlight("TSTitle", colors.teal_5, "none", "bold", "none")
	highlight("TSLiteral", "none", "none", "none", "none")
	highlight("TSEmphasis", "none", "none", "italic", "none")
	highlight("TSStrong", "none", "none", "bold", "none")
	highlight("TSURI", colors.blue_4, "none", "none", "none")
	highlight("TSTextReference", colors.red_3, "none", "none", "none")
	highlight("TSPunctDelimiter", colors.dark_3, "none", "none", "none")
	highlight("TSStringEscape", colors.teal_5, "none", "none", "none")
	highlight("TSNote", colors.blue_4, "none", "none", "none")
	highlight("TSWarning", colors.yellow_2, "none", "none", "none")
	highlight("TSError", colors.red_3, "none", "none", "none")

	highlight("@tag", colors.blue_4, "none", "none", "none")
	highlight("htmlTag", colors.blue_4, "none", "none", "none")
	highlight("htmlEndTag", colors.blue_4, "none", "none", "none")
	highlight("htmlTagName", colors.blue_4, "none", "none", "none")
	highlight("htmlSpecialTagName", colors.blue_4, "none", "none", "none")
	highlight("htmlArg", colors.orange_5, "none", "none", "none")

	highlight("NvimTreeRootFolder", colors.dark_3, "none", "none", "none")
	highlight("NvimTreeFolderIcon", colors.dark_3, "none", "none", "none")
	highlight("NvimTreeFolderName", colors.dark_4, "none", "bold", "none")
	highlight("NvimTreeEmptyFolderName", colors.dark_4, "none", "bold", "none")
	highlight("NvimTreeOpenedFolderName", colors.dark_4, "none", "bold", "none")
	highlight("NvimTreeVertSplit", colors.light_2, colors.light_2, "none", "none")
	highlight("NvimTreeNormal", "none", colors.light_1, "none", "none")
	highlight("NvimTreeEndOfBuffer", colors.light_1, colors.light_1, "none", "none")

	highlight("BufferLineIndicatorSelected", "none", colors.light_2, "none", "none")
	highlight("BufferLineFill", "none", colors.light_3, "none", "none")

	highlight("LspFloatWinNormal", colors.dark_3, "none", "none", "none")
	highlight("LspFloatWinBorder", colors.light_4, "none", "none", "none")
	highlight("LspSagaHoverBorder", colors.light_4, "none", "none", "none")
	highlight("LspSagaSignatureHelpBorder", colors.light_4, "none", "none", "none")
	highlight("LspSagaCodeActionBorder", colors.light_4, "none", "none", "none")
	highlight("LspSagaDefPreviewBorder", colors.light_4, "none", "none", "none")
	highlight("LspLinesDiagBorder", colors.light_4, "none", "none", "none")
	highlight("LspSagaRenameBorder", colors.light_4, "none", "none", "none")
	highlight("LspSagaBorderTitle", colors.light_4, "none", "none", "none")
	highlight("LSPSagaDiagnosticTruncateLine", colors.light_4, "none", "none", "none")
	highlight("LspSagaDiagnosticBorder", colors.light_4, "none", "none", "none")
	highlight("LspSagaShTruncateLine", colors.light_6, "none", "none", "none")
	highlight("LspSagaDocTruncateLine", colors.light_6, "none", "none", "none")
	highlight("LspSagaLspFinderBorder", colors.light_4, "none", "none", "none")

	highlight("TelescopePromptBorder", colors.light_4, "none", "none", "none")
	highlight("TelescopeResultsBorder", colors.light_4, "none", "none", "none")
	highlight("TelescopePreviewBorder", colors.light_4, "none", "none", "none")
	highlight("TelescopeNormal", colors.dark_3, "none", "none", "none")
	highlight("TelescopeSelection", colors.light_2, colors.blue_5, "none", "none")
	highlight("TelescopeMultiSelection", colors.light_2, colors.blue_5, "none", "none")
	highlight("TelescopeMatching", colors.teal_5, "none", "bold", "none")
	highlight("TelescopePromptPrefix", colors.dark_3, "none", "bold", "none")

	highlight("LspReferenceText", "none", colors.blue_1, "none", "none")
	highlight("LspReferenceRead", "none", colors.blue_1, "none", "none")
	highlight("LspReferenceWrite", "none", colors.blue_1, "none", "none")
	highlight("DiagnosticError ", colors.red_2, "none", "none", "none")
	highlight("DiagnosticWarn ", colors.yellow_6, "none", "none", "none")
	highlight("DiagnosticHint ", colors.blue_4, "none", "none", "none")
	highlight("DiagnosticInfo ", colors.teal_5, "none", "none", "none")
	highlight("CocHighlightText", "none", colors.blue_1, "none", "none")
	highlight("CocHighlightRead", "none", colors.blue_1, "none", "none")
	highlight("CocHighlightWrite", "none", colors.blue_1, "none", "none")

	highlight("CmpItemKind", colors.dark_3, "none", "none", "none")

	highlight("GitSignsAddLn", colors.green_6, colors.green_2, "none", "none")
	highlight("GitSignsChangeLn", colors.orange_5, colors.orange_1, "none", "none")
	link_other_highlights()
end

return M
