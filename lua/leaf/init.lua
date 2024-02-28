local M = {}

--- default config
M.config = {
    underlineStyle = "underline",
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    transparent = false,
    colors = {},
    overrides = {},
    theme = "auto", -- "light", "dark", "lighter", "darker", "lightest", "darkest"
    contrast = "low", -- "medium", "high"
}

--- update global configuration with user settings
--@param config user configuration
--@return nil
function M.setup(config)
    M.config = vim.tbl_extend("force", M.config, config or {})
end

--- load the colorscheme
function M.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end
    vim.g.colors_name = "leaf"
    vim.o.termguicolors = true
    local colors = require("leaf.colors").setup(M.config)
    require("leaf.hlgroups").setup(colors, M.config)
    return
end

return M
