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

		-- store your solutions in a git repo instead of the default data dir
		storage = {
			home = vim.fn.expand("~/dev/leetcode-solutions"),
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

		hooks = {
			-- pull the latest solutions the moment you open the leetcode dashboard
			enter = {
				function()
					local dir = vim.fn.expand("~/dev/leetcode-solutions")
					local result = vim.fn.system({ "git", "-C", dir, "pull", "--rebase" })
					if vim.v.shell_error ~= 0 then
						vim.notify("leetcode sync: git pull failed\n" .. result, vim.log.levels.WARN)
					end
				end,
			},
			-- commit + push whatever changed once you close the dashboard
			leave = {
				function()
					local dir = vim.fn.expand("~/dev/leetcode-solutions")
					local msg = "leetcode: " .. os.date("%Y-%m-%d %H:%M")
					vim.fn.jobstart({
						"bash",
						"-c",
						string.format(
							"cd %s && git add -A && (git diff --cached --quiet || (git commit -m %q && git push))",
							dir,
							msg
						),
					}, { detach = true })
				end,
			},
		},
	},
}
