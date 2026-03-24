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

Works with both the old (`master`) and new (`main`) branches of nvim-treesitter.
After installing, run `:TSInstall stan` to compile the parser.

#### nvim-treesitter `master` branch

The old `master` branch handles highlighting via its own config:

```lua
{
  'nvim-treesitter/nvim-treesitter',
  main = 'nvim-treesitter.configs',
  opts = { highlight = { enable = true } },
},
{
  'amas0/stan.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
}
```

#### nvim-treesitter `main` branch

The new `main` branch is a parser installer only — it no longer manages highlighting.
You need to enable treesitter highlighting yourself, the below example config
should do it:

```lua
{
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  build = ':TSUpdate',
  lazy = false,
  config = function()
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
   })
  end,
},
{
  'amas0/stan.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
}
```

> **Note:** The `main` branch requires
> [`tree-sitter-cli`](https://github.com/tree-sitter/tree-sitter/blob/master/cli/README.md)
> (>= 0.26.1) installed for building parsers.

## Credits

- [WardBrian/tree-sitter-stan](https://github.com/WardBrian/tree-sitter-stan) — tree-sitter grammar

## License

MIT
