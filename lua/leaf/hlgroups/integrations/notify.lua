local M = {}

--- generate nvim-notify highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        NotifyERRORBorder = { fg = colors.red1 },
        NotifyWARNBorder = { fg = colors.yellow1 },
        NotifyINFOBorder = { fg = colors.teal1 },
        NotifyDEBUGBorder = { fg = colors.orange1 },
        NotifyTRACEBorder = { fg = colors.purple1 },
        NotifyERRORIcon = { fg = colors.red0 },
        NotifyWARNIcon = { fg = colors.yellow0 },
        NotifyINFOIcon = { fg = colors.teal0 },
        NotifyDEBUGIcon = { fg = colors.orange0 },
        NotifyTRACEIcon = { fg = colors.purple0 },
        NotifyERRORTitle = { fg = colors.red0 },
        NotifyWARNTitle = { fg = colors.yellow0 },
        NotifyINFOTitle = { fg = colors.teal0 },
        NotifyDEBUGTitle = { fg = colors.orange0 },
        NotifyTRACETitle = { fg = colors.purple0 },
        NotifyERRORBody = { link = "Normal" },
        NotifyWARNBody = { link = "Normal" },
        NotifyINFOBody = { link = "Normal" },
        NotifyDEBUGBody = { link = "Normal" },
        NotifyTRACEBody = { link = "Normal" },
    }
end

return M
