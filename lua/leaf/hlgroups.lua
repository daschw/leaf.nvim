local M = {}

--- generate highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, config)
    config = vim.tbl_extend("force", require("leaf").config, config or {})

    local hlgroups = {
        ------------------------------------------------------------------------------------
        -- Base
        ------------------------------------------------------------------------------------
        ColorColumn = { fg = colors.bg1, bg = colors.bg0 },
        Conceal = { fg = colors.bg1, bg = "NONE", style = "bold" },
        CurSearch = { fg = colors.bg0, bg = colors.purple0 },
        Cursor = { fg = colors.bg0, bg = colors.fg0 },
        lCursor = { link = "Cursor" },
        CursorIM = { link = "Cursor" },
        CursorColumn = { link = "CursorLine" },
        CursorLine = { bg = colors.bg1 },
        Directory = { fg = colors.green1 },
        DiffAdd = { fg = colors.bg0, bg = colors.green0 },
        DiffChange = { fg = colors.bg0, bg = colors.blue0 },
        DiffDelete = { fg = colors.bg0, bg = colors.red0, style = "none" },
        DiffText = { fg = colors.bg0, bg = colors.yellow0 },
        EndOfBuffer = { fg = colors.bg0 },
        TermCursor = { link = "Cursor" },
        TermCursorNC = { fg = colors.bg1 },
        ErrorMsg = { link = "Error" },
        WinSeparator = { link = "Separator" },
        Folded = { bg = colors.bg1 },
        FoldColumn = { bg = colors.bg1 },
        SignColumn = { fg = colors.bg1, bg = "NONE" },
        IncSearch = { fg = colors.bg0, bg = colors.blue0, style = "NONE" },
        Substitute = { fg = colors.bg0, bg = colors.green1 },
        LineNr = { fg = colors.bg3 },
        LineNrAbove = { link = "LineNr" },
        LineNrBelow = { link = "LineNr" },
        CursorLineNr = { fg = colors.green1, bg = "NONE", style = "bold" },
        CursorLineSign = { link = "SignColumn" },
        CursorLineFold = { link = "FoldColumn" },
        MatchParen = { fg = colors.orange0, bg = "NONE", style = "bold" },
        ModeMsg = { fg = colors.brown0, style = "bold", bg = "NONE" },
        MsgArea = { fg = colors.fg1, bg = "NONE" },
        MsgSeparator = { link = "Separator" },
        MoreMsg = { fg = colors.green1, bg = colors.bg0, style = "NONE" },
        NonText = { fg = colors.bg1 },
        Normal = {
            fg = colors.fg0,
            bg = not config.transparent and colors.bg0 or "NONE",
        },
        NormalFloat = { fg = colors.fg0, bg = colors.bg0 },
        NormalNC = { link = "Normal" },
        Pmenu = { fg = colors.fg0, bg = colors.bg1 },
        PmenuSel = { fg = "NONE", bg = colors.bg2 },
        PmenuSbar = { link = "Pmenu" },
        PmenuThumb = { fg = colors.bg0, bg = colors.green1 },
        Question = { link = "MoreMsg" },
        QuickFixLine = { link = "CursorLine" },
        Search = { fg = colors.bg0, bg = colors.blue0 },
        SpecialKey = { link = "NonText" },
        SpellBad = { style = config.underlineStyle, guisp = colors.red1 },
        SpellCap = { style = config.underlineStyle, guisp = colors.teal1 },
        SpellLocal = { style = config.underlineStyle, guisp = colors.orange1 },
        SpellRare = { style = config.underlineStyle, guisp = colors.brown1 },
        StatusLine = { fg = colors.fg1, bg = colors.bg2, style = "NONE" },
        StatusLineNC = { fg = colors.bg2, bg = colors.bg1, style = "NONE" },
        TabLine = { bg = colors.bg1, fg = colors.fg1, style = "NONE" },
        TabLineFill = { bg = colors.bg0, style = "NONE" },
        TabLineSel = { fg = colors.bg0, bg = colors.gree0, style = "NONE" },
        Title = { fg = colors.green1, style = "bold" },
        Visual = { bg = colors.bg2 },
        VisualNOS = { link = "Visual" },
        WarningMsg = { link = "Warning" },
        Whitespace = { fg = colors.bg3 },
        WildMenu = { link = "Pmenu" },
        Winbar = { link = "TablineFill" },
        WinbarNC = { link = "Winbar" },
        ------------------------------------------------------------------------------------
        -- Extras
        ------------------------------------------------------------------------------------
        SignColumnSB = { link = "SignColumn" },
        NormalSB = { link = "Normal" },
        FloatBorder = { fg = colors.bg2, bg = colors.bg0 },
        Selection = { fg = colors.green1, style = "bold" },
        Separator = { fg = colors.bg1, bg = colors.bg0, style = "NONE" },
        VertSplit = { link = "Separator" },
        Bold = { style = "bold" },
        Italic = { style = "italic" },
        Strike = { style = "strikethrough" },
        Hint = { fg = colors.teal0, bg = "NONE" },
        Info = { fg = colors.blue0, bg = "NONE" },
        Note = { fg = colors.purple0, bg = "NONE" },
        Success = { fg = colors.green0, bg = "NONE" },
        Warn = { fg = colors.yellow0, bg = "NONE" },
        Warning = { link = "Warn" },
        qfLineNr = { link = "lineNr" },
        qfFileName = { link = "Directory" },
        debugPC = { link = "CursorLine" },
        debugBreakpoint = { fg = colors.aqua1 },
        healthError = { link = "Error" },
        healthSuccess = { link = "Success" },
        healthWarning = { link = "Warning" },
        ------------------------------------------------------------------------------------
        -- Syntax
        ------------------------------------------------------------------------------------
        -- comment -------------------------------------------------------------------------
        Comment = { fg = colors.bg3, style = config.commentStyle },
        -- constant -------------------------------------------------------------- yellow --
        Constant = { fg = colors.orange0 },
        String = { fg = colors.yellow0 },
        Character = { link = "String" },
        Number = { link = "Constant" },
        Boolean = { fg = colors.orange0, style = "bold" },
        Float = { link = "Constant" },
        -- identifier ------------------------------------------------------------- green --
        Identifier = { fg = colors.green0 },
        Function = { fg = colors.teal0, style = config.functionStyle },
        -- statement ------------------------------------------------------------- purple --
        Statement = { fg = colors.purple0, style = config.statementStyle },
        Conditional = { link = "Statement" },
        Repeat = { link = "Statement" },
        Label = { link = "Statement" },
        Operator = { link = "Statement" },
        Keyword = { fg = colors.brown0, style = config.keywordStyle },
        Exception = { link = "Statement" },
        -- preproc ----------------------------------------------------------------- blue --
        PreProc = { fg = colors.blue0 },
        Include = { link = "PreProc" },
        Define = { link = "PreProc" },
        Macro = { link = "PreProc" },
        PreCondit = { link = "PreProc" },
        -- type --------------------------------------------------------------------- red --
        Type = { fg = colors.red0, style = config.typeStyle },
        StorageClass = { link = "Type" },
        Structure = { link = "Type" },
        Typedef = { link = "Type" },
        -- special ----------------------------------------------------------------- aqua --
        Special = { fg = colors.aqua0 },
        SpecialChar = { link = "Special" },
        Tag = { link = "Special" },
        Delimiter = { link = "Special" },
        SpecialComment = { link = "Special" },
        Debug = { link = "Special" },
        -- other ---------------------------------------------------------------------------
        Underlined = { fg = colors.teal1, style = "underline" },
        Ignore = { link = "NonText" },
        Error = { fg = colors.red0, bg = "NONE" },
        Todo = { fg = colors.aqua0, bg = "NONE" },
        ------------------------------------------------------------------------------------
        -- Treesitter
        ------------------------------------------------------------------------------------
        -- comment -------------------------------------------------------------------------
        -- constant -------------------------------------------------------------- yellow --
        ["@symbol"] = { link = "Boolean" },
        ["@text.math"] = { link = "Constant" },
        -- identifier ------------------------------------------------------------- green --
        ["@text.environment"] = { link = "Identifier" },
        -- statement ------------------------------------------------------------- purple --
        ["@attribute"] = { link = "Keyword" },
        -- preproc ----------------------------------------------------------------- blue --
        -- type --------------------------------------------------------------------- red --
        -- special ----------------------------------------------------------------- aqua --
        ["@annotation"] = { link = "Tag" },
        -- other ---------------------------------------------------------------------------
        ["@error"] = { link = "Error" },
        ["@none"] = { link = "None" },
        ["@text.strong"] = { link = "Bold" },
        ["@text.emphasis"] = { link = "Italic" },
        ["@text.strike"] = { link = "Strike" },
        ["@text.note"] = { link = "Note" },
        ["@text.warning"] = { link = "Warning" },
        ["@text.danger"] = { link = "Error" },
        ["@todo"] = { link = "Todo" },
        ------------------------------------------------------------------------------------
        -- Diagnostics
        ------------------------------------------------------------------------------------
        LspReferenceText = { fg = colors.bg0, bg = colors.brown0 },
        LspReferenceRead = { link = "LspReferenceText" },
        LspReferenceWrite = { link = "LspReferenceText" },
        DiagnosticError = { link = "Error" },
        DiagnosticWarn = { link = "Warning" },
        DiagnosticInfo = { link = "Info" },
        DiagnosticHint = { link = "Hint" },
        DiagnosticSignError = { link = "DiagnosticError" },
        DiagnosticSignWarn = { link = "DiagnosticWarn" },
        DiagnosticSignInfo = { link = "DiagnosticInfo" },
        DiagnosticSignHint = { link = "DiagnosticHint" },
        DiagnosticVirtualTextError = { link = "DiagnosticError" },
        DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
        DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
        DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
        DiagnosticUnderlineError = {
            style = config.underlineStyle,
            guisp = colors.red0,
        },
        DiagnosticUnderlineWarn = {
            style = config.underlineStyle,
            guisp = colors.yellow0,
        },
        DiagnosticUnderlineInfo = {
            style = config.underlineStyle,
            guisp = colors.blue0,
        },
        DiagnosticUnderlineHint = {
            style = config.underlineStyle,
            guisp = colors.teal0,
        },
        LspSignatureActiveParameter = { fg = colors.teal1 },
        LspCodeLens = { fg = colors.bg2 },
        ------------------------------------------------------------------------------------
        -- Git
        ------------------------------------------------------------------------------------
        diffAdded = { fg = colors.green0 },
        diffRemoved = { fg = colors.orange0 },
        diffDeleted = { fg = colors.red0 },
        diffChanged = { fg = colors.blue0 },
        diffOldFile = { fg = colors.brown0 },
        diffNewFile = { fg = colors.teal0 },
        ------------------------------------------------------------------------------------
        -- Neogit
        ------------------------------------------------------------------------------------
        NeogitNotificationInfo = { link = "DiagnosticInfo" },
        NeogitNotificationWarning = { link = "DiagnosticWarn" },
        NeogitNotificationError = { link = "DiagnosticError" },
        NeogitHunkHeader = { bg = colors.bg0, fg = colors.aqua0, style = "bold" },
        NeogitHunkHeaderHighlight = {
            bg = colors.bg1,
            fg = colors.aqua1,
            style = "bold",
        },
        NeogitDiffContextHighlight = { bg = colors.bg1 },
        NeogitDiffDeleteHighlight = {
            bg = colors.red1,
            fg = colors.bg0,
            style = "bold",
        },
        NeogitDiffAddHighlight = {
            bg = colors.green1,
            fg = colors.bg0,
            style = "bold",
        },
        ------------------------------------------------------------------------------------
        -- GitSigns
        ------------------------------------------------------------------------------------
        GitSignsAdd = { link = "diffAdded" },
        GitSignsChange = { link = "diffChanged" },
        GitSignsDelete = { link = "diffDeleted" },
        GitSignsDeleteLn = { fg = "NONE", bg = colors.red0 },
        ------------------------------------------------------------------------------------
        -- Telescope
        ------------------------------------------------------------------------------------
        TelescopeBorder = { link = "FloatBorder" },
        TelescopeResultsClass = { link = "Type" },
        TelescopeResultsStruct = { link = "Type" },
        TelescopeResultsVariable = { link = "Variable" },
        ------------------------------------------------------------------------------------
        -- NvimTree
        ------------------------------------------------------------------------------------
        NvimTreeNormal = { link = "Normal" },
        NvimTreeNormalNC = { link = "NormalNC" },
        NvimTreeRootFolder = { fg = colors.brown1, style = "bold" },
        NvimTreeGitDirty = { fg = colors.blue0 },
        NvimTreeGitNew = { fg = colors.green0 },
        NvimTreeGitDeleted = { fg = colors.red0 },
        NvimTreeSpecialFile = { fg = colors.aqua1 },
        NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
        NvimTreeImageFile = { fg = colors.aqua1 },
        NvimTreeSymlink = { link = "Type" },
        NvimTreeFolderName = { link = "Directory" },
        NvimTreeFolderIcon = { link = "Directory" },
        NvimTreeExecFile = { fg = colors.green1, style = "bold" },
        NvimTreeGitStaged = { fg = colors.green0 },
        NvimTreeOpenedFile = { fg = colors.aqua1, style = "italic" },
        ------------------------------------------------------------------------------------
        -- Dashboard
        ------------------------------------------------------------------------------------
        DashboardHeader = { fg = colors.green0 },
        DashboardFooter = { fg = colors.bg3 },
        DashboardProjectTitle = { fg = colors.purple0, style = "bold" },
        DashboardProjectTitleIcon = { fg = colors.purple0 },
        DashboardProjectIcon = { fg = colors.purple0 },
        DashboardMruTitle = { fg = colors.yellow0, style = "bold" },
        DashboardMruTitleIcon = { fg = colors.yellow0 },
        DashboardMruIcon = { fg = colors.yellow0 },
        DashboardShortCut = { fg = colors.green1 },
        ------------------------------------------------------------------------------------
        -- LspSaga
        ------------------------------------------------------------------------------------
        LspSagaCodeActionTitle = { link = "FloatBorder" },
        LspSagaCodeActionBorder = { link = "FloatBorder" },
        LspSagaCodeActionTrunCateLine = { link = "LspSagaCodeActionBorder" },
        LspSagaCodeActionContent = { fg = colors.green1, bold = true },
        LspSagaLspFinderBorder = { link = "FloatBorder" },
        LspSagaAutoPreview = { link = "FloatBorder" },
        LspSagaFinderSelection = { link = "Selection" },
        TargetFileName = { fg = colors.blue1 },
        FinderParam = { fg = colors.purple1, bold = true },
        FinderVirtText = { fg = colors.aqua1 },
        DefinitionsIcon = { fg = colors.yellow1 },
        Definitions = { fg = colors.purple1, bold = true },
        DefinitionCount = { link = "Title" },
        ReferencesIcon = { fg = colors.yellow1 },
        References = { fg = colors.purple1, bold = true },
        ReferencesCount = { link = "Title" },
        ImplementsIcon = { fg = colors.yellow1 },
        Implements = { fg = colors.purple1, bold = true },
        ImplementsCount = { link = "Title" },
        FinderSpinnerBorder = { link = "FloatBorder" },
        FinderSpinnerTitle = { link = "Title" },
        FinderSpinner = { fg = colors.brown1, bold = true },
        FinderPreviewSearch = { link = "Search" },
        DefinitionBorder = { link = "FloatBorder" },
        DefinitionArrow = { fg = colors.orange1 },
        DefinitionSearch = { link = "Search" },
        DefinitionFile = { fg = colors.bg0, bg = colors.blue1 },
        LspSagaHoverBorder = { link = "FloatBorder" },
        LspSagaHoverTrunCateLine = { link = "LspSagaHoverBorder" },
        LspSagaRenameBorder = { link = "FloatBorder" },
        LspSagaRenameMatch = { link = "Search" },
        LspSagaDiagnosticSource = { link = "Comment" },
        LspSagaDiagnosticError = { link = "DiagnosticError" },
        LspSagaDiagnosticWarn = { link = "DiagnosticWarn" },
        LspSagaDiagnosticInfo = { link = "DiagnosticInfo" },
        LspSagaDiagnosticHint = { link = "DiagnosticHint" },
        LspSagaErrorTrunCateLine = { link = "DiagnosticError" },
        LspSagaWarnTrunCateLine = { link = "DiagnosticWarn" },
        LspSagaInfoTrunCateLine = { link = "DiagnosticInfo" },
        LspSagaHintTrunCateLine = { link = "DiagnosticHint" },
        LspSagaDiagnosticBorder = { link = "FloatBorder" },
        LspSagaDiagnosticHeader = { fg = colors.green1 },
        DiagnosticQuickFix = { fg = colors.green1, bold = true },
        DiagnosticMap = { fg = colors.brown1 },
        DiagnosticLineCol = { link = "CursorColumn" },
        LspSagaDiagnosticTruncateLine = { link = "LspSagaDiagnosticBorder" },
        ColInLineDiagnostic = { link = "Comment" },
        LspSagaSignatureHelpBorder = { link = "FloatBorder" },
        LspSagaShTrunCateLine = { link = "LspSagaSignatureHelpBorder" },
        LspSagaLightBulb = { link = "DiagnosticSignHint" },
        SagaShadow = { fg = colors.bg1 },
        LspSagaBorderTitle = { link = "String" },
        LSOutlinePreviewBorder = { link = "FloatBorder" },
        OutlineIndentEvn = { fg = colors.aqua1 },
        OutlineIndentOdd = { fg = colors.teal1 },
        OutlineFoldPrefix = { fg = colors.orange1 },
        OutlineDetail = { link = "Comment" },
        -- all floatwindow of lspsaga
        LspFloatWinNormal = { link = "Normal" },
        ------------------------------------------------------------------------------------
        -- Floaterm
        ------------------------------------------------------------------------------------
        FloatermBorder = { link = "FloatBorder" },
        ------------------------------------------------------------------------------------
        -- Barbar
        ------------------------------------------------------------------------------------
        BufferCurrent = { fg = colors.green1, bg = colors.bg0, style = "bold" },
        BufferCurrentIndex = { link = "BufferCurrent" },
        BufferCurrentMod = {
            fg = colors.yellow0,
            bg = colors.bg0,
            style = "bold",
        },
        BufferCurrentSign = { link = "BufferCurrent" },
        BufferCurrentTarget = {
            fg = colors.green1,
            bg = colors.bg0,
            style = "bold",
        },
        BufferVisible = { fg = colors.fg0, bg = colors.bg0 },
        BufferVisibleIndex = { link = "BufferVisible" },
        BufferVisibleMod = { fg = colors.yellow1, bg = colors.bg0 },
        BufferVisibleSign = { link = "BufferVisible" },
        BufferVisibleTarget = {
            fg = colors.fg0,
            bg = colors.bg0,
            style = "bold",
        },
        BufferInactive = { fg = colors.fg2, bg = colors.bg1 },
        BufferInactiveIndex = { link = "BufferInactive" },
        BufferInactiveMod = { fg = colors.brown1, bg = colors.bg1 },
        BufferInactiveSign = { fg = colors.bg2, bg = colors.bg1 },
        BufferInactiveTarget = { fg = colors.fg2, bg = colors.bg1, style = "bold" },
        BufferTabpages = { fg = colors.green1, bg = colors.bg0 },
        BufferTabpageFill = { fg = colors.fg2, bg = colors.bg0 },
        ------------------------------------------------------------------------------------
        -- Cmp
        ------------------------------------------------------------------------------------
        CmpDocumentation = { fg = colors.fg1, bg = colors.bg1 },
        CmpDocumentationBorder = { link = "FloatBorder" },
        CmpItemAbbr = { fg = colors.fg0, bg = "NONE" },
        CmpItemAbbrDeprecated = {
            fg = colors.bg2,
            bg = "NONE",
            style = "strikethrough",
        },
        CmpItemAbbrMatch = { fg = colors.green1, bg = "NONE" },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
        CmpItemKindDefault = { fg = colors.bg2, bg = "NONE" },
        CmpItemMenu = { fg = colors.bg2, bg = "NONE" },
        CmpItemKindVariable = { fg = colors.fg1, bg = "NONE" },
        CmpItemKindFunction = { link = "Function" },
        CmpItemKindMethod = { link = "Function" },
        CmpItemKindConstructor = { link = "Constructor" },
        CmpItemKindClass = { link = "Type" },
        CmpItemKindInterface = { link = "Type" },
        CmpItemKindStruct = { link = "Type" },
        CmpItemKindProperty = { link = "Property" },
        CmpItemKindField = { link = "Field" },
        CmpItemKindEnum = { link = "Identifier" },
        CmpItemKindSnippet = { fg = colors.aqua1, bg = "NONE" },
        CmpItemKindText = { link = "Text" },
        CmpItemKindModule = { link = "Include" },
        CmpItemKindFile = { link = "Directory" },
        CmpItemKindFolder = { link = "Directory" },
        CmpItemKindKeyword = { link = "Keyword" },
        CmpItemKindTypeParameter = { link = "Identifier" },
        CmpItemKindConstant = { link = "Constant" },
        CmpItemKindOperator = { link = "Operator" },
        CmpItemKindReference = { link = "Parameter" },
        CmpItemKindEnumMember = { link = "Field" },
        CmpItemKindValue = { link = "String" },
        CmpItemKindUnit = {},
        CmpItemKindEvent = {},
        CmpItemKindColor = {},
        ------------------------------------------------------------------------------------
        -- IndentBlankline
        ------------------------------------------------------------------------------------
        IndentBlanklineChar = { fg = colors.bg1 },
        IndentBlanklineSpaceChar = { fg = colors.bg1 },
        IndentBlanklineSpaceCharBlankline = { fg = colors.bg1 },
        IndentBlanklineContextChar = { fg = colors.bg1 },
        IndentBlanklineContextStart = { guisp = colors.bg1, style = "underline" },
        ------------------------------------------------------------------------------------
        -- SmoothCursor
        ------------------------------------------------------------------------------------
        SmoothCursorRed = { fg = colors.green1 },
        SmoothCursorOrange = { fg = colors.green0 },
        SmoothCursorYellow = { fg = colors.aqua1 },
        SmoothCursorGreen = { fg = colors.aqua0 },
        SmoothCursorAqua = { fg = colors.blue1 },
        SmoothCursorBlue = { fg = colors.blue0 },
        SmoothCursorPurple = { fg = colors.purple1 },
        SmoothCursor = { fg = colors.green1, style = "bold" },
        ------------------------------------------------------------------------------------
        -- Notify
        ------------------------------------------------------------------------------------
        NotifyERRORBorder = { fg = colors.red1 },
        NotifyWARNBorder = { fg = colors.yellow1 },
        NotifyINFOBorder = { fg = colors.teal1 },
        NotifyDEBUGBorder = { fg = colors.orange1 },
        NotifyTRACEBorder = { fg = colors.purple1 },
        NotifyERRORIcon = { fg = colors.red0 },
        NotifyWARNIcon = { fg = colors.yellow0 },
        NotifyINFOIcon = { fg = colors.teal0 },
        NotifyDEBUGIcon = { fg = colors.orange0 },
        NotifyTRACEIcon = { fg = colors.purple0 },
        NotifyERRORTitle  = { fg = colors.red0 },
        NotifyWARNTitle = { fg = colors.yellow0 },
        NotifyINFOTitle = { fg = colors.teal0 },
        NotifyDEBUGTitle  = { fg = colors.orange0 },
        NotifyTRACETitle  = { fg = colors.purple0 },
        NotifyERRORBody  = { link = "Normal" },
        NotifyWARNBody = { link = "Normal" },
        NotifyINFOBody = { link = "Normal" },
        NotifyDEBUGBody  = { link = "Normal" },
        NotifyTRACEBody  = { link = "Normal" },
    }

    for hl, specs in pairs(config.overrides) do
        if hlgroups[hl] and not vim.tbl_isempty(specs) then
            hlgroups[hl].link = nil
        end
        hlgroups[hl] = vim.tbl_extend("force", hlgroups[hl] or {}, specs)
    end

    return hlgroups
end

return M
