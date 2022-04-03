# Catppuccin color palette

# --> special
set -l foreground dadae8
set -l selection 3e4058

# --> palette
set -l teal B5E8E0
set -l flamingo F2CDCD
set -l magenta DDB6F2
set -l pink F5C2E7
set -l red F28FAD #e38c8f
set -l peach F8BD96
set -l green ABE9B3
set -l yellow FAE3B0
set -l blue 96CDFB
set -l gray 6e6c7e

# Syntax Highlighting
set -g fish_color_normal $foreground
set -g fish_color_command $blue
set -g fish_color_param $flamingo
set -g fish_color_keyword $red
set -g fish_color_quote $green
set -g fish_color_redirection $pink
set -g fish_color_end $peach
set -g fish_color_error $red
set -g fish_color_gray $gray
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $pink
set -g fish_color_escape $flamingo
set -g fish_color_autosuggestion $gray
set -g fish_color_cancel $red

# Prompt
set -g fish_color_cwd $yellow
set -g fish_color_user $teal
set -g fish_color_host $blue

# Completion Pager
set -g fish_pager_color_progress $gray
set -g fish_pager_color_prefix $pink
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $gray
