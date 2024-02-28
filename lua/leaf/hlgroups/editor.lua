local M = {}

--- generate highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, config)
    return {
        ColorColumn = { fg = colors.bg1, bg = colors.bg0 },
        Conceal = { fg = colors.bg1, bg = "NONE", style = "bold" },
        Cursor = { fg = colors.bg0, bg = colors.fg1 },
        lCursor = { link = "Cursor" },
        CursorIM = { link = "Cursor" },
        CursorColumn = { link = "CursorLine" },
        CursorLine = { bg = colors.bg1 },
        Directory = { fg = colors.green1 },
        EndOfBuffer = { fg = colors.bg0 },
        ErrorMsg = { link = "Error" },
        VertSplit = { link = "Separator" },
        Folded = { bg = colors.bg1 },
        FoldColumn = { bg = colors.bg1 },
        SignColumn = { fg = colors.bg1, bg = "NONE" },
        SignColumnSB = { link = "SignColumn" },
        Substitute = { fg = colors.bg0, bg = colors.green1 },
        LineNr = { fg = colors.bg3 },
        CursorLineNr = { fg = colors.green1, bg = "NONE", style = "bold" },
        MatchParen = { fg = colors.orange0, bg = "NONE", style = "bold" },
        ModeMsg = { fg = colors.brown0, style = "bold", bg = "NONE" },
        MsgSeparator = { link = "Separator" },
        MoreMsg = { fg = colors.green1, bg = colors.bg0, style = "NONE" },
        NonText = { fg = colors.bg1 },
        Normal = { fg = colors.fg1, bg = not config.transparent and colors.bg0 or "NONE" },
        NormalNC = { link = "Normal" },
        NormalSB = { link = "Normal" },
        NormalFloat = { fg = colors.fg1, bg = colors.bg0 },
        FloatBorder = { fg = colors.bg2, bg = colors.bg0 },
        FloatTitle = { fg = colors.bg3, bg = colors.bg0 },
        Pmenu = { fg = colors.fg1, bg = colors.bg1 },
        PmenuSel = { fg = "NONE", bg = colors.bg2 },
        PmenuSbar = { link = "Pmenu" },
        PmenuThumb = { fg = colors.bg0, bg = colors.green1 },
        Question = { link = "MoreMsg" },
        QuickFixLine = { link = "CursorLine" },
        Search = { fg = colors.bg0, bg = colors.blue0 },
        IncSearch = { fg = colors.bg0, bg = colors.blue0, style = "NONE" },
        CurSearch = { fg = colors.bg0, bg = colors.purple0 },
        SpecialKey = { link = "NonText" },
        SpellBad = { style = config.underlineStyle, guisp = colors.red1 },
        SpellCap = { style = config.underlineStyle, guisp = colors.teal1 },
        SpellLocal = { style = config.underlineStyle, guisp = colors.orange1 },
        SpellRare = { style = config.underlineStyle, guisp = colors.brown1 },
        StatusLine = { fg = colors.fg0, bg = colors.bg2, style = "NONE" },
        StatusLineNC = { fg = colors.bg2, bg = colors.bg1, style = "NONE" },
        TabLine = { bg = colors.bg1, fg = colors.fg0, style = "NONE" },
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
        WinSeparator = { link = "Separator" },
        --
        TermCursor = { link = "Cursor" },
        TermCursorNC = { fg = colors.bg1 },
        LineNrAbove = { link = "LineNr" },
        LineNrBelow = { link = "LineNr" },
        CursorLineSign = { link = "SignColumn" },
        CursorLineFold = { link = "FoldColumn" },
        MsgArea = { fg = colors.fg0, bg = "NONE" },
        Selection = { fg = colors.green1, style = "bold" },
        Separator = { fg = colors.bg1, bg = colors.bg0, style = "NONE" },
        Strike = { style = "strikethrough" },
        Hint = { fg = colors.teal0, bg = "NONE" },
        Info = { fg = colors.blue0, bg = "NONE" },
        Note = { fg = colors.purple0, bg = "NONE" },
        Success = { fg = colors.green0, bg = "NONE" },
        Warn = { fg = colors.yellow0, bg = "NONE" },
        Warning = { link = "Warn" },
    }
end

return M
