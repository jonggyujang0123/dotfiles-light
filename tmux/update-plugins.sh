#!/usr/bin/env bash

# Plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# start a server but don't attach to it
tmux start-server
# create a new session but don't attach to it either
tmux new-session -d
# install the plugins
~/.tmux/plugins/tpm/scripts/update_plugin.sh
# killing the server is not required, I guess
# tmux kill-server
