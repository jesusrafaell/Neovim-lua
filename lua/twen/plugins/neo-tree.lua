return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = false, -- Close Neo-tree if last window
			filesystem = {
				filtered_items = {
					hide_dotfiles = false, -- show hiddens files
					hide_gitignored = false, -- hidden files by gitignore
				},
				follow_current_file = true, -- follow current file
			},
			buffers = {
				follow_current_file = true,
			},
			git_status = {
				window = {
					position = "float",
				},
			},
			default_component_configs = {
				indent = {
					with_markers = true, -- add markers for identification
				},
				icon = {
					folder_closed = "",
					folder_open = "",
				},
			},
			window = {
				mappings = {
					["o"] = "open", -- Use 'o' to open files or directories
					["<leader>"] = "open", -- Use 'o' to open files or directories
					["<CR>"] = "open", -- Keep <Enter> to open as well
					["s"] = "split_with_window_picker", -- Open in horizontal split
					["v"] = "vsplit_with_window_picker", -- Open in vertical split
					["<C-x>"] = "close_node", -- Close folder or file node
				},
			},
		})

		-- Keybindings
		local keymap = vim.keymap
		keymap.set("n", "<leader>nt", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
		keymap.set("n", "<leader>ef", "<cmd>Neotree reveal<CR>", { desc = "Reveal current file in Neo-tree" })
	end,
}
