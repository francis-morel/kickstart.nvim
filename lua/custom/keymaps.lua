local openTerminal = function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd 'J'
  vim.api.nvim_win_set_height(0, 15)
  vim.cmd 'startinsert'
end

vim.keymap.set('n', '<leader>st', openTerminal, { desc = 'Open [T]erminal' })
vim.keymap.set('n', '<leader>sT', function()
  openTerminal()
  vim.api.nvim_chan_send(vim.b.terminal_job_id, 'php artisan tinker\r')
end, { desc = 'Open [T]inker' })
vim.keymap.set('n', '<leader>sp', 'vip:sort<CR>', { desc = 'Sort [P]aragraph' })
