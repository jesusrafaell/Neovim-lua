return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		local transparent = false -- set to true if you would like to enable transparency

		-- Define custom colors if needed
		local bg = "#282828"
		local bg_dark = "#1d2021"
		local bg_highlight = "#3c3836"
		local bg_visual = "#504945"
		-- local fg = "#ebdbb2"
		-- local fg_dark = "#d5c4a1"
		local fg_gutter = "#928374"
		local border = "#7c6f64"

		require("gruvbox").setup({
			contrast = "hard", -- can be "soft", "medium", or "hard"
			transparent_mode = transparent,
			overrides = {
				Normal = { bg = transparent and "none" or bg },
				NormalFloat = { bg = transparent and "none" or bg_dark },
				FloatBorder = { fg = border, bg = transparent and "none" or bg_dark },
				Visual = { bg = bg_visual },
				CursorLine = { bg = bg_highlight },
				LineNr = { fg = fg_gutter },
				Comment = { fg = fg_gutter, italic = true },
			},
		})

		-- Apply the colorscheme
		vim.cmd("colorscheme gruvbox")
	end,
}
