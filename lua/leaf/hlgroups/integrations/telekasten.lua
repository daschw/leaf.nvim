local M = {}

--- generate telekasten highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        tkLink = { fg = colors.teal0 },
        tkAliasedLink = { fg = colors.aqua0 },
        tkBrackets = { fg = colors.bg3 },
        tkHighlight = { fg = colors.purple0 },
        tkTag = { fg = colors.green0 },
    }
end

return M
