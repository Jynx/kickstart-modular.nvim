-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- remove the need for adding flags to nvim command for godot
-- local gdproject = io.open(vim.fn.getcwd() .. '/project.godot', 'r')
-- if gdproject then
--   io.close(gdproject)
--   vim.fn.serverstart './godothost'
-- end
-- vim: ts=2 sts=2 sw=2 et
