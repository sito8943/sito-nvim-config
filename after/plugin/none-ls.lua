local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier.with({
            filetypes = { "javascript", "javascriptreact", "json", "jsonc" },
            extra_args = { "--single-quote", "false" } -- force double quotes
        })
    }
})

-- setting shift+alt+f
vim.keymap.set("n", "<S-A-f>", vim.lsp.buf.format, {})
