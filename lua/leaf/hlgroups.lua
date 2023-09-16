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
        ColorColumn = { fg = colors.bg_dim, bg = colors.bg_normal },
        Conceal = { fg = colors.bg_dim, bg = "NONE", style = "bold" },
        CurSearch = { fg = colors.fg_colored_bg, bg = colors.purple_soft },
        Cursor = { fg = colors.bg_normal, bg = colors.fg_normal },
        lCursor = { link = "Cursor" },
        CursorIM = { link = "Cursor" },
        CursorColumn = { link = "CursorLine" },
        CursorLine = { bg = colors.bg_dim },
        Directory = { fg = colors.green_hard },
        DiffAdd = { fg = colors.fg_colored_bg, bg = colors.green_soft },
        DiffChange = { fg = colors.fg_colored_bg, bg = colors.blue_soft },
        DiffDelete = { fg = colors.fg_colored_bg, bg = colors.red_soft, style = "none" },
        DiffText = { fg = colors.fg_colored_bg, bg = colors.yellow_soft },
        EndOfBuffer = { fg = colors.bg_normal },
        TermCursor = { link = "Cursor" },
        TermCursorNC = { fg = colors.bg_dim },
        ErrorMsg = { link = "Error" },
        WinSeparator = { link = "Separator" },
        Folded = { bg = colors.bg_dim },
        FoldColumn = { bg = colors.bg_dim },
        SignColumn = { fg = colors.bg_dim, bg = "NONE" },
        IncSearch = { fg = colors.fg_colored_bg, bg = colors.blue_soft, style = "NONE" },
        Substitute = { fg = colors.fg_colored_bg, bg = colors.green_hard },
        LineNr = { fg = colors.fg_comment },
        LineNrAbove = { link = "LineNr" },
        LineNrBelow = { link = "LineNr" },
        CursorLineNr = { fg = colors.green_hard, bg = "NONE", style = "bold" },
        CursorLineSign = { link = "SignColumn" },
        CursorLineFold = { link = "FoldColumn" },
        MatchParen = { fg = colors.yellow_hard, bg = "NONE", style = "bold" },
        ModeMsg = { fg = colors.yellow_hard, style = "bold", bg = "NONE" },
        MsgArea = { fg = colors.fg_dim, bg = "NONE" },
        MsgSeparator = { link = "Separator" },
        MoreMsg = { fg = colors.green_hard, bg = colors.bg_normal, style = "NONE" },
        NonText = { fg = colors.bg_dim },
        Normal = {
            fg = colors.fg_normal,
            bg = not config.transparent and colors.bg_normal or "NONE",
        },
        NormalFloat = { fg = colors.fg_normal, bg = colors.bg_normal },
        NormalNC = { link = "Normal" },
        Pmenu = { fg = colors.fg_normal, bg = colors.bg_dim },
        PmenuSel = { fg = "NONE", bg = colors.bg_dimmer },
        PmenuSbar = { link = "Pmenu" },
        PmenuThumb = { fg = colors.fg_colored_bg, bg = colors.green_hard },
        Question = { link = "MoreMsg" },
        QuickFixLine = { link = "CursorLine" },
        Search = { fg = colors.fg_colored_bg, bg = colors.blue_soft },
        SpecialKey = { link = "NonText" },
        SpellBad = { style = config.underlineStyle, guisp = colors.red_hard },
        SpellCap = { style = config.underlineStyle, guisp = colors.yellow_hard },
        SpellLocal = { style = config.underlineStyle, guisp = colors.yellow_hard },
        SpellRare = { style = config.underlineStyle, guisp = colors.yellow_hard },
        StatusLine = { fg = colors.fg_dim, bg = colors.bg_dimmer, style = "NONE" },
        StatusLineNC = { fg = colors.bg_dimmer, bg = colors.bg_dim, style = "NONE" },
        TabLine = { bg = colors.bg_dim, fg = colors.fg_dim, style = "NONE" },
        TabLineFill = { bg = colors.bg_normal, style = "NONE" },
        TabLineSel = { fg = colors.fg_colored_bg, bg = colors.gree_soft, style = "NONE" },
        Title = { fg = colors.green_hard, style = "bold" },
        Visual = { bg = colors.bg_dimmer },
        VisualNOS = { link = "Visual" },
        WarningMsg = { link = "Warning" },
        Whitespace = { fg = colors.fg_comment },
        WildMenu = { link = "Pmenu" },
        Winbar = { link = "TablineFill" },
        WinbarNC = { link = "Winbar" },
        ------------------------------------------------------------------------------------
        -- Extras
        ------------------------------------------------------------------------------------
        SignColumnSB = { link = "SignColumn" },
        NormalSB = { link = "Normal" },
        FloatBorder = { fg = colors.bg_dimmer, bg = colors.bg_normal },
        Selection = { fg = colors.green_hard, style = "bold" },
        Separator = { fg = colors.bg_dim, bg = colors.bg_normal, style = "NONE" },
        VertSplit = { link = "Separator" },
        Bold = { style = "bold" },
        Italic = { style = "italic" },
        Strike = { style = "strikethrough" },
        Hint = { fg = colors.green_soft, bg = "NONE" },
        Info = { fg = colors.blue_soft, bg = "NONE" },
        Note = { fg = colors.purple_soft, bg = "NONE" },
        Success = { fg = colors.green_soft, bg = "NONE" },
        Warn = { fg = colors.yellow_soft, bg = "NONE" },
        Warning = { link = "Warn" },
        qfLineNr = { link = "lineNr" },
        qfFileName = { link = "Directory" },
        debugPC = { link = "CursorLine" },
        debugBreakpoint = { fg = colors.teal_hard },
        healthError = { link = "Error" },
        healthSuccess = { link = "Success" },
        healthWarning = { link = "Warning" },
        ------------------------------------------------------------------------------------
        -- Syntax
        ------------------------------------------------------------------------------------
        -- comment -------------------------------------------------------------------------
        Comment = { fg = colors.fg_comment, style = config.commentStyle },
        -- constant -------------------------------------------------------------- yellow --
        Constant = { fg = colors.yellow_hard },
        String = { fg = colors.yellow_soft },
        Character = { link = "String" },
        Number = { link = "Constant" },
        Boolean = { fg = colors.yellow_hard, style = "bold" },
        Float = { link = "Constant" },
        -- identifier ------------------------------------------------------------- green --
        Identifier = { fg = colors.green_soft },
        Function = { fg = colors.green_hard, style = config.functionStyle },
        -- statement ------------------------------------------------------------- purple --
        Statement = { fg = colors.purple_hard, style = config.statementStyle },
        Conditional = { link = "Statement" },
        Repeat = { link = "Statement" },
        Label = { link = "Statement" },
        Operator = { link = "Statement" },
        Keyword = { fg = colors.purple_soft, style = config.keywordStyle },
        Exception = { link = "Statement" },
        -- preproc ----------------------------------------------------------------- blue --
        PreProc = { fg = colors.blue_hard },
        Include = { link = "PreProc" },
        Define = { link = "PreProc" },
        Macro = { link = "PreProc" },
        PreCondit = { link = "PreProc" },
        -- type --------------------------------------------------------------------- red --
        Type = { fg = colors.red_hard, style = config.typeStyle },
        StorageClass = { link = "Type" },
        Structure = { link = "Type" },
        Typedef = { link = "Type" },
        -- special ----------------------------------------------------------------- teal --
        Special = { fg = colors.teal_hard },
        SpecialChar = { link = "Special" },
        Tag = { link = "Special" },
        Delimiter = { link = "Special" },
        SpecialComment = { link = "Special" },
        Debug = { link = "Special" },
        -- other ---------------------------------------------------------------------------
        Underlined = { fg = colors.teal_hard, style = "underline" },
        Ignore = { link = "NonText" },
        Error = { fg = colors.red_soft, bg = "NONE" },
        Todo = { fg = colors.teal_soft, bg = "NONE" },
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
        -- special ----------------------------------------------------------------- teal --
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
        LspReferenceText = { fg = colors.fg_colored_bg, bg = colors.yellow_soft },
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
            guisp = colors.red_soft,
        },
        DiagnosticUnderlineWarn = {
            style = config.underlineStyle,
            guisp = colors.yellow_soft,
        },
        DiagnosticUnderlineInfo = {
            style = config.underlineStyle,
            guisp = colors.blue_soft,
        },
        DiagnosticUnderlineHint = {
            style = config.underlineStyle,
            guisp = colors.green_soft,
        },
        LspSignatureActiveParameter = { fg = colors.yellow_hard },
        LspCodeLens = { fg = colors.bg_dimmer },
        ------------------------------------------------------------------------------------
        -- Git
        ------------------------------------------------------------------------------------
        diffAdded = { fg = colors.green_soft },
        diffRemoved = { fg = colors.red_soft },
        diffDeleted = { fg = colors.red_soft },
        diffChanged = { fg = colors.blue_soft },
        diffOldFile = { fg = colors.red_soft },
        diffNewFile = { fg = colors.green_soft },
        ------------------------------------------------------------------------------------
        -- Neogit
        ------------------------------------------------------------------------------------
        NeogitNotificationInfo = { link = "DiagnosticInfo" },
        NeogitNotificationWarning = { link = "DiagnosticWarn" },
        NeogitNotificationError = { link = "DiagnosticError" },
        NeogitHunkHeader = { bg = colors.bg_normal, fg = colors.teal_soft, style = "bold" },
        NeogitHunkHeaderHighlight = {
            bg = colors.bg_dim,
            fg = colors.teal_hard,
            style = "bold",
        },
        NeogitDiffContextHighlight = { bg = colors.bg_dim },
        NeogitDiffDeleteHighlight = {
            bg = colors.red_hard,
            fg = colors.fg_colored_bg,
            style = "bold",
        },
        NeogitDiffAddHighlight = {
            bg = colors.green_hard,
            fg = colors.fg_colored_bg,
            style = "bold",
        },
        ------------------------------------------------------------------------------------
        -- GitSigns
        ------------------------------------------------------------------------------------
        GitSignsAdd = { link = "diffAdded" },
        GitSignsChange = { link = "diffChanged" },
        GitSignsDelete = { link = "diffDeleted" },
        GitSignsDeleteLn = { fg = "NONE", bg = colors.red_soft },
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
        NvimTreeRootFolder = { fg = colors.red_hard, style = "bold" },
        NvimTreeGitDirty = { fg = colors.blue_soft },
        NvimTreeGitNew = { fg = colors.green_soft },
        NvimTreeGitDeleted = { fg = colors.red_soft },
        NvimTreeSpecialFile = { fg = colors.teal_hard },
        NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
        NvimTreeImageFile = { fg = colors.teal_hard },
        NvimTreeSymlink = { link = "Type" },
        NvimTreeFolderName = { link = "Directory" },
        NvimTreeFolderIcon = { link = "Directory" },
        NvimTreeExecFile = { fg = colors.green_hard, style = "bold" },
        NvimTreeGitStaged = { fg = colors.green_soft },
        NvimTreeOpenedFile = { fg = colors.teal_hard, style = "italic" },
        ------------------------------------------------------------------------------------
        -- Dashboard
        ------------------------------------------------------------------------------------
        DashboardHeader = { fg = colors.green_soft },
        DashboardFooter = { fg = colors.fg_comment },
        DashboardProjectTitle = { fg = colors.purple_hard, style = "bold" },
        DashboardProjectTitleIcon = { fg = colors.purple_hard },
        DashboardProjectIcon = { fg = colors.purple_soft },
        DashboardMruTitle = { fg = colors.yellow_hard, style = "bold" },
        DashboardMruTitleIcon = { fg = colors.yellow_hard },
        DashboardMruIcon = { fg = colors.yellow_soft },
        DashboardShortCut = { fg = colors.green_hard },
        ------------------------------------------------------------------------------------
        -- LspSaga
        ------------------------------------------------------------------------------------
        LspSagaCodeActionTitle = { link = "FloatBorder" },
        LspSagaCodeActionBorder = { link = "FloatBorder" },
        LspSagaCodeActionTrunCateLine = { link = "LspSagaCodeActionBorder" },
        LspSagaCodeActionContent = { fg = colors.green_hard, bold = true },
        LspSagaLspFinderBorder = { link = "FloatBorder" },
        LspSagaAutoPreview = { link = "FloatBorder" },
        LspSagaFinderSelection = { link = "Selection" },
        TargetFileName = { fg = colors.blue_hard },
        FinderParam = { fg = colors.purple_hard, bold = true },
        FinderVirtText = { fg = colors.teal_hard },
        DefinitionsIcon = { fg = colors.yellow_hard },
        Definitions = { fg = colors.purple_hard, bold = true },
        DefinitionCount = { link = "Title" },
        ReferencesIcon = { fg = colors.yellow_hard },
        References = { fg = colors.purple_hard, bold = true },
        ReferencesCount = { link = "Title" },
        ImplementsIcon = { fg = colors.yellow_hard },
        Implements = { fg = colors.purple_hard, bold = true },
        ImplementsCount = { link = "Title" },
        FinderSpinnerBorder = { link = "FloatBorder" },
        FinderSpinnerTitle = { link = "Title" },
        FinderSpinner = { fg = colors.red_hard, bold = true },
        FinderPreviewSearch = { link = "Search" },
        DefinitionBorder = { link = "FloatBorder" },
        DefinitionArrow = { fg = colors.red_hard },
        DefinitionSearch = { link = "Search" },
        DefinitionFile = { fg = colors.fg_colored_bg, bg = colors.blue_hard },
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
        LspSagaDiagnosticHeader = { fg = colors.green_hard },
        DiagnosticQuickFix = { fg = colors.green_hard, bold = true },
        DiagnosticMap = { fg = colors.red_hard },
        DiagnosticLineCol = { link = "CursorColumn" },
        LspSagaDiagnosticTruncateLine = { link = "LspSagaDiagnosticBorder" },
        ColInLineDiagnostic = { link = "Comment" },
        LspSagaSignatureHelpBorder = { link = "FloatBorder" },
        LspSagaShTrunCateLine = { link = "LspSagaSignatureHelpBorder" },
        LspSagaLightBulb = { link = "DiagnosticSignHint" },
        SagaShadow = { fg = colors.bg_dim },
        LspSagaBorderTitle = { link = "String" },
        LSOutlinePreviewBorder = { link = "FloatBorder" },
        OutlineIndentEvn = { fg = colors.purple_hard },
        OutlineIndentOdd = { fg = colors.yellow_hard },
        OutlineFoldPrefix = { fg = colors.red_hard },
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
        BufferCurrent = { fg = colors.green_hard, bg = colors.bg_normal, style = "bold" },
        BufferCurrentIndex = { link = "BufferCurrent" },
        BufferCurrentMod = {
            fg = colors.yellow_hard,
            bg = colors.bg_normal,
            style = "bold",
        },
        BufferCurrentSign = { link = "BufferCurrent" },
        BufferCurrentTarget = {
            fg = colors.green_hard,
            bg = colors.bg_normal,
            style = "bold",
        },
        BufferVisible = { fg = colors.fg_normal, bg = colors.bg_normal },
        BufferVisibleIndex = { link = "BufferVisible" },
        BufferVisibleMod = { fg = colors.yellow_soft, bg = colors.bg_normal },
        BufferVisibleSign = { link = "BufferVisible" },
        BufferVisibleTarget = {
            fg = colors.fg_normal,
            bg = colors.bg_normal,
            style = "bold",
        },
        BufferInactive = { fg = colors.fg_dimmer, bg = colors.bg_dim },
        BufferInactiveIndex = { link = "BufferInactive" },
        BufferInactiveMod = { fg = colors.yellow_soft, bg = colors.bg_dim },
        BufferInactiveSign = { fg = colors.bg_dimmer, bg = colors.bg_dim },
        BufferInactiveTarget = { fg = colors.fg_dimmer, bg = colors.bg_dim, style = "bold" },
        BufferTabpages = { fg = colors.green_hard, bg = colors.bg_normal },
        BufferTabpageFill = { fg = colors.fg_dimmer, bg = colors.bg_normal },
        ------------------------------------------------------------------------------------
        -- Cmp
        ------------------------------------------------------------------------------------
        CmpDocumentation = { fg = colors.fg_dim, bg = colors.bg_dim },
        CmpDocumentationBorder = { link = "FloatBorder" },
        CmpItemAbbr = { fg = colors.fg_normal, bg = "NONE" },
        CmpItemAbbrDeprecated = {
            fg = colors.bg_dimmer,
            bg = "NONE",
            style = "strikethrough",
        },
        CmpItemAbbrMatch = { fg = colors.green_hard, bg = "NONE" },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
        CmpItemKindDefault = { fg = colors.bg_dimmer, bg = "NONE" },
        CmpItemMenu = { fg = colors.bg_dimmer, bg = "NONE" },
        CmpItemKindVariable = { fg = colors.fg_dim, bg = "NONE" },
        CmpItemKindFunction = { link = "Function" },
        CmpItemKindMethod = { link = "Function" },
        CmpItemKindConstructor = { link = "Constructor" },
        CmpItemKindClass = { link = "Type" },
        CmpItemKindInterface = { link = "Type" },
        CmpItemKindStruct = { link = "Type" },
        CmpItemKindProperty = { link = "Property" },
        CmpItemKindField = { link = "Field" },
        CmpItemKindEnum = { link = "Identifier" },
        CmpItemKindSnippet = { fg = colors.teal_hard, bg = "NONE" },
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
        IndentBlanklineChar = { fg = colors.bg_dim },
        IndentBlanklineSpaceChar = { fg = colors.bg_dim },
        IndentBlanklineSpaceCharBlankline = { fg = colors.bg_dim },
        IndentBlanklineContextChar = { fg = colors.bg_dim },
        IndentBlanklineContextStart = { guisp = colors.bg_dim, style = "underline" },
        ------------------------------------------------------------------------------------
        -- SmoothCursor
        ------------------------------------------------------------------------------------
        SmoothCursorRed = { fg = colors.green_hard },
        SmoothCursorOrange = { fg = colors.green_soft },
        SmoothCursorYellow = { fg = colors.teal_hard },
        SmoothCursorGreen = { fg = colors.teal_soft },
        SmoothCursorAqua = { fg = colors.blue_hard },
        SmoothCursorBlue = { fg = colors.blue_soft },
        SmoothCursorPurple = { fg = colors.purple_hard },
        SmoothCursor = { fg = colors.green_hard, style = "bold" },
        ------------------------------------------------------------------------------------
        -- Notify
        ------------------------------------------------------------------------------------
        NotifyERRORBorder = { guifg = colors.red_soft },
        NotifyWARNBorder = { guifg = colors.yellow_soft },
        NotifyINFOBorder = { guifg = colors.green_soft },
        NotifyDEBUGBorder = { guifg = colors.teal_soft },
        NotifyTRACEBorder = { guifg = colors.purple_soft },
        NotifyERRORIcon = { guifg = colors.red_hard },
        NotifyWARNIcon = { guifg = colors.yellow_hard },
        NotifyINFOIcon = { guifg = colors.green_hard },
        NotifyDEBUGIcon = { guifg = colors.teal_hard },
        NotifyTRACEIcon = { guifg = colors.purple_hard },
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
