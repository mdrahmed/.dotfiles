local lsp = require("lsp-zero")

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'tsserver', 'lua_ls', 'pyright', 'clangd' },
    handlers = {
        lsp.default_setup,
    },
})

-- ensure_installed has been removed in newer versions, following is the new way
lsp.setup_servers({ 'tsserver', 'rust_analyzer', 'eslint' })

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_action = lsp.cmp_action()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		--['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		--['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		--['<C-y>'] = cmp.mapping.confirm({ select = true }),
		--['<C-Space>'] = cmp.mapping.complete(),

        -- Instead of all of those above mappings just use 'enter/keep typing' to select
        -- move next with C-n and move previous with C-p
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	})
})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}

    -- 'gd' will take you to the definition in cpp files
	vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
    -- 'gD' will take you to the declaration in header files
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
