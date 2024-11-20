return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup({ n_lines = 500 })

		require("mini.surround").setup()

		require("mini.ai").setup()

		require("mini.animate").setup({
			cursor = { enable = false },
			resize = { enable = false },
			scroll = { enable = false },
			open = { enable = false },
			close = { enable = false },
		})

		require("mini.icons").setup()
		local statusline = require("mini.statusline")
		statusline.setup()
		statusline.section_location = function()
			return ""
		end
		-- Note Visual Block doesnt show up on botthom after "V" bug?
		-- https://github.com/echasnovski/mini.nvim
	end,
}
