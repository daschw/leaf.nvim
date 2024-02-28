local M = {}

--- generate indentblankline highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, config)
    return {
        IndentBlanklineChar = { fg = colors.bg1 },
        IndentBlanklineSpaceChar = { link = "IndentBlanklineChar" },
        IndentBlanklineSpaceCharBlankline = { link = "IndentBlanklineChar" },
        IndentBlanklineContextChar = { link = "IndentBlanklineChar" },
        IndentBlanklineContextStart = { guisp = colors.bg1, style = config.underlineStyle },
        IblIndent = { fg = colors.bg1 },
        IblWhitespace = { link = "IblIndent" },
        IblScope = { link = "IblIndent" },
    }
end

return M
