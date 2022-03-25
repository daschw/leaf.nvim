local leaf_colors = {
    -- light
    light = "#e1e4dc", -- 225,228,220
    light_soft = "#d3d6ce", -- 211,214,206
    light_dim = "#b1b4ac", -- 177,180,172
    -- dark
    dark = "#2e2c2f", -- 46,44,47
    dark_soft = "#3c3a3d", -- 60,58,61
    dark_dim = "#5e5c5f", -- 94,92,95
    -- colors
    red_light = "#ba5860", -- 186,88,96
    red_dark = "#9d4b53", -- 157,75,83
    green_light = "#729b79", -- 114,155,121
    green_dark = "#59795f", -- 89,121,95
    yellow_light = "#ccaa6c", -- 204,170,108
    yellow_dark = "#a78a58", -- 167,138,88
    blue_light = "#5292c6", -- 82,146,198
    blue_dark = "#40739a", -- 64,115,154
    purple_light = "#8c6aa8", -- 140,106,168
    purple_dark = "#715688", -- 113,86,136
    teal_light = "#489ca5", -- 72,156,165
    teal_dark = "#3b8187", -- 59,129,135
}

local M = {}

--- generate color table
-- @param config config options containing colors and theme fields (optional)
-- @return table of palette colors and theme colors merged with config.colors
function M.setup(config)
    config = vim.tbl_extend("force", require("leaf").config, config or {})
    local colors = vim.tbl_extend("force", leaf_colors, config.colors)
    local theme = require("leaf.themes")[config.theme](colors)
    theme = vim.tbl_extend("force", theme, config.colors)
    return vim.tbl_extend("force", theme, colors)
end

return M
