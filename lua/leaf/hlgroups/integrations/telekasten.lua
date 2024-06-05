local M = {}

--- generate telekasten highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        tkLink = { link = "markdownLinkText" },
        tkAliasedLink = { link = "markdownUrl" },
        tkBrackets = { link = "Whitespace" },
        tkHighlight = { fg = colors.purple0 },
        tkTag = { fg = colors.green0, style = "bold" },
    }
end

return M
