local leaf_colors = {
    -- light
    lightest = "#ecefe8", -- 236,239,232
    lighter = "#e7eae3", -- 231,234,227
    light = "#e1e4dc", -- 225,228,220
    light_dim = "#d3d6ce", -- 211,214,206
    -- light_dimer = "#c8cbc3", -- 200,203,195
    light_dimmer = "#b1b4ac", -- 177,180,172
    light_dimmest = "#a6a9a1", -- 166,169,161
    -- dark
    darkest = "#211f22", -- 33,31,34
    darker = "#262427", -- 38,36,39
    dark = "#2e2c2f", -- 46,44,47
    dark_dim = "#3c3a3d", -- 60,58,61
    -- dark_dimer = "#474548", -- 71,69,72
    dark_dimmer = "#5e5c5f", -- 94,92,95
    dark_dimmest = "#69676a", -- 105,103,106
    -- red
    red_lighter = "#c5636b", -- 197,99,107
    red_light = "#ba5860", -- 186,88,96
    red_dark = "#9d4b53", -- 157,75,83
    red_darker = "#924048", -- 146,64,72
    -- green
    green_lighter = "#7da684", -- 125,166,132
    green_light = "#729b79", -- 114,155,121
    green_dark = "#59795f", -- 89,121,95
    green_darker = "#4e6e54", -- 78,110,84
    -- yellow
    yellow_lighter = "#d7b577", -- 215,181,119
    yellow_light = "#ccaa6c", -- 204,170,108
    yellow_dark = "#a78a58", -- 167,138,88
    yellow_darker = "#9c7f4d", -- 156,127,77
    -- blue
    blue_lighter = "#5d9dd1", -- 93,157,209
    blue_light = "#5292c6", -- 82,146,198
    blue_dark = "#40739a", -- 64,115,154
    blue_darker = "#35688f", -- 53,104,143
    -- purple
    purple_lighter = "#9775b3", -- 151,117,179
    purple_light = "#8c6aa8", -- 140,106,168
    purple_dark = "#715688", -- 113,86,136
    purple_darker = "#664b7d", -- 102,75,125
    --teal
    teal_lighter = "#53a7b0", -- 83,167,176
    teal_light = "#489ca5", -- 72,156,165
    teal_dark = "#3b8187", -- 59,129,135
    teal_darker = "#30767c", -- 48,118,124
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
