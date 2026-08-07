-- ~/.config/nvim/lua/plugins/treesitter.lua

return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    -- 1. Initialize treesitter
    require('nvim-treesitter').setup({
      install_dir = vim.fn.stdpath('data') .. '/site'
    })

    -- 2. Install parsers
    require('nvim-treesitter').install({
      'c', 'cpp', 'glsl', 'lua', 'nix', 
      'rust', 'go', 'c_sharp', 'python', 'bash', 'markdown', 'markdown_inline'
    })

    -- 3. Enable highlighting natively
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { '*' },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end
}
