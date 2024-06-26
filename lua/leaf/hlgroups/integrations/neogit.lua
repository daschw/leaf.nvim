local M = {}

--- generate neogit highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        NeogitBranch = { fg = colors.purple0, style = "bold" },
        NeogitRemote = { fg = colors.green0, style = "bold" },
        NeogitUnmergedInto = { link = "Function" },
        NeogitUnpulledFrom = { link = "Function" },
        NeogitObjectId = { link = "Comment" },
        NeogitStash = { link = "Comment" },
        NeogitRebaseDone = { link = "Comment" },
        NeogitHunkHeader = { fg = colors.aqua1 },
        NeogitHunkHeaderHighlight = { fg = colors.aqua0 },
        NeogitHunkHeaderCursor = { fg = colors.aqua0, style = "bold" },
        NeogitDiffContextHighlight = { fg = colors.fg0 },
        NeogitDiffAddHighlight = { fg = colors.green0 },
        NeogitDiffDeleteHighlight = { fg = colors.red0 },
        NeogitDiffHeaderHighlight = { fg = colors.purple0 },
        NeogitDiffContext = { fg = colors.bg3 },
        NeogitDiffAdd = { fg = colors.green1 },
        NeogitDiffDelete = { fg = colors.red1 },
        NeogitDiffHeader = { fg = colors.purple1 },
        NeogitDiffAdditions = { fg = colors.green0 },
        NeogitDiffDeletions = { fg = colors.red0 },
        NeogitDiffAddCursor = { fg = colors.green1, style = "bold" },
        NeogitDiffDeleteCursor = { fg = colors.red1, style = "bold" },
        NeogitChangeModified = { fg = colors.purple0, style = "bold" },
        NeogitChangeAdded = { fg = colors.green0, style = "bold" },
        NeogitChangeDeleted = { fg = colors.red0, style = "bold" },
        NeogitChangeRenamed = { fg = colors.orange0, style = "bold" },
        NeogitChangeUpdated = { fg = colors.teal0, style = "bold" },
        NeogitChangeCopied = { fg = colors.yellow0, style = "bold" },
        NeogitChangeBothModified = { fg = colors.blue0, style = "bold" },
        NeogitChangeNewFile = { fg = colors.aqua0, style = "bold" },
        NeogitUntrackedfiles = { fg = colors.purple0, style = "bold" },
        NeogitUnstagedchanges = { fg = colors.purple0, style = "bold" },
        NeogitUnmergedchanges = { fg = colors.purple0, style = "bold" },
        NeogitUnpulledchanges = { fg = colors.purple0, style = "bold" },
        NeogitRecentcommits = { fg = colors.purple0, style = "bold" },
        NeogitStagedchanges = { fg = colors.purple0, style = "bold" },
        NeogitStashes = { fg = colors.purple0, style = "bold" },
        NeogitRebasing = { fg = colors.purple0, style = "bold" },
        NeogitNotificationInfo = { link = "DiagnosticInfo" },
        NeogitNotificationWarning = { link = "DiagnosticWarn" },
        NeogitNotificationError = { link = "DiagnosticError" },
        NeogitGraphRed = { fg = colors.red0 },
        NeogitGraphWhite = { fg = colors.fg1 },
        NeogitGraphYellow = { fg = colors.yellow0 },
        NeogitGraphGreen = { fg = colors.green0 },
        NeogitGraphCyan = { fg = colors.teal0 },
        NeogitGraphBlue = { fg = colors.blue0 },
        NeogitGraphPurple = { fg = colors.purple0 },
        NeogitGraphGray = { fg = colors.bg2 },
        NeogitGraphOrange = { fg = colors.orange0 },
        NeogitGraphBoldRed = { fg = colors.red0, style = "bold" },
        NeogitGraphBoldWhite = { fg = colors.fg1, style = "bold" },
        NeogitGraphBoldYellow = { fg = colors.yellow0, style = "bold" },
        NeogitGraphBoldGreen = { fg = colors.green0, style = "bold" },
        NeogitGraphBoldCyan = { fg = colors.teal0, style = "bold" },
        NeogitGraphBoldBlue = { fg = colors.blue0, style = "bold" },
        NeogitGraphBoldPurple = { fg = colors.purple0, style = "bold" },
        NeogitGraphBoldGray = { fg = colors.bg2, style = "bold" },
        NeogitPopupBold = { style = "bold" },
        NeogitPopupSwitchKey = { fg = colors.purple0 },
        NeogitPopupOptionKey = { fg = colors.teal0 },
        NeogitPopupConfigKey = { fg = colors.yellow0 },
        NeogitPopupActionKey = { fg = colors.aqua0 },
        NeogitFilePath = { fg = colors.blue0, style = "italic" },
        NeogitUnpushedTo = { fg = colors.purple0, style = "bold" },
        NeogitFold = { link = "Fold" },
        NeogitTagName = { fg = colors.yellow0 },
        NeogitTagDistance = { fg = colors.blue0 },
        NeogitSectionHeader = { fg = colors.teal1, style = "bold" },
        NeogitSectionHeaderHighlight = { fg = colors.teal0, style = "bold" },
        NeogitMergeHeader = { fg = colors.orange1 },
        NeogitMergeHeaderCursor = { fg = colors.orange0, style = "bold" },
        NeogitMergeHeaderHighlight = { fg = colors.orange0 },
    }
end

return M
