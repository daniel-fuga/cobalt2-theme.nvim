-- Name: cobalt2
-- Description: Cobalt2 colorscheme for Neovim (Wes Bos palette)
-- Maintainer: Daniel Arauz
-- License: MIT

vim.cmd.highlight("clear")
vim.o.background = "dark"
vim.g.colors_name = "cobalt2"

local palette = require("cobalt2.palette")
local groups = require("cobalt2.highlights")
local p = palette
local syntax = {
	Comment = { fg = p.blue, italic = true },
	Constant = { fg = p.light_pink },
	String = { fg = p.light_green },
	Character = { fg = p.pink },
	Number = { fg = p.pink },
	Boolean = { fg = p.pink, italic = true },
	Float = { fg = p.pink },
	Identifier = { fg = p.orange },
	Function = { fg = p.orange },
	Statement = { fg = p.fg },
	Conditional = { fg = p.orange },
	Repeat = { fg = p.pink },
	Label = { fg = p.yellow },
	Operator = { fg = p.blue },
	Keyword = { fg = p.orange, italic = true },
	Exception = { fg = p.orange, italic = true },
	PreProc = { fg = p.orange },
	Include = { fg = p.pink, italic = true },
	Define = { fg = p.orange, italic = true },
	Macro = { fg = p.yellow },
	PreCondit = { fg = p.orange },
	Type = { fg = p.yellow },
	StorageClass = { fg = p.light_orange },
	Structure = { fg = p.blue, italic = true },
	Typedef = { fg = p.orange },
	Special = { fg = p.fg },
	SpecialChar = { fg = p.pink },
	Tag = { fg = p.light_blue },
	Delimiter = { fg = p.dirty_blue },
	SpecialComment = { fg = p.light_green, italic = true },
	Debug = { fg = p.light_green, italic = true },
	Underlined = { fg = p.light_green, underline = true },
	Ignore = { fg = p.grey, italic = true },
	Title = { fg = p.green, bold = true },
	Strikethrough = { fg = p.grey, strikethrough = true },
	Rainbow1 = { fg = p.error, bold = true },
	Rainbow2 = { fg = p.orange, bold = true },
	Rainbow3 = { fg = p.yellow, bold = true },
	Rainbow4 = { fg = p.green, bold = true },
	Rainbow5 = { fg = p.blue, bold = true },
	Rainbow6 = { fg = p.type_pink, bold = true },
}

