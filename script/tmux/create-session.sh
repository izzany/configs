#!/bin/bash

# create sessions
tmux new-session -d -s info: -n term

#create windows
tmux new-window -t info: -n calcurse calcurse
