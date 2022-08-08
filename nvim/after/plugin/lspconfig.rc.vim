if !exists('g:lspconfig')
	finish
endif

lua << EOF

-- this nvim_lsp var underneath is a placeholder for the require line used in every lsp addition

local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

require'lspconfig'.clangd.setup{}

-- this section underneath maps keys on lsp attachment

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr,...) end
	local function buf_set_option(...) vim.api.nvim.buf_set_option(bufnr,...) end

	--mappings

	local opts = { noremap = true, silent = true }

	buf_set_keymap('n','gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
	buf_set_keymap('n','gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	buf_set_keymap('n','gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
	buf_set_keymap('n','gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	buf_set_keymap('n','K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
	buf_set_keymap('n','C-k', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
	buf_set_keymap('n','C-p', '<Cmd>lua vim.lsp.buf.goto_next()<CR>', opts)
	buf_set_keymap('n','C-n', '<Cmd>lua vim.lsp.buf.goto_prev()<CR>', opts)

end

-- this section is used to attach lsps
nvim_lsp.clangd.setup {
	on_attach = on_attach,
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda" }
	}




nvim_lsp.tsserver.setup {
	on_attach = on_attach,
	filetypes = {"typescript", "typescriptreact","typescript.tsx" }
	}

EOF
