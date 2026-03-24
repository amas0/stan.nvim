if vim.g.loaded_stan_nvim then
  return
end
vim.g.loaded_stan_nvim = true

local ok, parsers = pcall(require, 'nvim-treesitter.parsers')
if not ok then
  return
end

if type(parsers.get_parser_configs) == 'function' then
  -- Old nvim-treesitter (master branch)
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
else
  -- New nvim-treesitter (main branch)
  local function register_stan_parser()
    require('nvim-treesitter.parsers').stan = {
      install_info = {
        url = 'https://github.com/WardBrian/tree-sitter-stan',
        location = 'grammars/stan',
      },
    }
  end
  register_stan_parser()
  vim.api.nvim_create_autocmd('User', {
    pattern = 'TSUpdate',
    callback = register_stan_parser,
  })
end
