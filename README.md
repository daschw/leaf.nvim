<p align="center">
    <img src="https://raw.githubusercontent.com/qewer33/leaf-kde/main/assets/logo.png" width="33%"></img>
</p>

# leaf.nvim

Neovim colorscheme based on the awesome [Leaf KDE Plasma Theme](https://github.com/qewer33/leaf-kde) by @qewer33.

![leav.nvim preview](https://github.com/daschw/leaf.nvim/assets/16589944/948b38df-86c2-4bea-b540-9bdd719479fe)

## Theme gallery

There are *low*, *medium* and *high* contrast versions for both the *dark* and the *light* theme.
The *low* contrast themes exactly match the colors from the corresponding KDE Plasma themes.

<details>
<summary>dark - high contrast</summary>

![leaf-darkest](https://github.com/daschw/leaf.nvim/assets/16589944/05679477-4f21-4f28-95a1-83c5ed5e2a0d)

</details>

<details>
<summary>dark - medium contrast</summary>

![leaf-darker](https://github.com/daschw/leaf.nvim/assets/16589944/5e8a0041-6801-4994-a676-bb05508f22d6)

</details>

<details open>
<summary>dark - low contrast</summary>

![leaf-dark](https://github.com/daschw/leaf.nvim/assets/16589944/de311e65-9c28-4f72-bc5f-6e41be2b0198)

</details>

<details open>
<summary>light - low contrast</summary>

![leaf-light](https://github.com/daschw/leaf.nvim/assets/16589944/2fcb4ab1-c9bc-4312-bd96-53073299faa5)

</details>

<details>
<summary>light - medium contrast</summary>

![leaf-lighter](https://github.com/daschw/leaf.nvim/assets/16589944/22632854-5818-49c2-918e-2651f64dce2b)

</details>

<details>
<summary>light - high contrast</summary>

![leaf-lightest](https://github.com/daschw/leaf.nvim/assets/16589944/ac14223a-bada-4773-ba1a-6ba3320c9afe)

</details>

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
    colors = { bg3 = "#59795f" },
})
```

You can achieve the same result by accessing the colors defined for leaf.nvim:

```lua
local leaf_colors = require("leaf.colors").setup()

require("leaf").setup({
    colors = { bg3 = leaf_colors.leaf_green_3 },
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

## Acknowledgements

- Almost all colors are taken from the [Leaf KDE Plasma Theme](https://github.com/qewer33/leaf-kde) by @qewer33. I just ported the konsole colors to Neovim and kitty.
- I used [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) by @rebelot as a template, since this is the first theme I made for Neovim.
