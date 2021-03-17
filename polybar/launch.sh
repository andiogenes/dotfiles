#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

echo "---" | tee -a /tmp/status_bar.log
polybar status_bar 2>&1 | tee -a /tmp/status_bar.log & disown

echo "Bar launched..."
