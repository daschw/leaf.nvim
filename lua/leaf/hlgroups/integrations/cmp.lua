local M = {}

--- generate nvim-cmp highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, _)
    return {
        CmpDocumentation = { fg = colors.fg0, bg = colors.bg1 },
        CmpDocumentationBorder = { link = "FloatBorder" },
        CmpItemAbbr = { fg = colors.fg1, bg = "NONE" },
        CmpItemAbbrDeprecated = { fg = colors.bg2, bg = "NONE", style = "strikethrough" },
        CmpItemAbbrMatch = { fg = colors.green1, bg = "NONE" },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
        CmpItemKindDefault = { fg = colors.bg2, bg = "NONE" },
        CmpItemMenu = { fg = colors.bg2, bg = "NONE" },
        CmpItemKindVariable = { fg = colors.fg0, bg = "NONE" },
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
    }
end

return M
