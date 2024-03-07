return {
	"akinsho/flutter-tools.nvim",
	dependnecies = { "nvim-lua/plenary.nvim", "nvim-lua/popup.nvim" },
	-- ft ...filetype not sure about this
	ft = { "dart" },
	config = function()
		require("flutter-tools").setup({
			fvm = true,
			-- flutter_path = "/path/to/flutter/bin/flutter",
			-- dart_sdk_path = "/path/to/flutter/bin/cache/dart-sdk",
			ui = {
				-- the border type to use for all floating windows, the same options/formats
				-- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
				border = "rounded",
				-- This determines whether notifications are show with `vim.notify` or with the plugin's custom UI
				-- please note that this option is eventually going to be deprecated and users will need to
				-- depend on plugins like `nvim-notify` instead.
				notification_style = "plugin",
			},

			debugger = { enabled = true },
			widget_guides = { enabled = true },
			dev_log = { open_cmd = "tabedit" },
			lsp = {
				-- on_attach = require("lsp").on_attach,
				enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
				background = false, -- highlight the background
				foreground = false, -- highlight the foreground
				virtual_text = true, -- show the highlight using virtual text
				virtual_text_str = "■", -- the virtual text character to highlight

				settings = {
					showTodos = true,
					completeFunctionCalls = true,
					widgetGuides = {
						enabled = true,
					},
				},
			},
		})
	end,
}
