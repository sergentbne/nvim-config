local config = {
	"nvim-mini/mini.nvim",
	config = function()
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.surround").setup()
		require("mini.files").setup()
		require("mini.indentscope").setup()
		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = vim.g.have_nerd_font })
		statusline.section_location = function()
			return "%2l:%-2v"
		end
		vim.keymap.set("n", "<leader>e", function()
			require("mini.files").open()
		end, { desc = "MiniFiles: Open browser" })
		require('mini.tabline').setup({
			format = function(buf_id, label)
				return MiniTabline.default_format(buf_id, label)
			end,
		})
	end,
}
return config
