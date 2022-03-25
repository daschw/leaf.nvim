local colors = require("leaf.colors").setup()

local leaf = {}

leaf.normal = {
    a = { bg = colors.bg_dim, fg = colors.fg_normal },
    b = { bg = colors.bg_soft, fg = colors.fg_soft },
    c = { bg = colors.bg_normal, fg = colors.bg_dim },
}

leaf.insert = {
    a = { bg = colors.green_soft, fg = colors.bg_normal },
    b = { bg = colors.bg_normal, fg = colors.green_soft },
}

leaf.command = {
    a = { bg = colors.yellow_soft, fg = colors.bg_normal },
    b = { bg = colors.bg_normal, fg = colors.yellow_soft },
}

leaf.visual = {
    a = { bg = colors.purple_soft, fg = colors.bg_normal },
    b = { bg = colors.bg_normal, fg = colors.purple_soft },
}

leaf.replace = {
    a = { bg = colors.red_soft, fg = colors.bg_normal },
    b = { bg = colors.bg_normal, fg = colors.red_soft },
}

leaf.inactive = {
    a = { bg = colors.bg_normal, fg = colors.blue_soft },
    b = { bg = colors.bg_normal, fg = colors.bg_soft },
    c = { bg = colors.bg_normal, fg = colors.bg_dim },
}

if vim.g.leaf_lualine_bold then
    for _, mode in pairs(leaf) do
        mode.a.gui = "bold"
    end
end

return leaf
