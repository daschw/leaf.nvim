#!/usr/bin/fish

# terminal colors
set -l black e1e4dc
set -l red 9d4b53
set -l green 59795f
set -l yellow a78a58
set -l blue 40739a
set -l magenta 715688
set -l cyan 3b8187
set -l white 3c3a3d
set -l brblack d3d6ce
set -l brred ba5860
set -l brgreen 729b79
set -l bryellow ccaa6c
set -l brblue 5292c6
set -l brmagenta 8c6aa8
set -l brcyan 489ca5
set -l brwhite 2e2c2f

set -l comment a6a9a1

# highlight colors
set -g fish_color_normal $brwhite
set -g fish_color_command $cyan
set -g fish_color_keyword $magenta
set -g fish_color_quote $yellow
set -g fish_color_redirection $brwhite
set -g fish_color_end $blue
set -g fish_color_error $red
set -g fish_color_param $yellow
set -g fish_color_comment $white
set -g fish_color_selection --background=$brgreen
set -g fish_color_search_match --background=$brgreen
set -g fish_color_operator $brmagenta
set -g fish_color_escape $brblue
set -g fish_color_autosuggestion $comment
set -g fish_color_cancel $brred
set -g fish_color_cwd $brgreen
set -g fish_color_cwd_root $brred
set -g fish_color_history_current $brcyan
set -g fish_color_host $brwhite
set -g fish_color_host_remote $bryellow
set -g fish_color_status $red
set -g fish_color_user $brgreen
set -g fish_color_valid_path $blue
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $brwhite
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background $brgreen
