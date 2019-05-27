#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/toggle_logging.sh"

main() {
	if supported_tmux_version_ok; then
		set_logging_variable "not logging"
		stop_pipe_pane
	fi
}
main

