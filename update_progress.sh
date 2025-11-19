#!/bin/bash

# -----------------------------
# Configuration
# -----------------------------
TARGET_DIR="text"
TARGET_PAGES=60
CHARS_PER_PAGE=2500

START_DATE="2025-11-19"
DEADLINE="2026-02-15"

# -----------------------------
# Date conversion function
# -----------------------------
to_timestamp() {
    # GNU date (Linux – GitHub Actions)
    if date -d "$1" "+%s" >/dev/null 2>&1; then
        date -d "$1" "+%s"
    # BSD/macOS date
    elif date -j -f "%Y-%m-%d" "$1" "+%s" >/dev/null 2>&1; then
        date -j -f "%Y-%m-%d" "$1" "+%s"
    else
        echo "0"
    fi
}

# -----------------------------
# Page count calculation
# -----------------------------
TOTAL_CHARS=0
FILES=$(find "$TARGET_DIR" -type f -name "*.md")

for file in $FILES; do
    if [[ "$file" == *"README"* ]]; then
        continue
    fi
    CHARS=$(grep -v '^[[:space:]]*$' "$file" | wc -m | tr -d ' ')
    TOTAL_CHARS=$((TOTAL_CHARS + CHARS))
done

PAGES=$((TOTAL_CHARS / CHARS_PER_PAGE))

# -----------------------------
# Date calculation
# -----------------------------
TODAY=$(date +%Y-%m-%d)

TS_TODAY=$(to_timestamp "$TODAY")
TS_START=$(to_timestamp "$START_DATE")
TS_DEADLINE=$(to_timestamp "$DEADLINE")

# Protection against empty or null values
if [[ -z "$TS_TODAY" || -z "$TS_START" || "$TS_START" == "0" ]]; then
    echo "Error: dates could not be converted."
    exit 1
fi

# Days from start
DAYS_PASSED=$(( (TS_TODAY - TS_START) / 86400 ))
if (( DAYS_PASSED < 0 )); then DAYS_PASSED=0; fi

# Total number of days
TOTAL_DAYS=$(( (TS_DEADLINE - TS_START) / 86400 ))
if (( TOTAL_DAYS < 1 )); then TOTAL_DAYS=1; fi

# Daily required pages
DAILY_QUOTA=$(echo "scale=4; $TARGET_PAGES / $TOTAL_DAYS" | bc)

# Target pages for today
SHOULD_HAVE=$(echo "$DAILY_QUOTA * $DAYS_PASSED" | bc | awk '{printf("%.0f",$1)}')

# Fallback if bc returned empty string
if [[ -z "$SHOULD_HAVE" ]]; then SHOULD_HAVE=0; fi

# -----------------------------
# Status (AHEAD / ON TRACK / BEHIND)
# -----------------------------
if (( PAGES > SHOULD_HAVE )); then
    STATUS="AHEAD"
    COLOR="brightgreen"
elif (( PAGES >= SHOULD_HAVE * 90 / 100 )); then
    STATUS="ON TRACK"
    COLOR="blue"
else
    STATUS="BEHIND"
    COLOR="red"
fi

# -----------------------------
# Badge URL
# -----------------------------
BADGE="https://img.shields.io/badge/Writing%20Progress-${PAGES}%20pages%20|%20goal:%20${SHOULD_HAVE}%20(${STATUS})-${COLOR}?style=for-the-badge"

# -----------------------------
# Update README.md
# -----------------------------
if grep -q "![Progress]" readme.md; then
    sed -i.bak "s|!\[Progress\].*|![Progress](${BADGE})|" readme.md
else
    echo -e "\n![Progress](${BADGE})" >> readme.md
fi

echo "Strany: $PAGES | Malo by byť dnes: $SHOULD_HAVE | Status: $STATUS"
