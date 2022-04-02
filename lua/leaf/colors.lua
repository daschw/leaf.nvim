local leaf_colors = {
    -- light
    lightest = "#f7faf3", -- 247,250,243
    lighter = "#ecefe8", -- 236,239,232
    light = "#e1e4dc", -- 225,228,220
    light_dim = "#d3d6ce", -- 211,214,206
    light_dimmer = "#b1b4ac", -- 177,180,172
    light_dimmest = "#a6a9a1", -- 166,169,161
    -- dark
    darkest = "#161417", -- 22,20,23
    darker = "#211f22", -- 33,31,34
    dark = "#2e2c2f", -- 46,44,47
    dark_dim = "#3c3a3d", -- 60,58,61
    dark_dimmer = "#5e5c5f", -- 94,92,95
    dark_dimmest = "#69676a", -- 105,103,106

    -- red
    red_lightest = "#d06e76", -- 208,110,118
    red_lighter = "#c5636b", -- 197,99,107
    red_light = "#ba5860", -- 186,88,96
    red_dark = "#9d4b53", -- 157,75,83
    red_darker = "#924048", -- 146,64,72
    red_darkest = "#87353d", -- 135,53,61
    -- green
    green_lightest = "#88b18f", -- 136,177,143
    green_lighter = "#7da684", -- 125,166,132
    green_light = "#729b79", -- 114,155,121
    green_dark = "#59795f", -- 89,121,95
    green_darker = "#4e6e54", -- 78,110,84
    green_darkest = "#4e6349", -- 67,99,73
    -- yellow
    yellow_lightest = "#e2c082", -- 226,192,130
    yellow_lighter = "#d7b577", -- 215,181,119
    yellow_light = "#ccaa6c", -- 204,170,108
    yellow_dark = "#a78a58", -- 167,138,88
    yellow_darker = "#9c7f4d", -- 156,127,77
    yellow_darkest = "#917442", -- 145,116,66
    -- blue
    blue_lightest = "#68a8dc", -- 104,168,220
    blue_lighter = "#5d9dd1", -- 93,157,209
    blue_light = "#5292c6", -- 82,146,198
    blue_dark = "#40739a", -- 64,115,154
    blue_darker = "#35688f", -- 53,104,143
    blue_darkest = "#2a5d84", -- 42,93,132
    -- purple
    purple_lightest = "#a280be", -- 162,128,190
    purple_lighter = "#9775b3", -- 151,117,179
    purple_light = "#8c6aa8", -- 140,106,168
    purple_dark = "#715688", -- 113,86,136
    purple_darker = "#664b7d", -- 102,75,125
    purple_darkest = "#5b4072", -- 91,64,114
    --teal
    teal_lightest = "#5eb2bb", -- 94,178,187
    teal_lighter = "#53a7b0", -- 83,167,176
    teal_light = "#489ca5", -- 72,156,165
    teal_dark = "#3b8187", -- 59,129,135
    teal_darker = "#30767c", -- 48,118,124
    teal_darkest = "#256b71", -- 37,107,113
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
