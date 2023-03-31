local colors = require("leaf.colors").setup()

local leaf = {}

leaf.normal = {
    a = { bg = colors.bg_dimmer, fg = colors.fg_normal },
    b = { bg = colors.bg_dim, fg = colors.fg_dim },
    c = { bg = colors.bg_normal, fg = colors.fg_dimmer },
}

leaf.insert = {
    a = { bg = colors.green_soft, fg = colors.bg_normal },
    b = { bg = colors.bg_normal, fg = colors.green_hard },
}

leaf.command = {
    a = { bg = colors.yellow_soft, fg = colors.bg_normal },
    b = { bg = colors.bg_normal, fg = colors.yellow_hard },
}

leaf.visual = {
    a = { bg = colors.purple_soft, fg = colors.bg_normal },
    b = { bg = colors.bg_normal, fg = colors.purple_hard },
}

leaf.replace = {
    a = { bg = colors.red_soft, fg = colors.bg_normal },
    b = { bg = colors.bg_normal, fg = colors.red_hard },
}

leaf.inactive = {
    a = { bg = colors.bg_normal, fg = colors.blue_hard },
    b = { bg = colors.bg_normal, fg = colors.bg_soft },
    c = { bg = colors.bg_normal, fg = colors.bg_dim },
}

if vim.g.leaf_lualine_bold then
    for _, mode in pairs(leaf) do
        mode.a.gui = "bold"
    end
end

return leaf
