# WezTerm leaf theme

This folder contains six [WezTerm](https://wezfurlong.org/wezterm/) theme configuration files using the leaf colors.

## Usage

To use for example the leaf dark theme create a symbolic link in your WezTerm config folder.

```fish
ln -s $LEAF_REPO_CLONE/extras/wezterm/leaf-dark.lua ~/.config/wezterm/theme.lua
```

Replace `$LEAF_REPO_CLONE` with the path to your leaf.nvim clone.
Then use the colors in your WezTerm config.

```lua
-- ~/.config/wezterm/wezterm.lua

return {
    use_fancy_tab_bar = false,
    colors = require("theme"),
}
```

