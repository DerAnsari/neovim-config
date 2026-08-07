return {
    "nvim-lualine/lualine.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local function hl(name)
            return vim.api.nvim_get_hl(0, { name = name })
        end

        local function hex(n)
            return string.format("#%06x", n)
        end

        local normal = hl("Normal")
        local status = hl("StatusLine")
        local comment = hl("Comment")
        local keyword = hl("Keyword")
        local string = hl("String")
        local type = hl("Type")
        local error = hl("Error")

        local theme = {
            normal = {
                a = { fg = hex(normal.bg), bg = hex(keyword.fg), gui = "bold" },
                b = { fg = hex(normal.fg), bg = hex(status.bg) },
                c = { fg = hex(normal.fg), bg = hex(normal.bg) },
            },

            insert = {
                a = { fg = hex(normal.bg), bg = hex(string.fg), gui = "bold" },
            },

            visual = {
                a = { fg = hex(normal.bg), bg = hex(type.fg), gui = "bold" },
            },

            replace = {
                a = { fg = hex(normal.bg), bg = hex(error.fg), gui = "bold" },
            },

            command = {
                a = { fg = hex(normal.bg), bg = hex(keyword.fg), gui = "bold" },
            },

            inactive = {
                a = { fg = hex(comment.fg), bg = hex(normal.bg) },
                b = { fg = hex(comment.fg), bg = hex(normal.bg) },
                c = { fg = hex(comment.fg), bg = hex(normal.bg) },
            },
        }

        require("lualine").setup({
            options = {
                theme = theme,
                icons_enabled = true,
                component_separators = "|",
                section_separators = "",
            },
        })
    end,
}
