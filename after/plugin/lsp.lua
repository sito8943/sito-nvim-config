-- LSP config
local lspconfig = require('lspconfig')
lspconfig.tsserver.setup{}

-- Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "html", "css", "json" },
  highlight = { enable = true },
}

-- Autocompletion config
local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
})

-- Load snippets
require("luasnip.loaders.from_vscode").lazy_load()
