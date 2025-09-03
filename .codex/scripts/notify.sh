#!/bin/bash
LAST_MESSAGE=$(echo "$1" | jq -r '.["last-assistant-message"] // "Codex task completed"')
osascript -e "display notification \"$LAST_MESSAGE\" with title \"Codex\""

