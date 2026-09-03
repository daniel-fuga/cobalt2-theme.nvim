# cobalt2-theme.nvim

Cobalt2 colorscheme for Neovim, using the [Wes Bos Cobalt2](https://github.com/wesbos/cobalt2-vscode) palette.

Built for Neovim 0.10+ with explicit UI, syntax, Treesitter, diagnostic, and LSP semantic highlight groups (no colorbuddy dependency).

## Install

### vim.pack (Neovim 0.12+)

```lua
vim.o.termguicolors = true
vim.pack.add { 'https://github.com/daniel-fuga/cobalt2-theme.nvim' }
vim.cmd.colorscheme 'cobalt2'
```

Local development:

```lua
vim.pack.add {
  { src = 'file:///Users/daniel/cobalt2-theme.nvim', name = 'cobalt2-theme.nvim' },
}
```

### lazy.nvim

```lua
{
  'daniel-fuga/cobalt2-theme.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'cobalt2'
  end,
}
```

## Usage

```vim
:colorscheme cobalt2
```

Dark theme only.

## Credits

- [Wes Bos](https://github.com/wesbos/cobalt2-vscode) for the Cobalt2 palette
- [lalitmee/cobalt2.nvim](https://github.com/lalitmee/cobalt2.nvim) for Neovim color mapping reference

## License

MIT
