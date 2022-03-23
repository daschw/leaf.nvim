local M = {}

local function set_highlights(hlgroups)
    for group, colors in pairs(hlgroups) do
        if not vim.tbl_isempty(colors) then
            if colors.link then
                vim.cmd("highlight! link " .. group .. " " .. colors.link)
            else
                local fg = colors.fg and "guifg=" .. colors.fg .. " " or ""
                local bg = colors.bg and "guibg=" .. colors.bg .. " " or ""
                local style = colors.style and "gui=" .. colors.style .. " " or ""
                local guisp = colors.guisp and "guisp=" .. colors.guisp .. " " or ""
                vim.cmd("highlight " .. group .. " " .. fg .. bg .. style .. guisp)
            end
        end
    end
end

--- default config
M.config = {
    undercurl = true,
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    specialReturn = true,
    specialException = true,
    transparent = false,
    dimInactive = false,
    globalStatus = false,
    colors = {},
    overrides = {},
    theme = "light", -- or "dark"
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

    local colors = require("leaf.colors").setup()
    local hlgroups = require("leaf.hlgroups").setup(colors)

    set_highlights(hlgroups)
end

return M
