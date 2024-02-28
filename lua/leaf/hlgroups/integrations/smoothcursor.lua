local M = {}

--- generate smoothcursor highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        SmoothCursorRed = { fg = colors.green1 },
        SmoothCursorOrange = { fg = colors.green0 },
        SmoothCursorYellow = { fg = colors.aqua1 },
        SmoothCursorGreen = { fg = colors.aqua0 },
        SmoothCursorAqua = { fg = colors.blue1 },
        SmoothCursorBlue = { fg = colors.blue0 },
        SmoothCursorPurple = { fg = colors.purple1 },
        SmoothCursor = { fg = colors.green1, style = "bold" },
    }
end

return M
