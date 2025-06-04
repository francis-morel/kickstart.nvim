return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', lazy = true } },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_execute_on_save = 0
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'dbout',
      callback = function()
        vim.wo.foldenable = false
        vim.cmd 'set modifiable'
        vim.cmd [[g/Using a password on the command line interface can be insecure/execute 'normal! "_dd']]
      end,
    })
  end,
}
