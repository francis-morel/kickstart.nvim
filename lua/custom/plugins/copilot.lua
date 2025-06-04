return {
  'CopilotC-Nvim/CopilotChat.nvim',
  dependencies = {
    {
      'github/copilot.vim',
      config = function()
        vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
          expr = true,
          replace_keycodes = false,
        })
        vim.g.copilot_no_tab_map = true
      end,
    },
    { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log wrapper
  },
  opts = {},
  keys = {
    {
      '<leader>c',
      mode = 'n',
      function()
        require('CopilotChat').toggle()
      end,
      desc = 'Toggle Copilot Chat',
    },
  },
}
