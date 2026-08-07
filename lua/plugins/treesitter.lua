return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
        require("nvim-treesitter").setup()

        require("nvim-treesitter").install({
            "lua",
            "nix",
            "vim",
            "vimdoc",
            "query",
            "bash",
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
