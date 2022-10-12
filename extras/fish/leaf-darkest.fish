#!/usr/bin/fish

# terminal colors
set -l black 161417
set -l red d06e76
set -l green 88b18f
set -l yellow e2c082
set -l blue 68a8dc
set -l magenta a280be
set -l cyan 5eb2bb
set -l white a6a9a1
set -l brblack 69676a
set -l brred 87353d
set -l brgreen 436349
set -l bryellow 917442
set -l brblue 2a5d84
set -l brmagenta 5b4072
set -l brcyan 256b71
set -l brwhite f7faf3

set -l comment 69676a

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
