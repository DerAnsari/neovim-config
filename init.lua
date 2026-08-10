-- ~/.config/nvim/init.lua

-- 1. Load your vim options first
require("config.options")
require("config.keymaps")

-- 2. Boot up the plugin manager
require("config.lazy")

-- 3. Load Noctalia-generated colors if present
local ok, matugen = pcall(require, "matugen")
if ok then
	matugen.setup()
end
