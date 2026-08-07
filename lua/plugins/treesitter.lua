-- ~/.config/nvim/lua/plugins/treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      -- A list of parser names you want installed automatically
      ensure_installed = { 
        "c", 
        "cpp", 
        "glsl", 
        "lua", 
        "rust",
        "go",
        "c_sharp",
        "python",
        "bash",
        "markdown",
        "markdown_inline",
        "nix", 
        "vim", 
        "vimdoc", 
        "query" 
      },

      -- Automatically install missing parsers when entering buffer
      auto_install = true,

      highlight = {
        enable = true,
        -- Disables standard vim highlighting for these languages
        additional_vim_regex_highlighting = false,
      },
      
      indent = { enable = true },
    })
  end
}
