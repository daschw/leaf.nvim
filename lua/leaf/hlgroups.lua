local M = {}

--- generate highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, config)
    config = vim.tbl_extend("force", require("leaf").config, config or {})

    local hlgroups = {
        Comment = { fg = colors.fg_comment, style = config.commentStyle },
        ColorColumn = { fg = colors.bg_dim, bg = colors.bg_normal },
        Conceal = { fg = colors.bg_dim, bg = "NONE", style = "bold" },
        Cursor = { fg = colors.bg_normal, bg = colors.fg_normal },
        lCursor = { link = "Cursor" },
        CursorIM = { link = "Cursor" },
        CursorLine = { bg = colors.bg_dim },
        CursorLineNr = { fg = colors.green_hard, bg = "NONE", style = "bold" },
        CursorColumn = { link = "CursorLine" },
        Directory = { fg = colors.blue_hard },
        DiffAdd = { fg = colors.fg_colored_bg, bg = colors.green_soft },
        DiffChange = { fg = colors.fg_colored_bg, bg = colors.blue_soft },
        DiffDelete = { fg = colors.fg_colored_bg, bg = colors.red_soft, style = "none" },
        DiffText = { fg = colors.fg_colored_bg, bg = colors.yellow_soft },
        EndOfBuffer = { fg = colors.bg_normal },
        TermCursor = { link = "Cursor" },
        TermCursorNC = { link = "Cursor" },
        Separator = { fg = colors.bg_dim, bg = colors.bg_normal, style = "NONE" },
        VertSplit = { link = "Separator" },
        WinSeparator = { link = "Separator" },
        Folded = { bg = colors.bg_dim },
        FoldColumn = { bg = colors.bg_dim },
        SignColumn = { fg = colors.bg_dim, bg = "NONE" },
        SignColumnSB = { link = "SignColumn" },
        Substitute = { fg = colors.fg_colored_bg, bg = colors.green_hard },
        LineNr = { fg = colors.fg_comment },
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
        NormalNC = { link = "Normal" },
        NormalSB = { link = "Normal" },
        NormalFloat = { fg = colors.fg_normal, bg = colors.bg_normal },
        FloatBorder = { fg = colors.bg_dimmer, bg = colors.bg_normal },
        Pmenu = { fg = colors.fg_normal, bg = colors.bg_dim },
        PmenuSel = { fg = "NONE", bg = colors.bg_dimmer },
        PmenuSbar = { link = "Pmenu" },
        PmenuThumb = { fg = colors.fg_colored_bg, bg = colors.green_hard },
        Question = { link = "MoreMsg" },
        QuickFixLine = { link = "CursorLine" },
        Search = { fg = colors.fg_colored_bg, bg = colors.yellow_soft },
        IncSearch = { fg = colors.fg_colored_bg, bg = colors.yellow_hard, style = "NONE" },
        Selection = { fg = colors.green_hard, style = "bold" },
        SpecialKey = { link = "NonText" },
        SpellBad = { style = config.underlineStyle, guisp = colors.red_hard },
        SpellCap = { style = config.underlineStyle, guisp = colors.yellow_hard },
        SpellLocal = { style = config.underlineStyle, guisp = colors.yellow_hard },
        SpellRare = { style = config.underlineStyle, guisp = colors.yellow_hard },
        StatusLine = { fg = colors.fg_dim, bg = colors.bg_dimmer, style = "NONE" },
        StatusLineNC = { fg = colors.bg_dimmer, bg = colors.bg_dim, style = "NONE" },
        TabLine = { bg = colors.bg_dim, fg = colors.fg_dim, style = "NONE" },
        TabLineFill = { bg = colors.bg_normal, style = "NONE" },
        TabLineSel = { fg = colors.fg_normal, bg = colors.bg_dimmer, style = "NONE" },
        Title = { fg = colors.green_hard, style = "bold" },
        Visual = { bg = colors.bg_dimmer },
        VisualNOS = { link = "Visual" },
        Whitespace = { fg = colors.fg_comment },
        WildMenu = { link = "Pmenu" },

        Annotation = { fg = colors.purple_soft },
        Attribute = { fg = colors.green_soft },
        Boolean = { fg = colors.yellow_hard, style = "bold" },
        Character = { link = "String" },
        Conditional = { link = "Keyword" },
        Constant = { fg = colors.yellow_hard },
        Constructor = { link = "Statement" },
        Debug = { link = "Warning" },
        Define = { fg = colors.teal_soft },
        Delimiter = { fg = colors.purple_hard },
        Exception = { fg = colors.teal_hard },
        Field = { link = "Identifier" },
        Float = { link = "Number" },
        Function = { fg = colors.blue_hard, style = config.functionStyle },
        Identifier = { fg = colors.yellow_hard },
        Ignore = { link = "NonText" },
        Include = { link = "KeywordReturn" },
        Keyword = { fg = colors.purple_hard, style = config.keywordStyle },
        KeywordFunction = { fg = colors.purple_hard, style = config.keywordStyle },
        KeywordOperator = { fg = colors.yellow_hard, style = "bold" },
        KeywordReturn = { fg = colors.teal_hard, style = config.keywordStyle },
        Label = { link = "Constant" },
        Literal = { link = "String" },
        Macro = { link = "Function" },
        Method = { link = "Function" },
        Namespace = { link = "Keyword" },
        None = {},
        Number = { fg = colors.red_hard },
        Operator = { fg = colors.yellow_hard },
        Parameter = { link = "Identifier" },
        PreCondit = { link = "Conditional" },
        PreProc = { fg = colors.yellow_hard },
        Property = { link = "Identifier" },
        PunctBracket = { link = "PunctDelimiter" },
        PunctDelimiter = { fg = colors.purple_soft },
        PunctSpecial = { link = "PunctDelimiter" },
        Repeat = { link = "Conditional" },
        Special = { fg = colors.teal_hard },
        SpecialChar = { link = "Special" },
        SpecialComment = { link = "Special" },
        Statement = { fg = colors.purple_hard, style = config.statementStyle },
        StorageClass = { link = "Type" },
        String = { fg = colors.green_hard },
        StringRegex = { fg = colors.yellow_hard },
        StringEscape = { fg = colors.teal_hard, style = "bold" },
        Struct = { link = "Type" },
        Structure = { link = "Type" },
        Symbol = { fg = colors.teal_hard },
        Tag = { link = "Label" },
        Type = { fg = colors.teal_hard, style = config.typeStyle },
        Typedef = { link = "Type" },
        Variable = {},
        VariableBuiltin = { fg = colors.teal_hard, style = config.variablebuiltinStyle },

        Bold = { style = "bold" },
        Italic = { style = "italic" },
        Strike = { style = "strikethrough" },
        Underlined = { style = "underline" },

        Error = { fg = colors.red_soft, bg = "NONE" },
        ErrorMsg = { link = "Error" },
        Hint = { fg = colors.green_soft, bg = "NONE" },
        Info = { fg = colors.blue_soft, bg = "NONE" },
        Note = { fg = colors.purple_soft, bg = "NONE" },
        Success = { fg = colors.green_soft, bg = "NONE" },
        Todo = { fg = colors.teal_soft, bg = "NONE" },
        Warn = { fg = colors.yellow_soft, bg = "NONE" },
        Warning = { link = "Warn" },
        WarningMsg = { link = "Warning" },

        qfLineNr = { link = "lineNr" },
        qfFileName = { link = "Directory" },

        -- htmlH1 = {},
        -- htmlH2 = {},

        -- mkdHeading = {},
        -- mkdCode = {},
        -- mkdCodeDelimiter = {},
        -- mkdCodeStart = {},
        -- mkdCodeEnd = {},
        -- mkdLink = {},

        -- markdownHeadingDelimiter = {},
        -- markdownCode = {},
        -- markdownCodeBlock = {},
        -- markdownH1 = {},
        -- markdownH2 = {},
        -- markdownLinkText = {},

        debugPC = { link = "CursorLine" },
        debugBreakpoint = { fg = colors.teal_hard },

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

        DiagnosticUnderlineError = { style = config.underlineStyle, guisp = colors.red_soft },
        DiagnosticUnderlineWarn = { style = config.underlineStyle, guisp = colors.yellow_soft },
        DiagnosticUnderlineInfo = { style = config.underlineStyle, guisp = colors.blue_soft },
        DiagnosticUnderlineHint = { style = config.underlineStyle, guisp = colors.green_soft },

        LspSignatureActiveParameter = { fg = colors.yellow_hard },
        LspCodeLens = { fg = colors.bg_dimmer },

        TSAnnotation = { link = "Annotation" },
        TSAttribute = { link = "Attribute" },
        TSBoolean = { link = "Boolean" },
        TSCharacter = { link = "Character" },
        TSComment = { link = "Comment" },
        TSNote = { link = "Note" },
        TSWarning = { link = "Warning" },
        TSDanger = { link = "Error" },
        TSConstructor = { link = "Constructor" },
        TSConditional = { link = "Conditional" },
        TSConstant = { link = "Constant" },
        TSConstBuiltin = { link = "TSConstant" },
        TSConstMacro = { link = "TSConstant" },
        TSError = { link = "Error" },
        TSException = { link = "Exception" },
        TSField = { link = "Field" },
        TSFloat = { link = "Float" },
        TSFunction = { link = "Function" },
        TSFuncBuiltin = { link = "Function" },
        TSFuncMacro = { link = "Macro" },
        TSInclude = { link = "Include" },
        TSKeyword = { link = "Keyword" },
        TSKeywordFunction = { link = "KeywordFunction" },
        TSKeywordReturn = { link = "KeywordReturn" },
        TSLabel = { link = "Label" },
        TSMethod = { link = "Function" },
        TSNamespace = { link = "Namespace" },
        TSNone = { link = "None" },
        TSNumber = { link = "Number" },
        TSOperator = { link = "Operator" },
        TSKeywordOperator = { link = "KeywordOperator" },
        TSParameter = { link = "Parameter" },
        TSParameterReference = { link = "TSParameter" },
        TSProperty = { link = "Property" },
        TSPunctDelimiter = { link = "PunctDelimiter" },
        TSPunctBracket = { link = "PunctBracket" },
        TSPunctSpecial = { link = "PunctSpecial" },
        TSRepeat = { link = "Repeat" },
        TSString = { link = "String" },
        TSStringRegex = { link = "StringRegex" },
        TSStringEscape = { link = "StringEscape" },
        TSSymbol = { link = "Symbol" },
        TSType = { link = "Type" },
        TSTypeBuiltin = { link = "Type" },
        TSVariable = { link = "Variable" },
        TSVariableBuiltin = { link = "VariableBuiltin" },
        TSTag = { link = "Tag" },
        TSTagDelimiter = { link = "Delimiter" },
        TSText = { link = "Normal" },
        TSTextReference = { link = "TSText" },
        TSEmphasis = { link = "Bold" },
        TSUnderline = { link = "Underlined" },
        TSStrike = { link = "Strike" },
        TSTitle = { link = "Title" },
        TSLiteral = { link = "Literal" },
        TSURI = { link = "Underlined" },

        -- Lua
        -- luaTSProperty = {},

        -- LspTrouble
        -- LspTroubleText = {},
        -- LspTroubleCount = {},
        -- LspTroubleNormal = {},

        -- Illuminate
        -- illuminatedWord = {},
        -- illuminatedCurWord = {},

        -- Git
        diffAdded = { fg = colors.green_soft },
        diffRemoved = { fg = colors.red_soft },
        diffDeleted = { fg = colors.red_soft },
        diffChanged = { fg = colors.blue_soft },
        diffOldFile = { fg = colors.red_soft },
        diffNewFile = { fg = colors.green_soft },
        -- diffFile = {},
        -- diffLine = {},
        -- diffIndexLine = { link = 'Identifier' },

        -- Neogit
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

        -- GitGutter
        -- GitGutterAdd = {},
        -- GitGutterChange = {},
        -- GitGutterDelete = {},

        -- GitSigns
        GitSignsAdd = { link = "diffAdded" },
        GitSignsChange = { link = "diffChanged" },
        GitSignsDelete = { link = "diffDeleted" },
        GitSignsDeleteLn = { fg = "NONE", bg = colors.red_soft },

        -- Telescope = {},
        TelescopeBorder = { link = "FloatBorder" },
        TelescopeResultsClass = { link = "TSType" },
        TelescopeResultsStruct = { link = "TSType" },
        TelescopeResultsVariable = { link = "TSVariable" },

        -- NvimTree = {},
        NvimTreeNormal = { link = "Normal" },
        NvimTreeNormalNC = { link = "NormalNC" },
        NvimTreeRootFolder = { fg = colors.yellow_hard, style = "bold" },
        NvimTreeGitDirty = { fg = colors.blue_soft },
        NvimTreeGitNew = { fg = colors.green_soft },
        NvimTreeGitDeleted = { fg = colors.red_soft },
        NvimTreeSpecialFile = { fg = colors.teal_hard },
        -- NvimTreeIndentMarker = {},
        NvimTreeImageFile = { fg = colors.teal_hard },
        NvimTreeSymlink = { link = "Type" },
        NvimTreeFolderName = { link = "Directory" },
        NvimTreeExecFile = { fg = colors.green_hard, style = "bold" },
        NvimTreeGitStaged = { fg = colors.green_soft },
        NvimTreeOpenedFile = { fg = colors.teal_hard, style = "italic" },

        -- Fern
        -- FernBranchText = {},

        -- glyph palette = {},
        -- GlyphPalette1 = {},
        -- GlyphPalette2 = {},
        -- GlyphPalette3 = {},
        -- GlyphPalette4 = {},
        -- GlyphPalette6 = {},
        -- GlyphPalette7 = {},
        -- GlyphPalette9 = {},

        -- Dashboard
        DashboardShortCut = { fg = colors.green_hard },
        DashboardHeader = { fg = colors.red_soft },
        DashboardCenter = { fg = colors.yellow_hard },
        DashboardFooter = { fg = colors.teal_hard },

        -- WhichKey = {},
        -- WhichKeyGroup = {},
        -- WhichKeyDesc = {},
        -- WhichKeySeperator = {},
        -- WhichKeySeparator = {},
        -- WhichKeyFloat = {},
        -- WhichKeyValue = {},

        -- LspSaga
        LspSagaCodeActionTitle = { link = "FloatBorder" },
        LspSagaCodeActionBorder = { link = "FloatBorder" },
        LspSagaCodeActionTrunCateLine = { link = "LspSagaCodeActionBorder" },
        LspSagaCodeActionContent = { fg = colors.green_hard, bold = true },
        -- finder
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
        --finder spinner
        FinderSpinnerBorder = { link = "FloatBorder" },
        FinderSpinnerTitle = { link = "Title" },
        FinderSpinner = { fg = colors.red_hard, bold = true },
        FinderPreviewSearch = { link = "Search" },
        -- definition
        DefinitionBorder = { link = "FloatBorder" },
        DefinitionArrow = { fg = colors.red_hard },
        DefinitionSearch = { link = "Search" },
        DefinitionFile = { fg = colors.fg_colored_bg, bg = colors.blue_hard },
        -- hover
        LspSagaHoverBorder = { link = "FloatBorder" },
        LspSagaHoverTrunCateLine = { link = "LspSagaHoverBorder" },
        -- rename
        LspSagaRenameBorder = { link = "FloatBorder" },
        LspSagaRenameMatch = { link = "Search" },
        -- diagnostic
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
        -- signture help
        LspSagaSignatureHelpBorder = { link = "FloatBorder" },
        LspSagaShTrunCateLine = { link = "LspSagaSignatureHelpBorder" },
        -- lightbulb
        LspSagaLightBulb = { link = "DiagnosticSignHint" },
        -- shadow
        SagaShadow = { fg = colors.bg_dim },
        -- float
        LspSagaBorderTitle = { link = "String" },
        -- Outline
        LSOutlinePreviewBorder = { link = "FloatBorder" },
        OutlineIndentEvn = { fg = colors.purple_hard },
        OutlineIndentOdd = { fg = colors.yellow_hard },
        OutlineFoldPrefix = { fg = colors.red_hard },
        OutlineDetail = { link = "Comment" },
        -- all floatwindow of lspsaga
        LspFloatWinNormal = { link = "Normal" },

        -- Floaterm
        FloatermBorder = { link = "FloatBorder" },

        -- NeoVim = {},
        healthError = { link = "Error" },
        healthSuccess = { link = "Success" },
        healthWarning = { link = "Warning" },

        -- BufferLine
        -- BufferLineIndicatorSelected = {},
        -- BufferLineFill = {},

        -- Barbar
        BufferCurrent = { fg = colors.green_hard, bg = colors.bg_normal, style = "bold" },
        BufferCurrentIndex = { link = "BufferCurrent" },
        BufferCurrentMod = { fg = colors.yellow_hard, bg = colors.bg_normal, style = "bold" },
        BufferCurrentSign = { link = "BufferCurrent" },
        BufferCurrentTarget = { fg = colors.green_hard, bg = colors.bg_normal, style = "bold" },
        BufferVisible = { fg = colors.fg_normal, bg = colors.bg_normal },
        BufferVisibleIndex = { link = "BufferVisible" },
        BufferVisibleMod = { fg = colors.yellow_soft, bg = colors.bg_normal },
        BufferVisibleSign = { link = "BufferVisible" },
        BufferVisibleTarget = { fg = colors.fg_normal, bg = colors.bg_normal, style = "bold" },
        BufferInactive = { fg = colors.fg_dimmer, bg = colors.bg_dim },
        BufferInactiveIndex = { link = "BufferInactive" },
        BufferInactiveMod = { fg = colors.yellow_soft, bg = colors.bg_dim },
        BufferInactiveSign = { fg = colors.bg_dimmer, bg = colors.bg_dim },
        BufferInactiveTarget = { fg = colors.fg_dimmer, bg = colors.bg_dim, style = "bold" },
        BufferTabpages = { fg = colors.green_hard, bg = colors.bg_normal },
        BufferTabpageFill = { fg = colors.fg_dimmer, bg = colors.bg_normal },

        -- Sneak
        -- Sneak = {},
        -- SneakScope = {},

        -- Hop
        -- HopNextKey = {},
        -- HopNextKey1 = {},
        -- HopNextKey2 = {},
        -- HopUnmatched = {},

        -- LightspeedGreyWash = {},

        -- Cmp
        CmpDocumentation = { fg = colors.fg_dim, bg = colors.bg_dim },
        CmpDocumentationBorder = { link = "FloatBorder" },

        CmpItemAbbr = { fg = colors.fg_normal, bg = "NONE" },
        CmpItemAbbrDeprecated = { fg = colors.bg_dimmer, bg = "NONE", style = "strikethrough" },

        CmpItemAbbrMatch = { fg = colors.green_hard, bg = "NONE" },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },

        CmpItemKindDefault = { fg = colors.bg_dimmer, bg = "NONE" },
        CmpItemMenu = { fg = colors.bg_dimmer, bg = "NONE" },

        CmpItemKindVariable = { fg = colors.fg_dim, bg = "NONE" },

        CmpItemKindFunction = { link = "Function" },
        CmpItemKindMethod = { link = "Function" },

        CmpItemKindConstructor = { link = "TSConstructor" },

        CmpItemKindClass = { link = "Type" },
        CmpItemKindInterface = { link = "Type" },
        CmpItemKindStruct = { link = "Type" },

        CmpItemKindProperty = { link = "TSProperty" },
        CmpItemKindField = { link = "TSField" },
        CmpItemKindEnum = { link = "Identifier" },

        CmpItemKindSnippet = { fg = colors.teal_hard, bg = "NONE" },

        CmpItemKindText = { link = "TSText" },

        CmpItemKindModule = { link = "TSInclude" },

        CmpItemKindFile = { link = "Directory" },
        CmpItemKindFolder = { link = "Directory" },

        CmpItemKindKeyword = { link = "TSKeyword" },
        CmpItemKindTypeParameter = { link = "Identifier" },
        CmpItemKindConstant = { link = "Constant" },
        CmpItemKindOperator = { link = "Operator" },
        CmpItemKindReference = { link = "TSParameterReference" },
        CmpItemKindEnumMember = { link = "TSField" },

        CmpItemKindValue = { link = "String" },
        CmpItemKindUnit = {},
        CmpItemKindEvent = {},
        CmpItemKindColor = {},

        -- IndentBlankline
        IndentBlanklineChar = { fg = colors.bg_dim },
        IndentBlanklineSpaceChar = { fg = colors.bg_dim },
        IndentBlanklineSpaceCharBlankline = { fg = colors.bg_dim },
        IndentBlanklineContextChar = { fg = colors.bg_dim },
        IndentBlanklineContextStart = { guisp = colors.bg_dim, style = "underline" },
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
