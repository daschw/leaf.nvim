local leaf_colors = {
    -- light
    light0 = "#e1e4dc", -- 225,228,220
    light1 = "#d3d6ce", -- 211,214,206
    light2 = "#b1b4ac", -- 177,180,172
    -- dark
    dark0 = "#2e2c2f", -- 46,44,47
    dark1 = "#3c3a3d", -- 60,58,61
    dark2 = "#5e5c5f", -- 94,92,95
    -- colors
    red0 = "#ba5860", -- 186,88,96
    red1 = "#9d4b53", -- 157,75,83
    green0 = "#729b79", -- 114,155,121
    green1 = "#59795f", -- 89,121,95
    yellow0 = "#ccaa6c", -- 204,170,108
    yellow1 = "#a78a58", -- 167,138,88
    blue0 = "#5292c6", -- 82,146,198
    blue1 = "#40739a", -- 64,115,154
    purple0 = "#8c6aa8", -- 140,106,168
    purple1 = "#715688", -- 113,86,136
    teal0 = "#489ca5", -- 72,156,165
    teal1 = "#3b8187", -- 59,129,135
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
