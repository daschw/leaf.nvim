local M = {}

--- generate syntax highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, config)
    return {
        Comment = { fg = colors.bg3, style = config.commentStyle },
        SpecialComment = { fg = colors.yellow1, style = config.commentStyle },
        Constant = { fg = colors.orange0 },
        String = { fg = colors.yellow0 },
        Character = { link = "String" },
        Number = { link = "Constant" },
        Float = { link = "Constant" },
        Boolean = { fg = colors.orange0, style = "bold" },
        Identifier = { fg = colors.green0 },
        Function = { fg = colors.blue0, style = config.functionStyle },
        Statement = { fg = colors.purple0, style = config.statementStyle },
        Conditional = { link = "Statement" },
        Repeat = { link = "Statement" },
        Label = { link = "Statement" },
        Operator = { fg = colors.brown0 },
        Exception = { link = "Statement" },
        PreProc = { fg = colors.red0 },
        Include = { link = "PreProc" },
        Define = { link = "PreProc" },
        Macro = { link = "PreProc" },
        PreCondit = { link = "PreProc" },
        StorageClass = { link = "Type" },
        Structure = { link = "Type" },
        Special = { fg = colors.aqua0 },
        Type = { fg = colors.teal0, style = config.typeStyle },
        Typedef = { link = "Type" },
        SpecialChar = { link = "Special" },
        Tag = { link = "Special" },
        Keyword = { fg = colors.purple0, style = config.keywordStyle },
        Ignore = { link = "NonText" },
        Delimiter = { link = "Special" },
        Debug = { link = "Special" },
        Underlined = { style = config.underlineStyle },
        Bold = { style = "bold" },
        Italic = { style = "italic" },
        Error = { fg = colors.red0, bg = "NONE" },
        Todo = { fg = colors.aqua0, bg = "NONE" },
        qfLineNr = { link = "LineNr" },
        qfFileName = { link = "Directory" },
        htmlH1 = { fg = colors.red0, style = "bold" },
        htmlH2 = { fg = colors.orange0, style = "bold" },
        mkdCodeDelimiter = { fg = colors.fg1, bg = colors.bg0 },
        mkdCodeStart = { fg = colors.purple0, style = "bold" },
        mkdCodeEnd = { fg = colors.purple0, style = "bold" },
        debugPC = { link = "CursorLine" },
        debugBreakpoint = { fg = colors.aqua1 },
        illuminatedWord = { bg = colors.bg1 },
        illuminatedCurWord = { bg = colors.bg1 },
        diffAdded = { fg = colors.green0 },
        diffRemoved = { fg = colors.orange0 },
        diffDeleted = { fg = colors.red0 },
        diffChanged = { fg = colors.blue0 },
        diffOldFile = { fg = colors.brown0 },
        diffNewFile = { fg = colors.teal0 },
        diffFile = { fg = colors.blue0 },
        diffLine = { fg = colors.bg2 },
        diffIndexLine = { fg = colors.teal0 },
        DiffAdd = { bg = colors.green1, fg = colors.fg1 },
        DiffChange = { bg = colors.bg1 },
        DiffDelete = { bg = colors.red1, fg = colors.fg1 },
        DiffText = { bg = colors.aqua1, fg = colors.fg1 },
        healthError = { link = "Error" },
        healthSuccess = { link = "Success" },
        healthWarning = { link = "Warning" },
        GlyphPalette1 = { fg = colors.red0 },
        GlyphPalette2 = { fg = colors.green0 },
        GlyphPalette3 = { fg = colors.yellow0 },
        GlyphPalette4 = { fg = colors.blue0 },
        GlyphPalette5 = { fg = colors.purple0 },
        GlyphPalette6 = { fg = colors.teal0 },
        GlyphPalette7 = { fg = colors.orange0 },
        GlyphPalette8 = { fg = colors.aqua0 },
        GlyphPalette9 = { fg = colors.brown0 },
        rainbow1 = { fg = colors.red0, style = "bold" },
        rainbow2 = { fg = colors.orange0, style = "bold" },
        rainbow3 = { fg = colors.yellow0, style = "bold" },
        rainbow4 = { fg = colors.teal0, style = "bold" },
        rainbow5 = { fg = colors.blue0, style = "bold" },
        rainbow6 = { fg = colors.purple0, style = "bold" },
        markdownCode = { fg = colors.teal0 },
        markdownCodeBlock = { fg = colors.green0 },
        markdownH1 = { link = "rainbow1" },
        markdownH2 = { link = "rainbow2" },
        markdownH3 = { link = "rainbow3" },
        markdownH4 = { link = "rainbow4" },
        markdownH5 = { link = "rainbow5" },
        markdownH6 = { link = "rainbow6" },
        markdownH1Delimiter = { link = "markdownH1" },
        markdownH2Delimiter = { link = "markdownH2" },
        markdownH3Delimiter = { link = "markdownH3" },
        markdownH4Delimiter = { link = "markdownH4" },
        markdownH5Delimiter = { link = "markdownH5" },
        markdownH6Delimiter = { link = "markdownH6" },
        markdownLink = { link = "Whitespace" },
        markdownLinkDelimiter = { link = "Whitespace" },
        markdownLinkText = { fg = colors.blue0, style = config.underlineStyle },
        markdownLinkTextDelimiter = { link = "Whitespace" },
        markdownUrl = { fg = colors.teal0, style = config.underlineStyle },
        markdownYamlHead = { fg = colors.yellow0 },
        yamlPlainScalar = { link = "Statement" },
    }
end

return M