return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    vim.keymap.set({ 'n' }, '<leader>m', require('harpoon.mark').add_file, { desc = 'Harpoon: [m]ark harpoon buffer' })
    vim.keymap.set({ 'n' }, '<leader>hh', require('harpoon.ui').toggle_quick_menu, { desc = 'Harpoon: Open [h]arpoon ui' })
    vim.keymap.set({ 'n' }, '<leader>y', function()
      require('harpoon.ui').nav_file(1)
    end, { desc = 'Harpoon: Open marked buffer 1' })
    vim.keymap.set({ 'n' }, '<leader>u', function()
      require('harpoon.ui').nav_file(2)
    end, { desc = 'Harpoon: Open marked buffer 2' })
    vim.keymap.set({ 'n' }, '<leader>i', function()
      require('harpoon.ui').nav_file(3)
    end, { desc = 'Harpoon: Open marked buffer 3' })
    vim.keymap.set({ 'n' }, '<leader>o', function()
      require('harpoon.ui').nav_file(4)
    end, { desc = 'Harpoon: Open marked buffer 4' })
  end,
}
