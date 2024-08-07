return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local function generate_header()
			local header = {
				"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
				"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
				"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
				"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
				"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
				"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
			}

			local win_width = 120 -- Ancho de Wezterm

			local centered_header = {}
			for _, line in ipairs(header) do
				local padding = string.rep(" ", math.floor((win_width - #line) / 2))
				table.insert(centered_header, padding .. line)
			end

			return centered_header
		end

		dashboard.section.header.val = generate_header()

		dashboard.section.buttons.val = {
			dashboard.button("f", "  Buscar archivo", ":Telescope find_files <CR>"),
			dashboard.button("e", "  Nuevo archivo", ":ene <BAR> startinsert <CR>"),
			dashboard.button("r", "  Archivos recientes", ":Telescope oldfiles <CR>"),
			dashboard.button("q", "  Salir de Neovim", ":qa<CR>"),
		}

		local function padding(n)
			return { type = "padding", val = n }
		end

		local win_height = 30
		local header_height = #dashboard.section.header.val
		local buttons_height = #dashboard.section.buttons.val
		local content_height = header_height + buttons_height + 1

		local padding_top = math.floor((win_height - content_height) / 2)
		local padding_bottom = win_height - content_height - padding_top

		dashboard.config.layout = {
			padding(padding_top),
			dashboard.section.header,
			padding(1),
			dashboard.section.buttons,
			padding(padding_bottom),
		}

		alpha.setup(dashboard.config)
	end,
}

