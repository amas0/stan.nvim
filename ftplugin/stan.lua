if vim.b.did_ftplugin then
  return
end
vim.b.did_ftplugin = true

vim.bo.commentstring = '// %s'
vim.bo.shiftwidth = 2
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.expandtab = true

vim.b.undo_ftplugin = 'setlocal commentstring< shiftwidth< tabstop< softtabstop< expandtab<'
