if vim.g.loaded_stan_nvim then
  return
end
vim.g.loaded_stan_nvim = true

local ok, parsers = pcall(require, 'nvim-treesitter.parsers')
if not ok then
  return
end

local parser_config = parsers.get_parser_configs()
parser_config.stan = {
  install_info = {
    url = 'https://github.com/WardBrian/tree-sitter-stan',
    files = { 'src/parser.c' },
    branch = 'main',
    location = 'grammars/stan',
  },
  filetype = 'stan',
}
