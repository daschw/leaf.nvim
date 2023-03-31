#!/usr/bin/fish

# terminal colors
set -l black eff2ea
set -l red 803e46
set -l green 405745
set -l yellow 9c7f4d
set -l blue 2e546e
set -l magenta 564268
set -l cyan 2e6669
set -l white 4a484b
set -l brblack 9b9e96
set -l brred 9d4b53
set -l brgreen 59795f
set -l bryellow a78a58
set -l brblue 40739a
set -l brmagenta 715688
set -l brcyan 3b8187
set -l brwhite 201e21

set -l comment 9b9e96

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
