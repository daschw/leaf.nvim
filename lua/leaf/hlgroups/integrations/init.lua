local M = {}

function M.setup(colors, config)
    return vim.tbl_extend(
        "error",
        require("leaf.hlgroups.integrations.barbar").setup(colors, config),
        require("leaf.hlgroups.integrations.cmp").setup(colors, config),
        require("leaf.hlgroups.integrations.dashboard").setup(colors, config),
        require("leaf.hlgroups.integrations.gitsigns").setup(colors, config),
        require("leaf.hlgroups.integrations.indentblankline").setup(colors, config),
        require("leaf.hlgroups.integrations.lsp").setup(colors, config),
        require("leaf.hlgroups.integrations.lspsaga").setup(colors, config),
        require("leaf.hlgroups.integrations.neogit").setup(colors, config),
        require("leaf.hlgroups.integrations.neotree").setup(colors, config),
        require("leaf.hlgroups.integrations.notify").setup(colors, config),
        require("leaf.hlgroups.integrations.nvimtree").setup(colors, config),
        require("leaf.hlgroups.integrations.smoothcursor").setup(colors, config),
        require("leaf.hlgroups.integrations.telescope").setup(colors, config),
        require("leaf.hlgroups.integrations.treesitter").setup(colors, config)
    )
end

return M
