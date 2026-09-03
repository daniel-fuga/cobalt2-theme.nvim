-- Name: cobalt2
-- Description: Cobalt2 colorscheme for Neovim (Wes Bos palette)
-- Maintainer: Daniel Arauz
-- License: MIT

vim.cmd.highlight("clear")
vim.o.background = "dark"
vim.g.colors_name = "cobalt2"

local palette = require("cobalt2.palette")
local groups = require("cobalt2.highlights")

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

for name, target in pairs(groups.links()) do
	vim.api.nvim_echo({ { "Linking " .. name .. " to " .. target, "Normal" } }, false, {})
	-- print(name, target)
	-- vim.api.nvim_set_hl(0, name, { link = target })
end

vim.g.terminal_ansi_colors = palette.ansi
