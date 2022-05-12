#!/usr/bin/fish

# terminal colors
set -l black ecefe8
set -l red 924048
set -l green 4e6e54
set -l yellow 9c7f4d
set -l blue 35688f
set -l magenta 664b7d
set -l cyan 30767c
set -l white 5e5c5f
set -l brblack b1b4ac
set -l brred c5636b
set -l brgreen 7da684
set -l bryellow d7b577
set -l brblue 5d9dd1
set -l brmagenta 9775b3
set -l brcyan 53a7b0
set -l brwhite 211f22

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
