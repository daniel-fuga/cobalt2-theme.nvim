-- Name: cobalt2
-- Description: Cobalt2 colorscheme for Neovim (Wes Bos palette)
-- Maintainer: Daniel Arauz
-- License: MIT

vim.cmd.highlight("clear")
vim.o.background = "dark"
vim.g.colors_name = "cobalt2"

local palette = require("cobalt2.palette")
local groups = require("cobalt2.highlights")
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

for name, spec in pairs(groups.syntax()) do
	hi(name, spec)
end

for name, spec in pairs(groups.diagnostics()) do
	hi(name, spec)
end

-- TODO: something's wrong
for name, target in pairs(links) do
	vim.api.nvim_echo({ { "Linking " .. name .. " to " .. target, "Normal" } }, false, {})
	hi(name, { link = target })
end

vim.g.terminal_ansi_colors = palette.ansi