local links = {
	VertSplit = "WinSeparator",
	WinBarNC = "WinBar",
	DiffTextAdd = "DiffText",
	EndOfBuffer = "NonText",
	LineNrAbove = "LineNr",
	LineNrBelow = "LineNr",
	CursorLineSign = "SignColumn",
	CursorLineFold = "FoldColumn",
	PmenuKind = "Pmenu",
	PmenuKindSel = "PmenuSel",
	PmenuMatch = "Pmenu",
	PmenuMatchSel = "PmenuSel",
	PmenuExtra = "Pmenu",
	PmenuExtraSel = "PmenuSel",
	PreInsert = "Added",
	ComplHint = "NonText",
	ComplHintMore = "MoreMsg",
	Substitute = "Search",
	diffAdded = "Added",
	diffRemoved = "Removed",
	diffChanged = "Changed",
	-- TreeSitter
	["@text"] = "Normal",
	["@text.literal"] = "String",
	["@text.reference"] = "Identifier",
	["@text.title"] = "Title",
	["@text.uri"] = "Underlined",
	["@text.underline"] = "Underlined",
	["@text.todo"] = "Todo",
	["@text.note"] = "Comment",
	["@text.warning"] = "WarningMsg",
	["@text.danger"] = "ErrorMsg",
	-- TreeSitter comments
	["@comment"] = "Comment",
	["@comment.documentation"] = "Comment",
	["@comment.todo"] = "Todo",
	["@comment.warning"] = "WarningMsg",
	["@comment.error"] = "ErrorMsg",
	["@comment.hint"] = "MoreMsg",
	["@comment.note"] = "Comment",
	-- Treesitter: constants & literals
	["@constant"] = "Constant",
	["@constant.builtin"] = "Special",
	["@constant.macro"] = "Define",
	["@string"] = "String",
	["@string.documentation"] = "String",
	["@string.escape"] = "SpecialChar",
	["@string.regexp"] = "SpecialChar",
	["@string.special"] = "SpecialChar",
	["@string.special.path"] = "Special",
	["@string.special.symbol"] = "Constant",
	["@string.special.url"] = "Underlined",
	["@character"] = "Character",
	["@character.special"] = "SpecialChar",
	["@number"] = "Number",
	["@boolean"] = "Boolean",
	["@number.float"] = "Float",
	-- Treesitter: identifiers & properties
	["@variable"] = "Statement",
	["@variable.parameter"] = "Special",
	["@variable.parameter.builtin"] = "Special",
	["@variable.member"] = "Statement",
	["@property"] = "Constant",
	["@attribute"] = "Constant",
	["@attribute.builtin"] = "Special",
	["@module"] = "Identifier",
	["@label"] = "Label",
	-- Treesitter: functions
	["@function"] = "Label",
	["@function.call"] = "Label",
	["@function.builtin"] = "Function",
	["@function.macro"] = "Label",
	["@function.method"] = "Label",
	["@function.method.call"] = "Label",
	["@constructor"] = "Function",
	["@constructor.lua"] = "Delimiter",
	-- Treesitter: keywords
	["@keyword"] = "Keyword",
	["@keyword.modifier"] = "Boolean",
	["@keyword.coroutine"] = "Boolean",
	["@keyword.function"] = "Boolean",
	["@keyword.operator"] = "Keyword",
	["@keyword.return"] = "Boolean",
	["@keyword.export"] = "Keyword",
	["@keyword.conditional"] = "Conditional",
	["@keyword.conditional.ternary"] = "Operator",
	["@keyword.repeat"] = "Repeat",
	["@keyword.type"] = "Structure",
	["@keyword.exception"] = "Exception",
	["@keyword.debug"] = "Debug",
	["@keyword.import"] = "Include",
	["@keyword.directive"] = "Include",
	["@keyword.directive.define"] = "Define",
	["@operator"] = "Operator",
	-- Treesitter: types
	["@type"] = "Type",
	["@type.builtin"] = "Type",
	["@type.definition"] = "Typedef",
	-- Treesitter: punctuation & tags
	["@punctuation"] = "Delimiter",
	["@punctuation.delimiter"] = "Delimiter",
	["@punctuation.bracket"] = "Delimiter",
	["@punctuation.special"] = "Special",
	["@tag"] = "Tag",
	["@tag.builtin"] = "Special",
	["@tag.attribute"] = "Macro",
	["@tag.delimiter"] = "Delimiter",
	-- Treesitter: markup
	["@markup.link"] = "Identifier",
	["@markup.link.label"] = "Identifier",
	["@markup.link.url"] = "Underlined",
	["@markup.raw"] = "Comment",
	["@markup.heading"] = "Title",
	["@markup.heading.markdown"] = "Title",
	["@markup.heading.1.markdown"] = "Rainbow1",
	["@markup.heading.2.markdown"] = "Rainbow2",
	["@markup.heading.3.markdown"] = "Rainbow3",
	["@markup.heading.4.markdown"] = "Rainbow4",
	["@markup.heading.5.markdown"] = "Rainbow5",
	["@markup.heading.6.markdown"] = "Rainbow6",
	["@markup.heading.html"] = "Title",
	["@markup.heading.1.html"] = "Title",
	["@markup.heading.2.html"] = "Title",
	["@markup.heading.3.html"] = "Title",
	["@markup.heading.4.html"] = "Title",
	["@markup.heading.5.html"] = "Title",
	["@markup.heading.6.html"] = "Title",
	["@markup.underline"] = "Underlined",
	["@markup.strikethrough"] = "Strikethrough",
	["@markup.strong"] = "Title",
	["@markup.italic"] = "SpecialComment",
	["@markup.quote"] = "Comment",
	["@markup.math"] = "Function",
	["@markup.environment"] = "PreProc",
	["@markup.environment.name"] = "Type",
	["@markup.list"] = "Label",
	["@markup.list.checked"] = "Added",
	["@markup.list.unchecked"] = "Ignore",
	-- Treesitter: diff
	["@diff.plus"] = "diffAdded",
	["@diff.minus"] = "diffRemoved",
	["@diff.delta"] = "diffChanged",
	["@error"] = "Error",
}

---@param name string
---@param val vim.api.keyset.highlight
local function hi(name, val)
	val.force = true
	val.cterm = val.cterm or {}
	vim.api.nvim_set_hl(0, name, val)
end

for name, spec in pairs(groups.ui()) do
	hi(name, spec)
end

for name, spec in pairs(syntax) do
	hi(name, spec)
end

for name, spec in pairs(groups.diagnostics()) do
	hi(name, spec)
end

-- TODO: something's wrong
for name, target in pairs(links) do
	hi(name, { link = target })
end

vim.g.terminal_ansi_colors = palette.ansi
