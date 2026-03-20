# stan.nvim

Neovim plugin for the [Stan](https://mc-stan.org/) probabilistic programming language. Provides filetype detection, tree-sitter syntax highlighting, and sensible editor defaults.

## Features

- Filetype detection for `.stan` files
- Tree-sitter parser registration for syntax highlighting
- Highlight and locals queries

## Requirements

- Neovim >= 0.9.0
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'amas0/stan.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
}
```

After installing, run `:TSInstall stan` to compile the parser.

## Credits

- [WardBrian/tree-sitter-stan](https://github.com/WardBrian/tree-sitter-stan) — tree-sitter grammar

## License

MIT
