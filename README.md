<p align="center">
    <img src="https://raw.githubusercontent.com/qewer33/leaf-kde/main/logo.png" width="33%"></img>
</p>

# leaf.nvim

Neovim colorscheme based on the awesome [Leaf KDE Plasma Theme](https://github.com/qewer33/leaf-kde) by @qewer33.

![leav.nvim preview](https://user-images.githubusercontent.com/16589944/198240264-095019c6-cd4a-4e0d-8ecc-68c490efead2.png)

## Installation

Download with your favorite package manager.

```lua
use "daschw/leaf.nvim"
```

## Requirements

- neovim >= 0.6
- truecolor terminal support
- undercurl terminal support (optional)

## Usage

As simple as writing (pasting)

```vim
colorscheme leaf
```

```lua
vim.cmd("colorscheme leaf")
```

## Plugin Support

- [Nvim cmp](https://github.com/hrsh7th/nvim-cmp)
- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [FloaTerm](https://github.com/voldikss/vim-floaterm)
- [Barbar](https://github.com/romgrk/barbar.nvim)
- [Neogit](https://github.com/TimUntersberger/neogit)
- [SmoothCursor](https://github.com/gen740/SmoothCursor.nvim)

And many others should _"just work"_!

## Configuration

There is no need to call setup if you are ok with the defaults (low contrast).

```lua
require("leaf").setup({
    underlineStyle = "undercurl",
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    transparent = false,
    colors = {},
    overrides = {},
    theme = "auto", -- default, based on vim.o.background, alternatives: "light", "dark"
    contrast = "low", -- default, alternatives: "medium", "high"
})

-- setup must be called before loading
vim.cmd("colorscheme leaf")
```

### Customize colors

You can change individual colors of leaf.nvim themes by passing a table of `colors` to `setup`.
Supported keywords can be found [here](lua/leaf/themes.lua) and the theme's colors are defined [here](lua/leaf/colors.lua).
For example, for comments matching the theme's dark green color you can call setup with:

```lua
require("leaf").setup({
    colors = { fg_comment = "#59795f" },
})
```

You can achieve the same result by accessing the colors defined for leaf.nvim:

```lua
local leaf_colors = require("leaf.colors").setup()

require("leaf").setup({
    colors = { fg_comment = leaf_colors.green_dark },
})
```

### Customize highlight groups

With the `overrides` keyword you can customize hl-groups.
Supported keywords are `fg`, `bg`, `style`, `guisp` and `link`.

```lua
require("leaf").setup({
    overrides = {
        Normal = { fg = "black", bg = "#FFFFFF" },
        Comment = { style = "italic" },
        TelescopeBorder = { link = "Normal" },
    },
})
```

## Theme gallery

The default *light* and *dark* themes exactly match the colors from the corresponding KDE Plasma themes.
For those of you who prefer more contrast there are also lighter and darker versions available.

### light
<img src="https://user-images.githubusercontent.com/16589944/198240367-95cc12c3-8717-4ae4-9b2f-b35d7cbb98de.png" width="30%"></img> <img src="https://user-images.githubusercontent.com/16589944/198240405-4d6a5934-7da7-4e94-b774-f5e0abf51a0e.png" width="30%"></img> <img src="https://user-images.githubusercontent.com/16589944/198240427-9ba529ac-9376-46fd-8935-71ce3a5a3e47.png" width="30%"></img>

### dark
<img src="https://user-images.githubusercontent.com/16589944/198240293-982e50ee-f221-40d2-85e1-c4227674130a.png" width="30%"></img> <img src="https://user-images.githubusercontent.com/16589944/198240317-dd63ca17-1246-4450-8b94-13de96bdaaab.png" width="30%"></img> <img src="https://user-images.githubusercontent.com/16589944/198240336-40d27d6a-2754-41d3-aa7e-85f20e092a9f.png" width="30%"></img>

## Extras

- [Fish](extras/fish)
- [Kitty](extras/kitty)
- [WezTerm](extras/wezterm)
- [Xresources](extras/Xresources)
- [Julia](extras/julia)

## Acknowledgements

- Almost all colors are taken from the [Leaf KDE Plasma Theme](https://github.com/qewer33/leaf-kde) by @qewer33. I just ported the konsole colors to Neovim and kitty.
- I used [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) by @rebelot as a template, since this is the first theme I made for Neovim.
