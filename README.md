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

Works with both the old (`master`) and new (`main`) branches of nvim-treesitter:

```lua
{
  'amas0/stan.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
}
```

After installing, run `:TSInstall stan` to compile the parser.

> **Note:** If using nvim-treesitter `main` branch, you will need
> [`tree-sitter-cli`](https://github.com/tree-sitter/tree-sitter/blob/master/cli/README.md)
> (>= 0.26.1) installed, as required by the new branch for building parsers.

## Credits

- [WardBrian/tree-sitter-stan](https://github.com/WardBrian/tree-sitter-stan) — tree-sitter grammar

## License

MIT
