#!/usr/bin/env bash

# AuraUltra colors for Tmux

set -g mode-style "fg=#82e2ff,bg=#3b2f4f"

set -g message-style "fg=#82e2ff,bg=#3b2f4f"
set -g message-command-style "fg=#82e2ff,bg=#3b2f4f"

set -g pane-border-style "fg=#3b2f4f"
set -g pane-active-border-style "fg=#82e2ff"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#82e2ff,bg=#2a1f3d"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#221931,bg=#82e2ff,bold] #S #[fg=#82e2ff,bg=#2a1f3d,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#2a1f3d,bg=#2a1f3d,nobold,nounderscore,noitalics]#[fg=#82e2ff,bg=#2a1f3d] #{prefix_highlight} #[fg=#3b2f4f,bg=#2a1f3d,nobold,nounderscore,noitalics]#[fg=#82e2ff,bg=#3b2f4f] %Y-%m-%d  %I:%M %p #[fg=#82e2ff,bg=#3b2f4f,nobold,nounderscore,noitalics]#[fg=#221931,bg=#82e2ff,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#2a1f3d,bg=#2a1f3d,nobold,nounderscore,noitalics]#[fg=#82e2ff,bg=#2a1f3d] #{prefix_highlight} #[fg=#3b2f4f,bg=#2a1f3d,nobold,nounderscore,noitalics]#[fg=#82e2ff,bg=#3b2f4f] %Y-%m-%d  %H:%M #[fg=#82e2ff,bg=#3b2f4f,nobold,nounderscore,noitalics]#[fg=#221931,bg=#82e2ff,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#c8bff2,bg=#2a1f3d"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#c8bff2,bg=#2a1f3d"
setw -g window-status-format "#[fg=#2a1f3d,bg=#2a1f3d,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#2a1f3d,bg=#2a1f3d,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#2a1f3d,bg=#3b2f4f,nobold,nounderscore,noitalics]#[fg=#82e2ff,bg=#3b2f4f,bold] #I  #W #F #[fg=#3b2f4f,bg=#2a1f3d,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#ffd49b]#[bg=#2a1f3d]#[fg=#2a1f3d]#[bg=#ffd49b]"
set -g @prefix_highlight_output_suffix ""
