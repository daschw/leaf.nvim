local leaf_colors = {
    -- light
    light0 = "#FFFFFB", -- (258, 261, 251)
    light1 = "#F1F5EC", -- (241, 245, 236)
    light2 = "#E1E4DC", -- (225, 228, 220)
    light3 = "#D1D3CC", -- (209, 211, 204)
    light4 = "#C0C3BD", -- (192, 195, 189)
    light5 = "#B0B2AD", -- (176, 178, 173)
    light6 = "#A0A19D", -- (160, 161, 157)
    light7 = "#90908D", -- (144, 144, 141)
    -- dark
    dark0 = "#0D0B10", -- (13, 11, 16)
    dark1 = "#1E1B1F", -- (30, 27, 31)
    dark2 = "#2E2C2F", -- (46, 44, 47)
    dark3 = "#3E3D3F", -- (62, 61, 63)
    dark4 = "#4F4D4E", -- (79, 77, 78)
    dark5 = "#5F5E5E", -- (95, 94, 94)
    dark6 = "#6F6F6E", -- (111, 111, 110)
    dark7 = "#7F807E", -- (127, 128, 126)
    -- red
    red0 = "#CD6169", -- (205, 97, 105)
    red1 = "#C45C64", -- (196, 92, 100)
    red2 = "#BA5860", -- (186, 88, 96)
    red3 = "#9D4B53", -- (157, 75, 83)
    red4 = "#93474F", -- (147, 71, 79)
    red5 = "#8A424A", -- (138, 66, 74)
    -- green
    green0 = "#83B28A", -- (131, 178, 138)
    green1 = "#7AA682", -- (122, 166, 130)
    green2 = "#729B79", -- (114, 155, 121)
    green3 = "#59795F", -- (89, 121, 95)
    green4 = "#516E56", -- (81, 110, 86)
    green5 = "#48624E", -- (72, 98, 78)
    -- yellow
    yellow0 = "#E5BF79", -- (229, 191, 121)
    yellow1 = "#D8B573", -- (216, 181, 115)
    yellow2 = "#CCAA6C", -- (204, 170, 108)
    yellow3 = "#A78A58", -- (167, 138, 88)
    yellow4 = "#9B7F51", -- (155, 127, 81)
    yellow5 = "#8E754B", -- (142, 117, 75)
    -- blue
    blue0 = "#5EA7E3", -- (94, 167, 227)
    blue1 = "#589CD5", -- (88, 156, 213)
    blue2 = "#5292C6", -- (82, 146, 198)
    blue3 = "#40739A", -- (64, 115, 154)
    blue4 = "#3A698B", -- (58, 105, 139)
    blue5 = "#345E7D", -- (52, 94, 125)
    -- purple
    purple0 = "#9E77BD", -- (158, 119, 189)
    purple1 = "#9571B3", -- (149, 113, 179)
    purple2 = "#8C6AA8", -- (140, 106, 168)
    purple3 = "#715688", -- (113, 86, 136)
    purple4 = "#684F7D", -- (104, 79, 125)
    purple5 = "#5F4973", -- (95, 73, 115)
    --aqua
    aqua0 = "#51AEB9", -- (81, 174, 185)
    aqua1 = "#4CA5AF", -- (76, 165, 175)
    aqua2 = "#489CA5", -- (72, 156, 165)
    aqua3 = "#3B8187", -- (59, 129, 135)
    aqua4 = "#37787D", -- (55, 120, 125)
    aqua5 = "#326F73", -- (50, 111, 115)
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
