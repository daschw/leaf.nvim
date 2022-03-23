local M = {}

--- generate highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, config)
    config = vim.tbl_extend("force", require("leaf").config, config or {})

    local hlgroups = {
        Comment = { fg = colors.bg2, style = config.commentStyle },
        ColorColumn = { fg = colors.bg1, bg = colors.bg0 },
        Conceal = { fg = colors.bg1, bg = "NONE", style = "bold" },
        Cursor = { fg = colors.bg0, bg = colors.fg0 },
        lCursor = { link = "Cursor" },
        CursorIM = { link = "Cursor" },
        CursorLine = { bg = colors.bg1 },
        CursorColumn = { link = "CursorLine" },
        Directory = { fg = colors.blue0 },
        DiffAdd = { fg = "NONE", bg = colors.green0 },
        DiffChange = { fg = "NONE", bg = colors.blue0 },
        DiffDelete = { fg = "NONE", bg = colors.red0, style = "none" },
        DiffText = { fg = "NONE", bg = colors.yellow0 },
        EndOfBuffer = { fg = colors.bg0 },
        -- TermCursor = {},
        -- TermCursorNC = {},
        ErrorMsg = { fg = colors.red1, bg = "NONE" },
        VertSplit = { fg = colors.bg1, bg = colors.bg0, style = "NONE" },
        WinSeparator = config.globalStatus and {
            fg = colors.bg1,
            bg = config.dimInactive and colors.bg1 or "NONE",
        } or { link = "VertSplit" },
        Folded = { fg = colors.bg1, bg = colors.bg1 },
        FoldColumn = { fg = colors.bg1, bg = "NONE" },
        SignColumn = { fg = colors.bg1, bg = "NONE" },
        SignColumnSB = { link = "SignColumn" },
        Substitute = { fg = colors.fg0, bg = colors.red0 },
        LineNr = { fg = colors.bg1 },
        CursorLineNr = { fg = colors.green0, bg = "NONE", style = "bold" },
        MatchParen = { fg = colors.yellow1, bg = "NONE", style = "bold" },
        ModeMsg = { fg = colors.yellow1, style = "bold", bg = "NONE" },
        MsgArea = { fg = colors.fg1, bg = "NONE" },
        -- MsgSeparator                   = {},
        MoreMsg = { fg = colors.blue1, bg = colors.bg0, style = "NONE" },
        NonText = { fg = colors.bg1 },
        Normal = { fg = colors.fg0, bg = not config.transparent and colors.bg0 or "NONE" },
        NormalNC = config.dimInactive and { fg = colors.fg1, bg = colors.bg1 } or {
            link = "Normal",
        },
        NormalSB = { link = "Normal" },
        NormalFloat = { fg = colors.fg0, bg = colors.bg2 },
        FloatBorder = { fg = colors.fg1, bg = colors.bg2 },
        Pmenu = { fg = colors.fg0, bg = colors.bg1 },
        PmenuSel = { fg = "NONE", bg = colors.bg2 },
        PmenuSbar = { link = "Pmenu" },
        PmenuThumb = { fg = colors.bg0, bg = colors.green0 },
        Question = { link = "MoreMsg" },
        QuickFixLine = { link = "CursorLine" },
        Search = { fg = colors.bg0, bg = colors.green0 },
        IncSearch = { fg = colors.fgcbg, bg = colors.yellow1, style = "NONE" },
        SpecialKey = { link = "NonText" },
        SpellBad = { style = "undercurl", guisp = colors.red1 },
        SpellCap = { style = "undercurl", guisp = colors.yellow1 },
        SpellLocal = { style = "undercurl", guisp = colors.yellow1 },
        SpellRare = { style = "undercurl", guisp = colors.yellow1 },
        StatusLine = { fg = colors.fg1, bg = colors.bg2, style = "NONE" },
        StatusLineNC = { fg = colors.bg2, bg = colors.bg2, style = "NONE" },
        TabLine = { bg = colors.bg2, fg = colors.bg1, style = "NONE" },
        TabLineFill = { bg = colors.bg0, style = "NONE" },
        TabLineSel = { fg = colors.fg1, bg = colors.bg1, style = "NONE" },
        Title = { fg = colors.blue0, style = "bold" },
        Visual = { bg = colors.bg2 },
        VisualNOS = { link = "Visual" },
        WarningMsg = { fg = colors.yellow1, bg = "NONE" },
        Whitespace = { fg = colors.bg1 },
        WildMenu = { link = "Pmenu" },

        Constant = { fg = colors.yellow1 },
        String = { fg = colors.green1 },
        Character = { link = "String" },
        Number = { fg = colors.red1 },
        Boolean = { fg = colors.yellow1, style = "bold" },
        Float = { link = "Number" },

        Identifier = { fg = colors.yellow1 },
        Function = { fg = colors.blue0, style = config.functionStyle },
        Method = { link = "Function" },
        Statement = { fg = colors.purple1, style = config.statementStyle },
        -- Conditional = {},
        -- Repeat = {},
        -- Label = {},
        Operator = { fg = colors.yellow1 },
        Keyword = { fg = colors.purple1, style = config.keywordStyle },
        Exception = { fg = colors.teal1 },

        PreProc = { fg = colors.yellow1 },
        -- Include = {},
        -- Define = {},
        -- Macro = {},
        -- PreCondit = {},

        Type = { fg = colors.teal1, style = config.typeStyle },
        Struct = { link = "Type" },
        -- StorageClass = {},
        -- Structure = {},
        -- Typedef = {},

        Special = { fg = colors.teal1 },
        -- SpecialChar = {},
        -- Tag = {},
        -- Delimiter = {},
        -- SpecialComment = {},
        -- Debug = {},

        Underlined = { fg = colors.teal1, style = "underline" },
        Bold = { style = "bold" },
        Italic = { style = "italic" },

        Ignore = { link = "NonText" },

        Error = { fg = colors.red1, bg = "NONE" },
        Todo = { fg = colors.fgcbg, bg = colors.blue1, style = "bold" },

        qfLineNr = { link = "lineNr" },
        qfFileName = { link = "Directory" },

        htmlH1 = {},
        htmlH2 = {},

        -- mkdHeading = {},
        -- mkdCode = {},
        mkdCodeDelimiter = {},
        mkdCodeStart = {},
        mkdCodeEnd = {},
        -- mkdLink = {},

        markdownHeadingDelimiter = {},
        markdownCode = {},
        markdownCodeBlock = {},
        markdownH1 = {},
        markdownH2 = {},
        markdownLinkText = {},

        debugPC = { link = "CursorLine" },
        debugBreakpoint = { fg = colors.teal1 },

        LspReferenceText = { fg = colors.fgcbg, bg = colors.yellow0 },
        LspReferenceRead = { link = "LspReferenceText" },
        LspReferenceWrite = { link = "LspReferenceText" },

        DiagnosticError = { fg = colors.red1 },
        DiagnosticWarn = { fg = colors.yellow1 },
        DiagnosticInfo = { fg = colors.blue1 },
        DiagnosticHint = { fg = colors.teal1 },

        DiagnosticSignError = { link = "DiagnosticError" },
        DiagnosticSignWarn = { link = "DiagnosticWarn" },
        DiagnosticSignInfo = { link = "DiagnosticInfo" },
        DiagnosticSignHint = { link = "DiagnosticHint" },

        DiagnosticVirtualTextError = { link = "DiagnosticError" },
        DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
        DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
        DiagnosticVirtualTextHint = { link = "DiagnosticHint" },

        DiagnosticUnderlineError = { style = "undercurl", guisp = colors.red1 },
        DiagnosticUnderlineWarn = { style = "undercurl", guisp = colors.yellow1 },
        DiagnosticUnderlineInfo = { style = "undercurl", guisp = colors.blue1 },
        DiagnosticUnderlineHint = { style = "undercurl", guisp = colors.teal1 },

        LspSignatureActiveParameter = { fg = colors.yellow1 },
        LspCodeLens = { fg = colors.bg2 },

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
        TSConstructor = { fg = colors.purple1 }, -- Function/Special/Statement/Keyword
        -- TSConditional = {},
        -- TSConstant = {},
        -- TSConstBuiltin = {},
        -- TSConstMacro = {},
        TSError = { fg = colors.red1 },
        -- TSException = { link = 'Exception' }, -- default, -> statement
        TSException = {
            fg = config.specialException and colors.teal1 or colors.purple1,
            style = config.statementStyle,
        },
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
        TSKeywordReturn = {
            fg = config.specialReturn and colors.teal1 or colors.purple1,
            style = config.keywordStyle,
        },
        TSLabel = { link = "Label" },
        TSMethod = { link = "Function" },
        -- TSNamespace = {},
        -- TSNone = {},
        -- TSNumber = {},
        TSOperator = { link = "Operator" },
        TSKeywordOperator = { fg = colors.yellow1, style = "bold" },
        TSParameter = { link = "Identifier" }, -- default
        -- TSParameterReference = {},
        TSProperty = { link = "Identifier" }, -- default
        -- TSPunctDelimiter = {},
        TSPunctDelimiter = { fg = colors.purple0 },
        TSPunctBracket = { fg = colors.purple0 },
        TSPunctSpecial = { fg = colors.purple0 },
        -- TSRepeat = {},
        -- TSString = {},
        TSStringRegex = { fg = colors.yellow1 },
        TSStringEscape = { fg = colors.yellow1, style = "bold" },
        -- TSSymbol = {},
        -- TSType = {},
        -- TSTypeBuiltin = {},
        TSVariable = { fg = "NONE" },
        TSVariableBuiltin = { fg = colors.teal1, style = config.variablebuiltinStyle },

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
        diffAdded = { fg = colors.green0 },
        diffRemoved = { fg = colors.red0 },
        diffDeleted = { fg = colors.red0 },
        diffChanged = { fg = colors.blue0 },
        diffOldFile = { fg = colors.red0 },
        diffNewFile = { fg = colors.green0 },
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
        GitSignsDeleteLn = { fg = "NONE", bg = colors.red0 },

        -- Telescope = {},
        TelescopeBorder = { fg = colors.bg2, bg = colors.bg0 },
        TelescopeResultsClass = { link = "TSType" },
        TelescopeResultsStruct = { link = "TSType" },
        TelescopeResultsVariable = { link = "TSVariable" },

        -- NvimTree = {},
        NvimTreeNormal = { link = "Normal" },
        NvimTreeNormalNC = { link = "NormalNC" },
        NvimTreeRootFolder = { fg = colors.yellow1, style = "bold" },
        NvimTreeGitDirty = { fg = colors.blue0 },
        NvimTreeGitNew = { fg = colors.green0 },
        NvimTreeGitDeleted = { fg = colors.red0 },
        NvimTreeSpecialFile = { fg = colors.teal1 },
        -- NvimTreeIndentMarker = {},
        NvimTreeImageFile = { fg = colors.teal1 },
        NvimTreeSymlink = { link = "Type" },
        NvimTreeFolderName = { link = "Directory" },
        NvimTreeExecFile = { fg = colors.green1, style = "bold" },
        NvimTreeGitStaged = { fg = colors.green0 },
        NvimTreeOpenedFile = { fg = colors.teal1, style = "italic" },

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
        DashboardShortCut = { fg = colors.teal1 },
        DashboardHeader = { fg = colors.red0 },
        DashboardCenter = { fg = colors.yellow1 },
        DashboardFooter = { fg = colors.blue0 },

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
        FloatermBorder = { fg = colors.bg2, bg = colors.bg0 },

        -- NeoVim = {},
        healthError = { fg = colors.red1 },
        healthSuccess = { fg = colors.green1 },
        healthWarning = { fg = colors.yellow1 },

        -- BufferLine
        -- BufferLineIndicatorSelected = {},
        -- BufferLineFill = {},

        -- Barbar = {},
        -- BufferCurrent = {},
        -- BufferCurrentIndex = {},
        -- BufferCurrentMod = {},
        -- BufferCurrentSign = {},
        -- BufferCurrentTarget = {},
        -- BufferVisible = {},
        -- BufferVisibleIndex = {},
        -- BufferVisibleMod = {},
        -- BufferVisibleSign = {},
        -- BufferVisibleTarget = {},
        -- BufferInactive = {},
        -- BufferInactiveIndex = {},
        -- BufferInactiveMod = {},
        -- BufferInactiveSign = {},
        -- BufferInactiveTarget = {},
        -- BufferTabpages = {},
        -- BufferTabpage = {},

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
        CmpDocumentation = { fg = colors.fg0, bg = colors.bg1 },
        CmpDocumentationBorder = { fg = colors.bg2, bg = colors.bg0 },

        CmpItemAbbr = { fg = colors.fg0, bg = "NONE" },
        CmpItemAbbrDeprecated = { fg = colors.bg2, bg = "NONE", style = "strikethrough" },

        CmpItemAbbrMatch = { fg = colors.green0, bg = "NONE" },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },

        CmpItemKindDefault = { fg = colors.bg2, bg = "NONE" },
        CmpItemMenu = { fg = colors.bg2, bg = "NONE" },

        CmpItemKindVariable = { fg = colors.fg1, bg = "NONE" },

        CmpItemKindFunction = { link = "Function" },
        CmpItemKindMethod = { link = "Function" },

        CmpItemKindConstructor = { link = "TSConstructor" },

        CmpItemKindClass = { link = "Type" },
        CmpItemKindInterface = { link = "Type" },
        CmpItemKindStruct = { link = "Type" },

        CmpItemKindProperty = { link = "TSProperty" },
        CmpItemKindField = { link = "TSField" },
        CmpItemKindEnum = { link = "Identifier" },

        CmpItemKindSnippet = { fg = colors.teal1, bg = "NONE" },

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
        IndentBlanklineChar = { fg = colors.bg1 },
        IndentBlanklineSpaceChar = { fg = colors.bg1 },
        IndentBlanklineSpaceCharBlankline = { fg = colors.bg1 },
        IndentBlanklineContextChar = { fg = colors.bg1 },
        IndentBlanklineContextStart = { guisp = colors.bg1, style = "underline" },
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
