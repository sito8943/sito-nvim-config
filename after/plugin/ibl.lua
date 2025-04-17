local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan"
}

vim.api.nvim_set_hl(0, "RainbowRed", { bg = "#300a0a", fg = "#E06C75"})
vim.api.nvim_set_hl(0, "RainbowYellow", { bg= "#30200a", fg = "#E5C07B"})
vim.api.nvim_set_hl(0, "RainbowBlue", { bg = "#0a0b30", fg = "#F1FA8C"})
vim.api.nvim_set_hl(0, "RainbowOrange", { bg = "#30120a", fg = "#FFB86C"})
vim.api.nvim_set_hl(0, "RainbowGreen", { bg = "#0a300b", fg = "#50FA7B"})
vim.api.nvim_set_hl(0, "RainbowViolet", { bg = "#290a30", fg = "#BD93F9"})
vim.api.nvim_set_hl(0, "RainbowCyan", { bg = "#0a2d30", fg = "#9BE9FD"})

require("ibl").setup {
    indent = { highlight = highlight, char = " " },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { highlight = highlight },
}
