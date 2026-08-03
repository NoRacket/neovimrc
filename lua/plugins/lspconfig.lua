return {
	'neovim/nvim-lspconfig',
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},

	config = function()
		local cmp = require('cmp')
		--local cmp_lsp = require("cmp_nvim_lsp")
		local cmp_select = { behavior = cmp.SelectBehavior.Select }

		cmp.setup({
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
				['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
				['<Tab>'] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' }, -- For luasnip users.
			}, {
				{ name = 'buffer' },
			})
		})

		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		vim.lsp.config("jdtls", {
			capabilities = capabilities
		})
		vim.lsp.config("gdscript", {
			capabilities = capabilities
		})
		local godot_projectfile = vim.uv.cwd() .. "/project.godot"
		local function file_exists(file)
			stat = vim.uv.fs_stat(file)
			return stat ~= nil and stat.type == "file"
		end
		if file_exists(godot_projectfile) then
			vim.fn.serverstart "./godothost"
			vim.lsp.enable("gdscript")
		end

	end
}
