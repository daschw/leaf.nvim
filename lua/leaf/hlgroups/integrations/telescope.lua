local M = {}

--- generate telescope highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        TelescopeBorder = { link = "FloatBorder" },
        TelescopeSelectionCaret = { fg = colors.green0 },
        TelescopeSelection = { fg = colors.fg1, bg = colors.bg1, style = "bold" },
        TelescopeMatching = { fg = colors.teal1 },
        TelescopeResultsClass = { link = "Type" },
        TelescopeResultsStruct = { link = "Type" },
        TelescopeResultsVariable = { link = "Identifier" },
    }
end

return M
