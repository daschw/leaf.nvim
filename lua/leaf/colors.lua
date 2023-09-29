local leaf_colors = {
    -- light
    leaf_light_0 = "#FFFFFB", -- (258, 261, 251)
    leaf_light_1 = "#F1F5EC", -- (241, 245, 236)
    leaf_light_2 = "#E1E4DC", -- (225, 228, 220)
    leaf_light_3 = "#D1D3CC", -- (209, 211, 204)
    leaf_light_4 = "#C0C3BD", -- (192, 195, 189)
    leaf_light_5 = "#B0B2AD", -- (176, 178, 173)
    leaf_light_6 = "#A0A19D", -- (160, 161, 157)
    leaf_light_7 = "#90908D", -- (144, 144, 141)
    -- dark
    leaf_dark_0 = "#0D0B10", -- (13, 11, 16)
    leaf_dark_1 = "#1E1B1F", -- (30, 27, 31)
    leaf_dark_2 = "#2E2C2F", -- (46, 44, 47)
    leaf_dark_3 = "#3E3D3F", -- (62, 61, 63)
    leaf_dark_4 = "#4F4D4E", -- (79, 77, 78)
    leaf_dark_5 = "#5F5E5E", -- (95, 94, 94)
    leaf_dark_6 = "#6F6F6E", -- (111, 111, 110)
    leaf_dark_7 = "#7F807E", -- (127, 128, 126)
    -- red
    leaf_red_0 = "#CD6169", -- (205, 97, 105)
    leaf_red_1 = "#C45C64", -- (196, 92, 100)
    leaf_red_2 = "#BA5860", -- (186, 88, 96)
    leaf_red_3 = "#9D4B53", -- (157, 75, 83)
    leaf_red_4 = "#93474F", -- (147, 71, 79)
    leaf_red_5 = "#8A424A", -- (138, 66, 74)
    -- orange
    leaf_orange_0 = "#D2846D", -- (210, 132, 109)
    leaf_orange_1 = "#C87D68", -- (200, 125, 104)
    leaf_orange_2 = "#BD7663", -- (189, 118, 99)
    leaf_orange_3 = "#9E6253", -- (158, 98, 83)
    leaf_orange_4 = "#935C4E", -- (147, 92, 78)
    leaf_orange_5 = "#895549", -- (137, 85, 73)
    -- yellow
    leaf_yellow_0 = "#E5BF79", -- (229, 191, 121)
    leaf_yellow_1 = "#D8B573", -- (216, 181, 115)
    leaf_yellow_2 = "#CCAA6C", -- (204, 170, 108)
    leaf_yellow_3 = "#A78A58", -- (167, 138, 88)
    leaf_yellow_4 = "#9B7F51", -- (155, 127, 81)
    leaf_yellow_5 = "#8E754B", -- (142, 117, 75)
    -- green
    leaf_green_0 = "#83B28A", -- (131, 178, 138)
    leaf_green_1 = "#7AA682", -- (122, 166, 130)
    leaf_green_2 = "#729B79", -- (114, 155, 121)
    leaf_green_3 = "#59795F", -- (89, 121, 95)
    leaf_green_4 = "#516E56", -- (81, 110, 86)
    leaf_green_5 = "#48624E", -- (72, 98, 78)
    -- teal
    leaf_teal_0 = "#609B8C", -- (96, 155, 140)
    leaf_teal_1 = "#5A9284", -- (90, 146, 132)
    leaf_teal_2 = "#54897C", -- (84, 137, 124)
    leaf_teal_3 = "#436E64", -- (67, 110, 100)
    leaf_teal_4 = "#3D655B", -- (61, 101, 91)
    leaf_teal_5 = "#375C53", -- (55, 92, 83)
    --aqua
    leaf_aqua_0 = "#51AEB9", -- (81, 174, 185)
    leaf_aqua_1 = "#4CA5AF", -- (76, 165, 175)
    leaf_aqua_2 = "#489CA5", -- (72, 156, 165)
    leaf_aqua_3 = "#3B8187", -- (59, 129, 135)
    leaf_aqua_4 = "#37787D", -- (55, 120, 125)
    leaf_aqua_5 = "#326F73", -- (50, 111, 115)
    -- blue
    leaf_blue_0 = "#5EA7E3", -- (94, 167, 227)
    leaf_blue_1 = "#589CD5", -- (88, 156, 213)
    leaf_blue_2 = "#5292C6", -- (82, 146, 198)
    leaf_blue_3 = "#40739A", -- (64, 115, 154)
    leaf_blue_4 = "#3A698B", -- (58, 105, 139)
    leaf_blue_5 = "#345E7D", -- (52, 94, 125)
    -- purple
    leaf_purple_0 = "#9E77BD", -- (158, 119, 189)
    leaf_purple_1 = "#9571B3", -- (149, 113, 179)
    leaf_purple_2 = "#8C6AA8", -- (140, 106, 168)
    leaf_purple_3 = "#715688", -- (113, 86, 136)
    leaf_purple_4 = "#684F7D", -- (104, 79, 125)
    leaf_purple_5 = "#5F4973", -- (95, 73, 115)
    -- brown
    leaf_brown_0 = "#9A716F", -- (154, 113, 111)
    leaf_brown_1 = "#926B6A", -- (146, 107, 106)
    leaf_brown_2 = "#8A6564", -- (138, 101, 100)
    leaf_brown_3 = "#725252", -- (114, 82, 82)
    leaf_brown_4 = "#6A4C4D", -- (106, 76, 77)
    leaf_brown_5 = "#624647", -- (98, 70, 71)
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
