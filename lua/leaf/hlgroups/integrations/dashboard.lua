local M = {}

--- generate dashboard highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        DashboardHeader = { fg = colors.green0 },
        DashboardFooter = { fg = colors.bg3 },
        DashboardProjectTitle = { fg = colors.purple0, style = "bold" },
        DashboardProjectTitleIcon = { fg = colors.purple0 },
        DashboardProjectIcon = { fg = colors.purple0 },
        DashboardMruTitle = { fg = colors.yellow0, style = "bold" },
        DashboardMruTitleIcon = { fg = colors.yellow0 },
        DashboardMruIcon = { fg = colors.yellow0 },
        DashboardShortCut = { fg = colors.green1 },
        DashboardCenter = { fg = colors.teal0 },
        DashboardFiles = { fg = colors.fg1 },
        DashboardKey = { fg = colors.orange0 },
        DashboardIcon = { fg = colors.green0, style = "bold" },
    }
end

return M
