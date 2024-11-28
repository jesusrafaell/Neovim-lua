return {
	"iamcco/markdown-preview.nvim",
	build = "cd app && npm install",
	ft = { "markdown" }, -- Load only for markdown files
	config = function()
		vim.g.mkdp_auto_start = 1 -- Automatically start Markdown preview
		vim.g.mkdp_auto_close = 1 -- Close preview when the buffer is hidden
		vim.g.mkdp_refresh_slow = 0 -- Refresh preview in real-time
		vim.g.mkdp_open_to_the_world = 0 -- Do not expose to other devices
		vim.g.mkdp_port = "8080" -- Use port 8080
		vim.g.mkdp_browser = "firefox" -- Automatically open in Firefox
	end,
}
-- vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>", { desc = "Start Markdown Preview" })
-- vim.keymap.set("n", "<leader>ms", ":MarkdownPreviewStop<CR>", { desc = "Stop Markdown Preview" })
-- vim.keymap.set("n", "<leader>mt", ":MarkdownPreviewToggle<CR>", { desc = "Toggle Markdown Preview" })
