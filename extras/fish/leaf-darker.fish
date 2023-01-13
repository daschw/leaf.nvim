#!/usr/bin/fish

# terminal colors
set -l black 201e21
set -l red d7656d
set -l green 8bbd93
set -l yellow f1ca80
set -l blue 64b1f2
set -l magenta a77ec8
set -l cyan 55b7b9
set -l white c5c8c0
set -l brblack 585659
set -l brred ba5860
set -l brgreen 729b79
set -l bryellow ccaa6c
set -l brblue 5292c6
set -l brmagenta 8c6aa8
set -l brcyan 489ca5
set -l brwhite eff2ea

set -l comment 585659

# highlight colors
set -g fish_color_normal $brwhite
set -g fish_color_command $cyan
set -g fish_color_keyword $magenta
set -g fish_color_quote $yellow
set -g fish_color_redirection $brwhite
set -g fish_color_end $blue
set -g fish_color_error $red
set -g fish_color_param $yellow
set -g fish_color_comment $comment
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
