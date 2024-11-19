#!/bin/bash

# create sessions
tmux new-session -d -s main -n term
tmux new-session -d -s info -n term

#create windows
tmux new-window -t info -n calcurse calcurse
tmux new-window -t info -n ncspot  "exec flatpak run io.github.hrkfdn.ncspot"
