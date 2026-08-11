return {
	"kawre/leetcode.nvim",
	build = ":TSUpdate html", -- treesitter parser for rendering problem descriptions
	lazy = "codecompanion.nvim" ~= vim.fn.expand("%:t"), -- ignore this, just standard lazy-load guard
	cmd = "Leet",
	dependencies = {
		"nvim-telescope/telescope.nvim", -- you already have this
		"nvim-lua/plenary.nvim", -- pulled in transitively by telescope, but list explicitly
		"MunifTanjim/nui.nvim",
	},
	opts = {
		-- configure the language you want to default to
		lang = "cpp", -- or "python3", "javascript", "go", etc.

		-- store your solutions somewhere in your dotfiles/home so they persist
		storage = {
			home = vim.fn.stdpath("data") .. "/leetcode",
			cache = vim.fn.stdpath("cache") .. "/leetcode",
		},

		console = {
			open_on_runcode = true,
		},

		picker = { provider = "telescope" },

		-- keep the description pane readable
		description = {
			position = "left",
			width = "40%",
		},
	},
}
