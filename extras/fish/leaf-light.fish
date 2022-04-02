#!/usr/bin/fish

# leaf light fish shell theme
# A template was taken and modified from https://github.com/rebelot/kanagawa.nvim
set -l foreground 2e2c2f
set -l comment a6a9a1
set -l red 9d4b53
set -l green 59795f
set -l yellow a78a58
set -l blue 40739a
set -l purple 715688
set -l teal 3b8187

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $teal
set -g fish_color_keyword $purple
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $blue
set -g fish_color_error $red
set -g fish_color_param $yellow
set -g fish_color_comment $comment
set -g fish_color_selection --background=$green
set -g fish_color_search_match --background=$green
set -g fish_color_operator $green
set -g fish_color_escape $blue
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $teal
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
