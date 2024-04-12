return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
      local harpoon = require 'harpoon'
      harpoon.setup()

      local map = function(keys, func, desc)
        vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
      end

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():append()
      end, { desc = 'Add to Harpoon' })

      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set('n', '<a-1>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<a-2>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<a-3>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<a-4>', function()
        harpoon:list():select(4)
      end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<C-a-P>', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', '<C-a-N>', function()
        harpoon:list():next()
      end)
    end,
  },
}
