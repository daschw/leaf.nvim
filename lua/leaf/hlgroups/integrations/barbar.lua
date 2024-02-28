local M = {}

--- generate barbar highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        BufferCurrent = { fg = colors.green1, bg = colors.bg0, style = "bold" },
        BufferCurrentIndex = { link = "BufferCurrent" },
        BufferCurrentMod = { fg = colors.yellow0, bg = colors.bg0, style = "bold" },
        BufferCurrentSign = { link = "BufferCurrent" },
        BufferCurrentTarget = { fg = colors.green1, bg = colors.bg0, style = "bold" },
        BufferVisible = { fg = colors.fg1, bg = colors.bg0 },
        BufferVisibleIndex = { link = "BufferVisible" },
        BufferVisibleMod = { fg = colors.yellow1, bg = colors.bg0 },
        BufferVisibleSign = { link = "BufferVisible" },
        BufferVisibleTarget = { fg = colors.fg1, bg = colors.bg0, style = "bold" },
        BufferInactive = { fg = colors.fg2, bg = colors.bg1 },
        BufferInactiveIndex = { link = "BufferInactive" },
        BufferInactiveMod = { fg = colors.brown1, bg = colors.bg1 },
        BufferInactiveSign = { fg = colors.bg2, bg = colors.bg1 },
        BufferInactiveTarget = { fg = colors.fg2, bg = colors.bg1, style = "bold" },
        BufferTabpages = { fg = colors.green1, bg = colors.bg0 },
        BufferTabpageFill = { fg = colors.fg2, bg = colors.bg0 },
    }
end

return M
