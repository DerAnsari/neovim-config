return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function()
      require("nvim-treesitter").setup()
  
  require("nvim-treesitter").install({
      "lua",
      "vim",
      "vimdoc",
      "query",

      "bash",
      "nix",

      "c",
      "cpp",
      "c_sharp",
      "rust",
      "go",

      "python",

      "javascript",
      "typescript",

      "html",
      "css",
      "json",

      "markdown",
      "markdown_inline",
  })
  end,
}
