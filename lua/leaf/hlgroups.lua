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
        CursorColumn = { link = "CursorLine" },
        Directory = { fg = colors.blue_hard },
        DiffAdd = { fg = colors.fg_normal, bg = colors.green_soft },
        DiffChange = { fg = colors.fg_normal, bg = colors.blue_soft },
        DiffDelete = { fg = colors.fg_normal, bg = colors.red_soft, style = "none" },
        DiffText = { fg = colors.fg_normal, bg = colors.yellow_soft },
        EndOfBuffer = { fg = colors.bg_normal },
        -- TermCursor = {},
        -- TermCursorNC = {},
        ErrorMsg = { fg = colors.red_hard, bg = "NONE" },
        VertSplit = { fg = colors.bg_dim, bg = colors.bg_normal, style = "NONE" },
        WinSeparator = { link = "VertSplit" },
        Folded = { fg = colors.bg_dim, bg = colors.bg_soft },
        FoldColumn = { fg = colors.bg_dim, bg = "NONE" },
        SignColumn = { fg = colors.bg_dim, bg = "NONE" },
        SignColumnSB = { link = "SignColumn" },
        Substitute = { fg = colors.fg_normal, bg = colors.green_hard },
        LineNr = { fg = colors.fg_comment },
        CursorLineNr = { fg = colors.green_hard, bg = "NONE", style = "bold" },
        MatchParen = { fg = colors.yellow_hard, bg = "NONE", style = "bold" },
        ModeMsg = { fg = colors.yellow_hard, style = "bold", bg = "NONE" },
        MsgArea = { fg = colors.fg_dim, bg = "NONE" },
        -- MsgSeparator                   = {},
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
        PmenuThumb = { fg = colors.bg_normal, bg = colors.green_hard },
        Question = { link = "MoreMsg" },
        QuickFixLine = { link = "CursorLine" },
        Search = { fg = colors.bg_normal, bg = colors.green_hard },
        IncSearch = { fg = colors.fg_colored_bg, bg = colors.yellow_hard, style = "NONE" },
        SpecialKey = { link = "NonText" },
        SpellBad = {
            style = config.underlineStyle,
            guisp = colors.red_hard,
        },
        SpellCap = {
            style = config.underlineStyle,
            guisp = colors.yellow_hard,
        },
        SpellLocal = {
            style = config.underlineStyle,
            guisp = colors.yellow_hard,
        },
        SpellRare = {
            style = config.underlineStyle,
            guisp = colors.yellow_hard,
        },
        StatusLine = { fg = colors.fg_dim, bg = colors.bg_dimmer, style = "NONE" },
        StatusLineNC = { fg = colors.bg_dimmer, bg = colors.bg_dim, style = "NONE" },
        TabLine = { bg = colors.bg_dim, fg = colors.fg_dim, style = "NONE" },
        TabLineFill = { bg = colors.bg_normal, style = "NONE" },
        TabLineSel = { fg = colors.fg_normal, bg = colors.bg_dimmer, style = "NONE" },
        Title = { fg = colors.green_hard, style = "bold" },
        Visual = { bg = colors.bg_dimmer },
        VisualNOS = { link = "Visual" },
        WarningMsg = { fg = colors.yellow_hard, bg = "NONE" },
        Whitespace = { fg = colors.bg_dim },
        WildMenu = { link = "Pmenu" },

        Constant = { fg = colors.yellow_hard },
        String = { fg = colors.green_hard },
        Character = { link = "String" },
        Number = { fg = colors.red_hard },
        Boolean = { fg = colors.yellow_hard, style = "bold" },
        Float = { link = "Number" },

        Identifier = { fg = colors.yellow_hard },
        Function = { fg = colors.blue_hard, style = config.functionStyle },
        Method = { link = "Function" },
        Statement = { fg = colors.purple_hard, style = config.statementStyle },
        -- Conditional = {},
        -- Repeat = {},
        -- Label = {},
        Operator = { fg = colors.yellow_hard },
        Keyword = { fg = colors.purple_hard, style = config.keywordStyle },
        Exception = { fg = colors.teal_hard },

        PreProc = { fg = colors.yellow_hard },
        -- Include = {},
        -- Define = {},
        -- Macro = {},
        -- PreCondit = {},

        Type = { fg = colors.teal_hard, style = config.typeStyle },
        Struct = { link = "Type" },
        -- StorageClass = {},
        -- Structure = {},
        -- Typedef = {},

        Special = { fg = colors.teal_hard },
        -- SpecialChar = {},
        -- Tag = {},
        -- Delimiter = {},
        -- SpecialComment = {},
        -- Debug = {},

        Underlined = { fg = colors.teal_hard, style = "underline" },
        Bold = { style = "bold" },
        Italic = { style = "italic" },

        Ignore = { link = "NonText" },

        Error = { fg = colors.red_hard, bg = "NONE" },
        Todo = { fg = colors.fg_colored_bg, bg = colors.blue_hard, style = "bold" },

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

        DiagnosticError = { fg = colors.red_hard },
        DiagnosticWarn = { fg = colors.yellow_hard },
        DiagnosticInfo = { fg = colors.blue_hard },
        DiagnosticHint = { fg = colors.teal_hard },

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
            guisp = colors.red_hard,
        },
        DiagnosticUnderlineWarn = {
            style = config.underlineStyle,
            guisp = colors.yellow_hard,
        },
        DiagnosticUnderlineInfo = {
            style = config.underlineStyle,
            guisp = colors.blue_hard,
        },
        DiagnosticUnderlineHint = {
            style = config.underlineStyle,
            guisp = colors.teal_hard,
        },

        LspSignatureActiveParameter = { fg = colors.yellow_hard },
        LspCodeLens = { fg = colors.bg_dimmer },

        -- ALEErrorSign = {},
        -- ALEWarningSign = {},

        -- TSAnnotation = {},
        TSAttribute = { link = "Constant" },
        -- TSBoolean = {},
        -- TSCharacter = {},
        -- TSComment = {},
        -- TSNote = {}, -- links to SpecialComment -> Special
        TSWarning = { link = "Todo" }, --default
        TSDanger = { link = "WarningMsg" }, --default
        TSConstructor = { fg = colors.purple_hard }, -- Function/Special/Statement/Keyword
        -- TSConditional = {},
        -- TSConstant = {},
        -- TSConstBuiltin = {},
        -- TSConstMacro = {},
        TSError = { fg = colors.red_hard },
        -- TSException = { link = 'Exception' }, -- default, -> statement
        TSException = { fg = colors.teal_hard, style = config.statementStyle },
        TSField = { link = "Identifier" }, -- default
        -- TSField = { link = 'Variable'},
        -- TSFloat = {},
        -- TSFunction = {},
        -- TSFuncBuiltin = {link = "Function" },
        -- TSFuncMacro = {},
        -- TSInclude = {},
        TSKeyword = { link = "Keyword" },
        -- TSKeywordFunction = { link = "Keyword" }, -- default
        -- TSKeywordFunction = { link = "Function" },
        TSKeywordReturn = { fg = colors.teal_hard, style = config.keywordStyle },
        TSLabel = { link = "Label" },
        TSMethod = { link = "Function" },
        -- TSNamespace = {},
        -- TSNone = {},
        -- TSNumber = {},
        TSOperator = { link = "Operator" },
        TSKeywordOperator = { fg = colors.yellow_hard, style = "bold" },
        TSParameter = { link = "Identifier" }, -- default
        -- TSParameterReference = {},
        TSProperty = { link = "Identifier" }, -- default
        -- TSPunctDelimiter = {},
        TSPunctDelimiter = { fg = colors.purple_soft },
        TSPunctBracket = { fg = colors.purple_soft },
        TSPunctSpecial = { fg = colors.purple_soft },
        -- TSRepeat = {},
        -- TSString = {},
        TSStringRegex = { fg = colors.yellow_hard },
        TSStringEscape = { fg = colors.yellow_hard, style = "bold" },
        -- TSSymbol = {},
        -- TSType = {},
        -- TSTypeBuiltin = {},
        TSVariable = { fg = "NONE" },
        TSVariableBuiltin = { fg = colors.teal_hard, style = config.variablebuiltinStyle },

        -- TSTag = {},
        -- TSTagDelimiter = {},
        -- TSText = {},
        -- TSTextReference = {},
        -- TSEmphasis = {},
        -- TSUnderline = {},
        -- TSStrike = {},
        -- TSTitle = {},
        -- TSLiteral = {},
        -- TSURI = {},

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
        -- NeogitBranch = {},
        -- NeogitRemote = {},
        -- NeogitHunkHeader = {},
        -- NeogitHunkHeaderHighlight = {},
        -- NeogitDiffContextHighlight = {},
        -- NeogitDiffDeleteHighlight = {},
        -- NeogitDiffAddHighlight = {},

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
        TelescopeBorder = { fg = colors.bg_dimmer, bg = colors.bg_normal },
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
        -- DiagnosticWarning = {},
        -- DiagnosticInformation = {},

        -- LspFloatWinNormal = {},
        -- LspFloatWinBorder = {},
        -- LspSagaBorderTitle = {},
        -- LspSagaHoverBorder = {},
        -- LspSagaRenameBorder = {},
        -- LspSagaDefPreviewBorder = {},
        -- LspSagaCodeActionBorder = {},
        -- LspSagaFinderSelection = {},
        -- LspSagaCodeActionTitle = {},
        -- LspSagaCodeActionContent = {},
        -- LspSagaSignatureHelpBorder = {},
        -- ReferencesCount = {},
        -- DefinitionCount = {},
        -- DefinitionIcon = {},
        -- ReferencesIcon = {},
        -- TargetWord = {},

        -- Floaterm
        FloatermBorder = { fg = colors.bg_dimmer, bg = colors.bg_normal },

        -- NeoVim = {},
        healthError = { fg = colors.red_hard },
        healthSuccess = { fg = colors.green_hard },
        healthWarning = { fg = colors.yellow_hard },

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
        CmpDocumentationBorder = { fg = colors.bg_dimmer, bg = colors.bg_normal },

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
