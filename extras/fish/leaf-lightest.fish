#!/usr/bin/fish

# terminal colors
set -l black fdfff8
set -l red 633139
set -l green 27352b
set -l yellow 5d4a1c
set -l blue 1c3542
set -l magenta 3b2e48
set -l cyan 214b4b
set -l white 585659
set -l brblack b7bab2
set -l brred 803e46
set -l brgreen 405745
set -l bryellow 826a44
set -l brblue 2e546e
set -l brmagenta 564268
set -l brcyan 2e6669
set -l brwhite 121013

set -l comment b7bab2

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
