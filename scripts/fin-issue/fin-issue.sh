#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COUNT_FILE="$SCRIPT_DIR/count"

if [ ! -f "$COUNT_FILE" ]; then
  echo 0 > "$COUNT_FILE"
fi

count=$(( $(cat "$COUNT_FILE") + 1 ))

if [ "$count" -gt 10 ]; then
  count=0
fi

echo "$count" > "$COUNT_FILE"

echo "================================="
echo "🎉 Issue 完了お疲れ様でした!!! 🎉"
echo "================================="
