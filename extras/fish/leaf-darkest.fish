#!/usr/bin/fish

# terminal colors
set -l black 121013
set -l red f4727a
set -l green a4dfad
set -l yellow ffea94
set -l blue 76d0ff
set -l magenta c292e8
set -l cyan 62d2e1
set -l white b7bab2
set -l brblack 585659
set -l brred d7656d
set -l brgreen 8bbd93
set -l bryellow f1ca80
set -l brblue 64b1f2
set -l brmagenta a77ec8
set -l brcyan 55b7b9
set -l brwhite fdfff8

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
