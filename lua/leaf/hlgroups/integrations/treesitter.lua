local M = {}

--- generate treesitter highlights table
-- @param colors color (theme) color table created by require("leaf.colors").setup()
-- @param config config options (optional)
function M.setup(colors, config)
    return {
        -- identifiers
        ["@variable"] = { link = "Identifier" },
        ["@variable.builtin"] = { fg = colors.purple0 },
        ["@variable.parameter"] = { link = "Identifier" },
        ["@variable.member"] = { link = "Identifier" },
        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "Keyword" },
        ["@constant.macro"] = { link = "Macro" },
        -- literals
        ["@string.regexp"] = { fg = colors.orange0 },
        ["@string.escape"] = { fg = colors.red1 },
        ["@string.special.url"] = { fg = colors.teal0, style = config.underlineStyle },
        ["@character"] = { link = "Character" },
        ["@character.special"] = { link = "Special" },
        ["@boolean"] = { link = "Boolean" },
        ["@number"] = { link = "Number" },
        ["@number.float"] = { link = "Float" },
        -- types
        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { link = "Type" },
        ["@type.definition"] = { link = "Type" },
        ["@type.qualifier"] = { link = "Keyword" },
        ["@attribute"] = { link = "Keyword" },
        ["@module"] = { link = "Type" },
        ["@property"] = { link = "Identifier" },
        -- functions
        ["@function"] = { link = "Function" },
        ["@function.builtin"] = {},
        ["@function.call"] = { link = "Function" },
        ["@function.macro"] = { link = "Macro" },
        ["@function.method"] = { link = "Function" },
        ["@function.method.call"] = { link = "Function" },
        ["@constructor"] = { link = "Special" },
        ["@operatur"] = { link = "Operator" },
        -- keywords
        ["@keyword"] = { link = "Keyword" },
        ["@keyword.function"] = { link = "Keyword" },
        ["@keyword.operator"] = { link = "Operator" },
        ["@keyword.import"] = { link = "Include" },
        ["@keyword.storage"] = { link = "StorageClass" },
        ["@keyword.repeat"] = { link = "Repeat" },
        ["@keyword.return"] = { link = "Keyword" },
        ["@keyword.exception"] = { link = "Exception" },
        ["@keyword.conditional"] = { link = "Conditional" },
        ["@keyword.directive"] = { link = "PreProc" },
        ["@keyword.directive.define"] = { link = "Define" },
        ["@keyword.export"] = { link = "Keyword" },
        -- punctuation
        ["@punctuation.delimiter"] = { link = "Delimiter" },
        ["@punctuation.bracket"] = { link = "Delimiter" },
        ["@punctuation.special"] = { link = "Special" },
        -- comment
        ["@comment"] = { link = "Comment" },
        ["@comment.documentation"] = { link = "SpecialComment" },
        ["@string.documentation"] = { link = "SpecialComment" },
        ["@comment.error"] = { fg = colors.bg0, bg = colors.red0 },
        ["@comment.warning"] = { fg = colors.bg0, bg = colors.yellow0 },
        ["@comment.hint"] = { fg = colors.bg0, bg = colors.blue0 },
        ["@comment.todo"] = { fg = colors.bg0, bg = colors.teal0 },
        -- markup
        ["@markup.strong"] = { fg = colors.teal0, style = "bold" },
        ["@markup.italic"] = { fg = colors.aqua0, style = "italic" },
        ["@markup.strikethrough"] = { fg = colors.fg1, style = "strikethrough" },
        ["@markup.underline"] = { link = "Underlined" },
        ["@markup.heading"] = { fg = colors.green0, style = "bold" },
        ["@markup.math"] = { fg = colors.green0 },
        ["@markup.environment"] = { fg = colors.orange0 },
        ["@markup.environment.name"] = { fg = colors.purple0 },
        ["@markup.link"] = { link = "Tag" },
        ["@markup.link.url"] = { fg = colors.aqua1, style = config.underlineStyle },
        ["@markup.url"] = { fg = colors.aqua1, style = config.underlineStyle },
        ["@markup.raw"] = { link = "markdownCode" },
        ["@markup.list"] = { link = "Special" },
        ["@markup.list.checked"] = { fg = colors.green0 },
        ["@markup.list.unchecked"] = { fg = colors.bg3 },
        -- diff
        ["@diff.plus"] = { link = "diffAdded" },
        ["@diff.minus"] = { link = "diffRemoved" },
        ["@diff.delta"] = { link = "diffChanged" },
        -- markdown
        ["@markup.heading.1.markdown"] = { link = "markdownH1" },
        ["@markup.heading.2.markdown"] = { link = "markdownH2" },
        ["@markup.heading.3.markdown"] = { link = "markdownH3" },
        ["@markup.heading.4.markdown"] = { link = "markdownH4" },
        ["@markup.heading.5.markdown"] = { link = "markdownH5" },
        ["@markup.heading.6.markdown"] = { link = "markdownH6" },
        ["@markup.heading.1.marker.markdown"] = { link = "markdownH1" },
        ["@markup.heading.2.marker.markdown"] = { link = "markdownH2" },
        ["@markup.heading.3.marker.markdown"] = { link = "markdownH3" },
        ["@markup.heading.4.marker.markdown"] = { link = "markdownH4" },
        ["@markup.heading.5.marker.markdown"] = { link = "markdownH5" },
        ["@markup.heading.6.marker.markdown"] = { link = "markdownH6" },
        -- misc text
        ["@annotation"] = { link = "Tag" },
        ["@error"] = { link = "Error" },
        ["@none"] = { link = "None" },
        ["@text.note"] = { link = "Note" },
        ["@text.warning"] = { link = "Warning" },
        ["@text.danger"] = { link = "Error" },
        ["@todo"] = { link = "Todo" },
    }
end

return M
