local M = {}

--- generate gitsigns highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        GitSignsAdd = { link = "diffAdded" },
        GitSignsChange = { link = "diffChanged" },
        GitSignsDelete = { link = "diffDeleted" },
        GitSignsDeleteLn = { fg = "NONE", bg = colors.red0 },
        GitSignsCurrentLineBlame = { fg = colors.teal1 },
        GitSignsAddPreview = { link = "DiffAdd" },
        GitSignsDeletePreview = { link = "DiffDelete" },
    }
end

return M
