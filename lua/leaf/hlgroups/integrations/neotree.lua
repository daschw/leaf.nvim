local M = {}

--- generate neotree highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        NeoTreeBufferNumber = { fg = colors.teal0 },
        NeoTreeCursorLine = { link = "CursorLine" },
        NeoTreeDimText = { link = "Comment" },
        NeoTreeDirectoryIcon = { link = "Directory" },
        NeoTreeDirectoryName = { link = "Directory" },
        NeoTreeDotfile = { fg = colors.teal1 },
        NeoTreeFileIcon = { link = "File" },
        NeoTreeFileName = { link = "File" },
        NeoTreeFileNameOpened = { fg = colors.yellow0 },
        NeoTreeFilterTerm = { link = "Search" },
        NeoTreeFloatBorder = { link = "FloatBorder" },
        NeoTreeFloatTitle = { link = "FloatBorder" },
        NeoTreeTitleBar = { link = "FloatBorder" },
        NeoTreeGitAdded = { link = "diffAdded" },
        NeoTreeGitConflict = { link = "Error" },
        NeoTreeGitDeleted = { link = "diffDeleted" },
        NeoTreeGitIgnored = { link = "Comment" },
        NeoTreeGitModified = { link = "diffChanged" },
        NeoTreeGitUnstaged = { fg = colors.purple1 },
        NeoTreeGitUntracked = { fg = colors.aqua1 },
        NeoTreeGitStaged = { fg = colors.purple0 },
        NeoTreeHiddenByName = { link = "Comment" },
        NeoTreeIndentMarker = { link = "Comment" },
        NeoTreeExpander = { link = "Comment" },
        NeoTreeNormal = { link = "Normal" },
        NeoTreeNormalNC = { link = "NormalNC" },
        NeoTreeSignColumn = { link = "SignColumn" },
        NeoTreeStats = { link = "Comment" },
        NeoTreeStatsHeader = { fg = colors.green1 },
        NeoTreeStatusLine = { link = "StatusLine" },
        NeoTreeStatusLineNC = { link = "StatusLineNC" },
        NeoTreeVertSplit = { link = "VertSplit" },
        NeoTreeWinSeparator = { link = "WinSeparator" },
        NeoTreeEndOfBuffer = { link = "EndOfBuffer" },
        NeoTreeRootName = { fg = colors.green0 },
        NeoTreeSymbolicLinkTarget = { fg = colors.auqua0 },
        NeoTreeWindowsHidden = { link = "Comment" },
        NeoTreeModified = { fg = colors.orange0 },
        NeoTreeTabActive = { fg = colors.aqua0, style = "bold" },
        NeoTreeTabInactive = { fg = colors.bg3 },
        NeoTreeTabSeparatorActive = { fg = colors.aqua0, style = "bold" },
        NeoTreeTabSeparatorInactive = { fg = colors.bg3 },
    }
end

return M
