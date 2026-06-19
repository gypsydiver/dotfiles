#!/usr/bin/env bash
#
# btc-ticker.sh — print Bitcoin spot price for a tmux status line.
#
# Caches the price on disk so that a fast status-interval (e.g. every 10s)
# does not hammer the price API. The cache is refreshed at most once per
# CACHE_TTL seconds; on network failure the last cached value is reused.
#
# Usage:
#   btc-ticker.sh            # uses defaults below
#   CURRENCY=USD btc-ticker.sh
#
set -euo pipefail

CURRENCY="${CURRENCY:-EUR}"
CACHE_TTL="${CACHE_TTL:-60}"                       # seconds between refreshes
CACHE_FILE="${TMPDIR:-/tmp}/btc-ticker-${CURRENCY}.cache"
SYMBOL="${SYMBOL:-₿}"

# Print a value and exit.
emit() { printf '%s %s\n' "$SYMBOL" "$1"; exit 0; }

# Reuse the cache when it is fresh enough.
if [[ -f "$CACHE_FILE" ]]; then
  now=$(date +%s)
  mtime=$(stat -f %m "$CACHE_FILE" 2>/dev/null || echo 0)
  if (( now - mtime < CACHE_TTL )); then
    emit "$(cat "$CACHE_FILE")"
  fi
fi

# Refresh from Coinbase spot price (no API key required).
url="https://api.coinbase.com/v2/prices/BTC-${CURRENCY}/spot"
if amount=$(curl -fsS --max-time 5 "$url" 2>/dev/null | jq -er '.data.amount' 2>/dev/null); then
  # Format with thousands separators, drop cents.
  price=$(printf "%'.0f" "$amount" 2>/dev/null || printf '%.0f' "$amount")
  printf '%s' "$price" > "$CACHE_FILE"
  emit "$price"
fi

# Network/parse failure: fall back to the last cached value if we have one.
if [[ -f "$CACHE_FILE" ]]; then
  emit "$(cat "$CACHE_FILE")"
fi

emit "—"
