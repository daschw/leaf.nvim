<p align="center">
    <img src="https://raw.githubusercontent.com/qewer33/leaf-kde/main/assets/logo.png" width="33%"></img>
</p>

# leaf.nvim

Neovim colorscheme based on the awesome [Leaf KDE Plasma Theme](https://github.com/qewer33/leaf-kde) by @qewer33.

![leav.nvim preview](https://user-images.githubusercontent.com/16589944/218273158-950cb2b4-a616-4678-b5e4-728899ead306.png)

## Theme gallery

There are *low*, *medium* and *high* contrast versions for both the *dark* and the *light* theme.
The *low* contrast themes exactly match the colors from the corresponding KDE Plasma themes.

<details>
<summary>julia</summary>

| contrast | dark | light |
|:---:|:---:|:---:|
| low | ![julia-dark-low](https://user-images.githubusercontent.com/16589944/218272360-bd9377e2-4ff4-4dfc-bc2f-a84dd979e558.png) | ![julia-light-low](https://user-images.githubusercontent.com/16589944/218272382-5b7fc276-9d02-4c78-b341-0b47ffbd33e7.png) |
| medium | ![julia-dark-medium](https://user-images.githubusercontent.com/16589944/218272377-93de8215-64e7-4111-a157-8b9f91f838f4.png) | ![julia-light-medium](https://user-images.githubusercontent.com/16589944/218272384-3f9536b9-9bec-44c8-a6f1-38e1cef06759.png) |
| high | ![julia-dark-high](https://user-images.githubusercontent.com/16589944/218272379-011011be-0a51-4dd9-930c-c28650022ec8.png) | ![julia-light-high](https://user-images.githubusercontent.com/16589944/218272393-9fc96302-8c08-49fc-b401-b1b99cda45e3.png) |

</details>

<details>
<summary>rust</summary>

| contrast | dark | light | 
|:---:|:---:|:---:|
| low | ![rust-dark-low](https://user-images.githubusercontent.com/16589944/218272560-79f7fa3f-a33f-4aa0-a26a-f1dae5c61919.png) | ![rust-light-low](https://user-images.githubusercontent.com/16589944/218272585-2b0a778b-93ca-4b5e-ac8d-cfa4b8743ccc.png) |
| medium | ![rust-dark-medium](https://user-images.githubusercontent.com/16589944/218272568-014dc638-923b-4c0d-af99-c155af388931.png) | ![rust-light-medium](https://user-images.githubusercontent.com/16589944/218272588-fb33f06b-a941-4109-9b2f-c92f3c7553fe.png) |
| high | ![rust-dark-high](https://user-images.githubusercontent.com/16589944/218272577-2c04e3f5-2537-4647-8cf9-5cb5c9b9a48e.png) | ![rust-light-high](https://user-images.githubusercontent.com/16589944/218272594-5b11710d-bd2b-4dcd-b753-35ca37f9cbaf.png) |

</details>

<details>
<summary>lua</summary>

| contrast | dark | light | 
|:---:|:---:|:---:|
| low | ![lua-dark-low](https://user-images.githubusercontent.com/16589944/218272400-79d6ff7e-5d47-42f7-88fd-59ca7bc4db9c.png) | ![lua-light-low](https://user-images.githubusercontent.com/16589944/218272422-3d07ad19-907c-4234-8f59-6590d20ef472.png) |
| medium | ![lua-dark-medium](https://user-images.githubusercontent.com/16589944/218272405-e1953286-a61c-4770-957a-18152b319693.png) | ![lua-light-medium](https://user-images.githubusercontent.com/16589944/218272427-d87f9246-8c15-4bd2-b387-9931c3e68bb2.png) |
| high | ![lua-dark-high](https://user-images.githubusercontent.com/16589944/218272418-6a5e5d92-73a1-42dd-872d-d20e58317ae9.png) | ![lua-light-high](https://user-images.githubusercontent.com/16589944/218272432-245d4e8c-59e4-47c5-80d4-1cd3836510ed.png) |

</details>

<details>
<summary>python</summary>

| contrast | dark | light | 
|:---:|:---:|:---:|
| low | ![python-dark-low](https://user-images.githubusercontent.com/16589944/218272446-673a7938-0e13-429b-816d-7338e542c1dc.png) | ![python-light-low](https://user-images.githubusercontent.com/16589944/218272524-6d9f08b3-0852-4334-a57c-ade17786f2c1.png) |
| medium | ![python-dark-medium](https://user-images.githubusercontent.com/16589944/218272466-372298fd-f683-4eef-a5a5-1872a25acf33.png) | ![python-light-medium](https://user-images.githubusercontent.com/16589944/218272548-5b107280-142c-4718-868b-f0ce748820ed.png) |
| high | ![python-dark-high](https://user-images.githubusercontent.com/16589944/218272486-1f12355a-64e4-4fb3-97d4-f0ee53ebc499.png) | ![python-light-high](https://user-images.githubusercontent.com/16589944/218272553-e08a56d2-936c-43ed-a556-ad89d1f93e72.png) |

</details>

<details>
<summary>bash</summary>

| contrast | dark | light | 
|:---:|:---:|:---:|
| low | ![bash-dark-low](https://user-images.githubusercontent.com/16589944/218272319-c9fee09c-e620-454f-92d0-55cda94edc5f.png) | ![bash-light-low](https://user-images.githubusercontent.com/16589944/218272326-e7745760-9cf6-4417-8960-fc5e820ad16b.png) |
| medium | ![bash-dark-medium](https://user-images.githubusercontent.com/16589944/218272321-89152712-8441-4e2a-a44e-5ed1ea271308.png) | ![bash-light-medium](https://user-images.githubusercontent.com/16589944/218272334-0803c227-d0ea-4b1d-847a-b80e1c4509af.png) |
| high | ![bash-dark-high](https://user-images.githubusercontent.com/16589944/218272324-19685496-465c-43cf-b8cd-488f3fbbc87a.png) | ![bash-light-high](https://user-images.githubusercontent.com/16589944/218272341-ef7d9fd5-ccc3-4374-99fc-fcde408f74ff.png) |

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

## Extras

- [Fish](extras/fish)
- [Kitty](extras/kitty)
- [WezTerm](extras/wezterm)
- [Xresources](extras/Xresources)
- [Julia](extras/julia)

## Acknowledgements

- Almost all colors are taken from the [Leaf KDE Plasma Theme](https://github.com/qewer33/leaf-kde) by @qewer33. I just ported the konsole colors to Neovim and kitty.
- I used [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) by @rebelot as a template, since this is the first theme I made for Neovim.
