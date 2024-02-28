local M = {}

local function set_highlights(groups)
    for group, colors in pairs(groups) do
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

function M.setup(colors, config)
    local groups = vim.tbl_extend(
        "error",
        require("leaf.hlgroups.editor").setup(colors, config),
        require("leaf.hlgroups.syntax").setup(colors, config),
        require("leaf.hlgroups.integrations").setup(colors, config)
    )
    for hl, specs in pairs(config.overrides) do
        if groups[hl] and not vim.tbl_isempty(specs) then
            groups[hl].link = nil
        end
        groups[hl] = vim.tbl_extend("force", groups[hl] or {}, specs)
    end
    set_highlights(groups)
end

return M
