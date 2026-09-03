--- Cobalt2 palette (Wes Bos / cobalt2-vscode / cobalt2.nvim lineage).
---@class cobalt2.Palette
local M = {
  bg = '#193549',
  bg_dark = '#122738',
  bg_float = '#15232d',
  fg = '#FFFFFF',

  black = '#1C1C1C',
  grey = '#808080',
  light_grey = '#9E9E9E',
  lighter_grey = '#BCBCBC',

  yellow = '#FFC600',
  light_yellow = '#F2ED7F',
  orange = '#FF9A00',
  light_orange = '#FF9D00',

  green = '#3AD900',
  light_green = '#88FF88',

  blue = '#0088FF',
  light_blue = '#80FCFF',
  darker_blue = '#0050A4',
  dark_blue = '#0088FF',
  dirty_blue = '#668799',
  dark_purple = '#345FA8',
  greyish_blue = '#8fbfdc',

  pink = '#FF628C',
  light_pink = '#DEEBFE',
  type_pink = '#FF68B8',
  property_cyan = '#9EFFFF',

  red = '#FF0000',
  dark_red = '#A22929',
  error = '#FF5630',

  cursor_line = '#0d3a58',
  cursor_hover = '#185294',
  line_highlight = '#1F4662',
  selection = '#0050A4',

  -- Standard 16-color terminal palette for g:terminal_ansi_colors
  ansi = {
    '#193549',
    '#A22929',
    '#3AD900',
    '#FFC600',
    '#0088FF',
    '#FF628C',
    '#80FCFF',
    '#FFFFFF',
    '#626262',
    '#FF5630',
    '#88FF88',
    '#F2ED7F',
    '#00AAFF',
    '#FF68B8',
    '#9EFFFF',
    '#FFFFFF',
  },
}

return M
