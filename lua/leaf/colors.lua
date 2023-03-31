local leaf_colors = {
    -- light
    lightest = "#fdfff8", -- 253,255,248
    lighter = "#eff2ea", -- 239,242,234
    light = "#e1e4dc", -- 225,228,220
    light_dim = "#d3d6ce", -- 211,214,206
    light_dimmer = "#c5c8c0", -- 197,200,192
    light_dimmest = "#b7bab2", -- 183,186,178
    light_comment = "#a9aca4", -- 169,172,164
    lighter_comment = "#9b9e96", -- 155,158,150
    lightest_comment = "#8d9088", -- 141,144,136
    -- dark
    darkest = "#121013", -- 18,16,19
    darker = "#201e21", -- 32,30,33
    dark = "#2e2c2f", -- 46,44,47
    dark_dim = "#3c3a3d", -- 60,58,61
    dark_dimmer = "#4a484b", -- 74,72,75
    dark_dimmest = "#585659", -- 88,86,89
    dark_comment = "#666467", -- 102,100,103
    darker_comment = "#747275", -- 116,114,117
    darkest_comment = "#828083", -- 130,128,131

    -- red
    red_lightest = "#f4727a", -- 244,114,122
    red_lighter = "#d7656d", -- 215,101,109
    red_light = "#ba5860", -- 186,88,96
    red_dark = "#9d4b53", -- 157,75,83
    red_darker = "#803e46", -- 128,62,70
    red_darkest = "#633139", -- 99,49,57
    -- green
    green_lightest = "#a4dfad", -- 164,223,173
    green_lighter = "#8bbd93", -- 139,189,147
    green_light = "#729b79", -- 114,155,121
    green_dark = "#59795f", -- 89,121,95
    green_darker = "#405745", -- 64,87,69
    green_darkest = "#27352b", -- 39,53,43
    -- yellow
    yellow_lightest = "#ffea94", -- 255,234,148
    yellow_lighter = "#f1ca80", -- 241,202,128
    yellow_light = "#ccaa6c", -- 204,170,108
    yellow_dark = "#a78a58", -- 167,138,88
    yellow_darker = "#826a44", -- 130,106,68
    yellow_darkest = "#5d4a1c", -- 93,74,48
    -- blue
    blue_lightest = "#76d0ff", -- 118,208,255
    blue_lighter = "#64b1f2", -- 100,177,242
    blue_light = "#5292c6", -- 82,146,198
    blue_dark = "#40739a", -- 64,115,154
    blue_darker = "#2e546e", -- 46,84,110
    blue_darkest = "#1c3542", -- 28,53,66
    -- purple
    purple_lightest = "#c292e8", -- 194,146,232
    purple_lighter = "#a77ec8", -- 167,126,200
    purple_light = "#8c6aa8", -- 140,106,168
    purple_dark = "#715688", -- 113,86,136
    purple_darker = "#564268", -- 86,66,104
    purple_darkest = "#3b2e48", -- 59,46,72
    --teal
    teal_lightest = "#62d2e1", -- 98,210,225
    teal_lighter = "#55b7b9", -- 85,183,195
    teal_light = "#489ca5", -- 72,156,165
    teal_dark = "#3b8187", -- 59,129,135
    teal_darker = "#2e6669", -- 46,102,105
    teal_darkest = "#214b4b", -- 33,75,75
}

local M = {}

--- generate color table
-- @param config config options containing colors and theme fields (optional)
-- @return table of palette colors and theme colors merged with config.colors
function M.setup(config)
    config = vim.tbl_extend("force", require("leaf").config, config or {})
    local colors = vim.tbl_extend("force", leaf_colors, config.colors)
    local brightness = config.theme
    local contrast = config.contrast
    if brightness == "auto" then
        brightness = vim.o.background
    elseif brightness == "lighter" then -- for compatibility with old config
        brightness = "light"
        contrast = "medium"
    elseif brightness == "lightest" then -- for compatibility with old config
        brightness = "light"
        contrast = "high"
    elseif brightness == "darker" then -- for compatibility with old config
        brightness = "dark"
        contrast = "medium"
    elseif brightness == "darkest" then -- for compatibility with old config
        brightness = "dark"
        contrast = "high"
    end
    local theme = require("leaf.themes")[brightness][contrast](colors)
    theme = vim.tbl_extend("force", theme, config.colors)
    return vim.tbl_extend("force", theme, colors)
end

return M
