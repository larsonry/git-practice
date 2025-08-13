#!/usr/bin/env bash
set -euo pipefail

echo "=== CI Health Check ==="
echo "Date: $(date -Is)"
echo "Runner: $(uname -a)"
echo

echo "[1/3] Checking file exists: hello.txt"
test -f hello.txt && echo "OK: hello.txt is present"

echo "[2/3] Listing repo files"
ls -la

echo "[3/3] Disk + memory snapshot"
df -h
free -m || true   # 'free' might not exist on non-Linux, ignore failure

echo
echo "All checks passed ✅"
