local M = {}

--- generate nvimtree highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        NvimTreeNormal = { fg = colors.fg0 },
        NvimTreeNormalNC = { link = "NvimTreeNormal" },
        NvimTreeRootFolder = { fg = colors.brown0, style = "bold" },
        NvimTreeGitDirty = { fg = colors.blue0 },
        NvimTreeGitNew = { fg = colors.green0 },
        NvimTreeGitDeleted = { fg = colors.red0 },
        NvimTreeSpecialFile = { fg = colors.aqua0 },
        NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
        NvimTreeImageFile = { fg = colors.yellow0 },
        NvimTreeSymlink = { link = "Type" },
        NvimTreeFolderName = { link = "Directory" },
        NvimTreeFolderIcon = { link = "Directory" },
        NvimTreeExecFile = { fg = colors.orange0, style = "bold" },
        NvimTreeGitStaged = { fg = colors.teal0 },
        NvimTreeOpenedFile = { fg = colors.aqua1, style = "italic" },
        NvimTreeOpenedFolderName = { fg = colors.blue1 },
        NvimTreeEmptyFolderName = { fg = colors.blue1 },
        NvimTreeWinSeparator = { link = "WinSeparator" },
        NvimTreeStatusLineNc = { link = "StatusLineNc" },
    }
end

return M
