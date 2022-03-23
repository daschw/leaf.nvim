local colors = require("leaf.colors").setup()

local leaf = {}

leaf.normal = {
    a = { bg = colors.bg2, fg = colors.fg0 },
    b = { bg = colors.bg1, fg = colors.fg1 },
    c = { bg = colors.bg0, fg = colors.bg2 },
}

leaf.insert = {
    a = { bg = colors.green0, fg = colors.bg0 },
    b = { bg = colors.bg0, fg = colors.green0 },
}

leaf.command = {
    a = { bg = colors.yellow0, fg = colors.bg0 },
    b = { bg = colors.bg0, fg = colors.yellow0 },
}

leaf.visual = {
    a = { bg = colors.purple0, fg = colors.bg0 },
    b = { bg = colors.bg0, fg = colors.purple0 },
}

leaf.replace = {
    a = { bg = colors.red0, fg = colors.bg0 },
    b = { bg = colors.bg0, fg = colors.red0 },
}

leaf.inactive = {
    a = { bg = colors.bg0, fg = colors.blue0 },
    b = { bg = colors.bg0, fg = colors.bg1 },
    c = { bg = colors.bg0, fg = colors.bg2 },
}

if vim.g.leaf_lualine_bold then
    for _, mode in pairs(leaf) do
        mode.a.gui = "bold"
    end
end

return leaf
