<p align="center">
    <img src="https://raw.githubusercontent.com/qewer33/leaf-kde/main/logo.png" width="33%"></img>
</p>

# leaf.nvim

Neovim colorscheme based on the awesome [Leaf KDE Plasma Theme](https://github.com/qewer33/leaf-kde) by @qewer33.

![leav.nvim light dark preview](https://user-images.githubusercontent.com/16589944/166641976-daa81242-d2b4-4de0-bdce-f0e69253cd71.png)

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
<img src="https://user-images.githubusercontent.com/16589944/166642237-0a5bfa8c-e0e9-43b7-bd22-4117a2e25e07.png" width="30%"></img> <img src="https://user-images.githubusercontent.com/16589944/166642333-7445b8cc-9be9-4266-bc58-83cae6b3b5a5.png" width="30%"></img> <img src="https://user-images.githubusercontent.com/16589944/166642371-a2306844-2c4a-4089-9c11-c1a0413d7157.png" width="30%"></img>

### dark
<img src="https://user-images.githubusercontent.com/16589944/166642487-7a8f37d7-3db5-4296-90ed-0413dbcd596b.png" width="30%"></img> <img src="https://user-images.githubusercontent.com/16589944/166642507-2f50a997-9b35-481b-95f1-88c3dd5a3876.png" width="30%"></img> <img src="https://user-images.githubusercontent.com/16589944/166642518-074d2dbf-5ea4-4c99-a0d8-847a36780952.png" width="30%"></img>

## Extras

- [Kitty](extras/kitty)
- [Fish](extras/fish)

## Acknowledgements

- Almost all colors are taken from the [Leaf KDE Plasma Theme](https://github.com/qewer33/leaf-kde) by @qewer33. I just ported the konsole colors to Neovim and kitty.
- I used [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) by @rebelot as a template, since this is the first theme I made for Neovim.
- The code in the screenshots is from [JuliaMath/Primes.jl](https://github.com/JuliaMath/Primes.jl).
