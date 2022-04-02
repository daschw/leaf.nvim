<img src="https://raw.githubusercontent.com/qewer33/leaf-kde/main/logo.png" width="100%"></img>

# leaf.nvim

Neovim colorscheme based on the awesome [Leaf KDE Plasma Theme](https://github.com/qewer33/leaf-kde) by @qewer33.

![leav.nvim light dark preview](assets/screenshot.png)

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

And many others should _"just work"_!

## Configuration

There is no need to call setup if you are ok with the defaults (light theme).

```lua
require("leaf").setup({
    undercurl = true,
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    transparent = false,
    colors = {},
    overrides = {},
    theme = "light", -- default, alternatives: "dark", "lighter", "darker", "lightest", "darkest"
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
        Normal = {fg = "black", bg = "#FFFFFF" },
        Comment = { style = "italic" },
        TelescopeBorder = { link = "Normal" },
    },
})
```

## Theme gallery

The default *light* and *dark* themes exactly match the colors from the corresponding KDE Plasma themes.
For those of you who prefer more contrast there are also lighter and darker versions available.

### light - lighter - lightest
<img src="assets/screenshot-light.png" width="30%"></img> <img src="assets/screenshot-lighter.png" width="30%"></img> <img src="assets/screenshot-lightest.png" width="30%"></img>

### dark - darker - darkest
<img src="assets/screenshot-dark.png" width="30%"></img> <img src="assets/screenshot-darker.png" width="30%"></img> <img src="assets/screenshot-darkest.png" width="30%"></img>

## Extras

- [Kitty](extras/kitty)
- [Fish](extras/fish)

## Acknowledgements

- Almost all colors are taken from the [Leaf KDE Plasma Theme](https://github.com/qewer33/leaf-kde) by @qewer33. I just ported the konsole colors to Neovim and kitty.
- I used [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) by @rebelot as a template, since this is the first theme I made for Neovim.
- The code in the screenshots is from [JuliaMath/Primes.jl](https://github.com/JuliaMath/Primes.jl).
