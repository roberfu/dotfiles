return {
	"mistweaverco/kulala.nvim",
	config = function()
		require("kulala").setup({
			-- default_view, body or headers or headers_body
			default_view = "body",
			-- dev, test, prod, can be anything
			-- see: https://learn.microsoft.com/en-us/aspnet/core/test/http-files?view=aspnetcore-8.0#environment-files
			default_env = "dev",
			-- enable/disable debug mode
			debug = false,
			-- default formatters for different content types
			formatters = {
				json = { "jq", "." },
				xml = { "xmllint", "--format", "-" },
				html = { "xmllint", "--format", "--html", "-" },
			},
			-- default icons
			icons = {
				inlay = {
					loading = "⏳",
					done = "✅",
					error = "❌",
				},
				lualine = "🐼",
			},
			-- additional cURL options
			-- see: https://curl.se/docs/manpage.html
			additional_curl_options = {},
			-- scratchpad default contents
			scratchpad_default_contents = {
				"@MY_TOKEN_NAME=my_token_value",
				"",
				"POST https://httpbin.org/post HTTP/1.1",
				"accept: application/json",
				"content-type: application/json",
				"# @name scratchpad",
				"",
				"{",
				'  "foo": "bar"',
				"}",
			},
			-- enable winbar
			winbar = false,
		})

		vim.keymap.set("n", "<leader>rr", ":lua require('kulala').run()<CR>", {})
	end,
}
