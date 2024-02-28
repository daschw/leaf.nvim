local M = {}

--- generate lspsaga highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        -- general
        SagaTitle = { link = "Title" },
        SagaBorder = { link = "FloatBorder" },
        SagaNormal = { link = "NormalFloat" },
        SagaToggle = { link = "Comment" },
        SagaBeacon = { bg = colors.red0 },
        SagaVirtLine = { fg = colors.bg3 },
        SagaSpinnerTitle = { link = "Statement" },
        SagaSpinner = { link = "Statement" },
        SagaText = { link = "Comment" },
        SagaSelect = { link = "String" },
        SagaSearch = { link = "Search" },
        SagaFinderFname = { link = "Function" },
        SagaDetail = { link = "Comment" },
        SagaInCurrent = { link = "KeyWord" },
        SagaCount = { bg = colors.bg1, fg = colors.fg0, style = "bold" },
        SagaSep = { link = "Comment" },
        -- code action
        ActionFix = { link = "Keyword" },
        ActionPreviewNormal = { link = "SagaNormal" },
        ActionPreviewBorder = { link = "SagaBorder" },
        ActionPreviewTitle = { link = "Title" },
        CodeActionText = { link = "@variable" },
        CodeActionNumber = { link = "DiffAdd" },
        -- hover
        HoverNormal = { link = "SagaNormal" },
        HoverBorder = { link = "SagaBorder" },
        -- rename
        RenameBorder = { link = "SagaBorder" },
        RenameNormal = { link = "Statement" },
        RenameMatch = { link = "Search" },
        -- diagnostic
        DiagnosticBorder = { link = "SagaBorder" },
        DiagnosticNormal = { link = "SagaNormal" },
        DiagnosticText = {},
        DiagnosticShowNormal = { link = "SagaNormal" },
        DiagnosticShowBorder = { link = "@property" },
        -- lightbulb
        SagaLightBulb = { link = "DiagnosticSignHint" },
        -- Float term
        TerminalBorder = { link = "SagaBorder" },
        TerminalNormal = { link = "SagaNormal" },
        -- Implement
        SagaImpIcon = { link = "PreProc" },
        --Winbar
        SagaWinbarSep = { link = "Operator" },
        SagaWinbarFileName = { link = "SagaFileName" },
        SagaWinbarFolderName = { link = "SagaFolderName" },
        SagaWinbarFolder = { link = "SagaFolder" },
        -- deprecated
        SagaFileName = { link = "Comment" },
        SagaFolderName = { link = "Comment" },
    }
end

return M
