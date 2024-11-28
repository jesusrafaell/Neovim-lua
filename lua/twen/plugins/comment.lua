return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		-- Import Comment.nvim and ts-context-commentstring
		local comment = require("Comment")
		local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

		-- Setup Comment.nvim
		comment.setup({
			pre_hook = ts_context_commentstring.create_pre_hook(),
		})

		-- Custom function to handle multi-line selections robustly
		local function toggle_multiline_comment()
			-- Escape visual mode to process the selection
			local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
			vim.api.nvim_feedkeys(esc, "nx", false)

			-- Process the visual selection line by line
			require("Comment.api").toggle.linewise(vim.fn.visualmode())
		end

		-- Set up key mappings
		local keymap = vim.keymap -- for conciseness

		-- Normal mode: Toggle comment on the current line
		keymap.set("n", "<C-_>", function()
			require("Comment.api").toggle.linewise.current()
		end, { noremap = true, silent = true, desc = "Toggle comment (line)" })

		-- Visual mode: Toggle comment for multiple lines
		keymap.set(
			"x",
			"<C-_>",
			toggle_multiline_comment,
			{ noremap = true, silent = true, desc = "Toggle comment (visual)" }
		)
	end,
}
