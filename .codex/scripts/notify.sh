#!/bin/bash
set -euo pipefail

# 入力(JSON文字列)を安全に取得。未指定や解析失敗時はデフォルト文言にフォールバック
INPUT=${1-}
LAST_MESSAGE=$(printf '%s' "$INPUT" \
  | jq -r '."last-assistant-message" // "Codex task completed"' 2>/dev/null \
  || echo "Codex task completed")

# AppleScript へは引数(argv)で渡し、クォート崩れを回避
osascript - "$LAST_MESSAGE" <<'APPLESCRIPT'
on run argv
  display notification (item 1 of argv) with title "Codex"
end run
APPLESCRIPT
