#!/bin/sh
cd "$(dirname "$0")"
python3 -m http.server 8765 --bind 127.0.0.1 >/tmp/hanzi_quest_v5.log 2>&1 &
PID=$!
sleep 0.4
open "http://127.0.0.1:8765/" 2>/dev/null || xdg-open "http://127.0.0.1:8765/" 2>/dev/null || true
wait $PID
