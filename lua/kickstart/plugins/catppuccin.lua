return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    flavor = 'mocha',
    priority = 1000,
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      harpoon = true,
      treesitter = true,
      notify = false,
      mini = {
        enabled = true,
        indentscope_color = '',
      },
    },
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
-- vim: ts=2 sts=2 sw2 et
