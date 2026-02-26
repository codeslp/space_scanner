#!/bin/bash
#
# Space Scanner Research — Session Reinitializer
#
# Usage:
#   ./reinit.sh              # Default: 4h15m delay
#   ./reinit.sh 3600         # Custom delay in seconds (1 hour)
#   ./reinit.sh now          # Launch immediately (no delay)
#
# What it does:
#   1. Waits the specified delay
#   2. Checks current research state (which files exist, which are empty)
#   3. Opens a new Terminal window
#   4. Launches Claude Code with a context-aware prompt built from HANDOFF.md
#
# To cancel a scheduled reinit:
#   kill $(cat /tmp/space_scanner_reinit.pid)

set -euo pipefail

# --- Configuration ---
PROJECT_DIR="/Users/bfaris96/Claude Code Markdown/space_scanner"
RESEARCH_DIR="$PROJECT_DIR/research"
HANDOFF_FILE="$RESEARCH_DIR/HANDOFF.md"
CLAUDE_BIN="$HOME/Library/Application Support/Claude/claude-code/2.1.49/claude"
PID_FILE="/tmp/space_scanner_reinit.pid"
LOG_FILE="/tmp/space_scanner_reinit.log"

# --- Parse delay ---
if [[ "${1:-}" == "now" ]]; then
    WAIT_SECONDS=0
elif [[ -n "${1:-}" ]]; then
    WAIT_SECONDS="$1"
else
    WAIT_SECONDS=15300  # 4h 15m
fi

# --- Resolve Claude binary (find latest version if pinned path doesn't exist) ---
resolve_claude_bin() {
    if [[ -x "$CLAUDE_BIN" ]]; then
        echo "$CLAUDE_BIN"
        return
    fi
    # Fallback: find the latest version in Application Support
    local latest
    latest=$(find "$HOME/Library/Application Support/Claude/claude-code" -name "claude" -type f 2>/dev/null | sort -V | tail -1)
    if [[ -n "$latest" && -x "$latest" ]]; then
        echo "$latest"
        return
    fi
    # Last resort: check PATH
    if command -v claude &>/dev/null; then
        command -v claude
        return
    fi
    echo ""
}

# --- Build the prompt dynamically based on current file state ---
build_prompt() {
    local prompt="Read research/HANDOFF.md for full context. Here is the current state of research files:\n\n"

    # Check each expected file
    local files=(
        "01_CV_CAPABILITIES.md"
        "02_REGULATORY_CODE_LANDSCAPE.md"
        "03_ERGONOMICS_WORKER_SAFETY.md"
        "04_KITCHEN_LAYOUT_WORKFLOW.md"
        "05_STORAGE_DESIGN.md"
        "06_FOOD_SAFETY_BY_DESIGN.md"
        "07_COMMON_PROBLEMS.md"
        "08_ACOUSTICS_NOISE.md"
        "09_LIGHTING_DESIGN.md"
        "10_VENTILATION_THERMAL.md"
        "11_FLOORING_SLIP_RESISTANCE.md"
        "12_SERVING_AREA_DESIGN.md"
        "13_SUSTAINABILITY_ENERGY.md"
        "14_CLEANING_SANITATION.md"
        "15_FUTURE_PROOFING.md"
    )

    local incomplete=()
    local missing=()

    for f in "${files[@]}"; do
        local path="$RESEARCH_DIR/$f"
        if [[ ! -f "$path" ]]; then
            missing+=("$f")
        elif [[ ! -s "$path" ]]; then
            incomplete+=("$f (empty file — agent failed)")
        fi
    done

    if [[ ${#incomplete[@]} -gt 0 ]]; then
        prompt+="INCOMPLETE (need to re-run):\n"
        for f in "${incomplete[@]}"; do
            prompt+="  - $f\n"
        done
        prompt+="\n"
    fi

    if [[ ${#missing[@]} -gt 0 ]]; then
        prompt+="NOT YET CREATED:\n"
        for f in "${missing[@]}"; do
            prompt+="  - $f\n"
        done
        prompt+="\n"
    fi

    if [[ ${#incomplete[@]} -eq 0 && ${#missing[@]} -eq 0 ]]; then
        prompt+="All research files exist and have content. All phases appear complete.\n"
        prompt+="Verify each file's quality and update HANDOFF.md to reflect completion.\n"
    else
        prompt+="Pick up where we left off. Re-run any incomplete files first, then launch all missing files in parallel (up to 3-4 at a time). Follow the conventions in HANDOFF.md."
    fi

    echo -e "$prompt"
}

# --- Logging ---
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG_FILE"
}

# --- Main ---
main() {
    # Save PID for cancellation
    echo $$ > "$PID_FILE"

    local target_time
    target_time=$(date -v+"${WAIT_SECONDS}S" '+%Y-%m-%d %H:%M:%S' 2>/dev/null || date -d "+${WAIT_SECONDS} seconds" '+%Y-%m-%d %H:%M:%S' 2>/dev/null || echo "unknown")

    log "Reinitializer started (PID: $$)"
    log "Delay: ${WAIT_SECONDS}s (~$((WAIT_SECONDS / 3600))h $(((WAIT_SECONDS % 3600) / 60))m)"
    log "Target launch time: $target_time"
    log "Project: $PROJECT_DIR"
    log "To cancel: kill \$(cat $PID_FILE)"

    # Wait
    if [[ "$WAIT_SECONDS" -gt 0 ]]; then
        log "Sleeping..."
        sleep "$WAIT_SECONDS"
    fi

    log "Waking up — checking research state..."

    # Resolve claude binary
    local claude_path
    claude_path=$(resolve_claude_bin)
    if [[ -z "$claude_path" ]]; then
        log "ERROR: Could not find claude binary. Aborting."
        # Fallback: show notification so user knows
        osascript -e 'display notification "Could not find claude binary. Run reinit.sh manually." with title "Space Scanner Research"' 2>/dev/null || true
        exit 1
    fi
    log "Using claude at: $claude_path"

    # Build context-aware prompt
    local prompt
    prompt=$(build_prompt)
    log "Generated prompt based on file state"
    log "---PROMPT START---"
    log "$prompt"
    log "---PROMPT END---"

    # Send macOS notification
    osascript -e 'display notification "Launching Claude Code to continue research..." with title "Space Scanner Research" sound name "Glass"' 2>/dev/null || true

    # Launch Claude Code in a new Terminal window
    osascript <<APPLESCRIPT
tell application "Terminal"
    activate
    set newTab to do script "cd '${PROJECT_DIR}' && '${claude_path}' '$(echo "$prompt" | sed "s/'/'\\\\''/g")'"
    set custom title of newTab to "Space Scanner Research"
end tell
APPLESCRIPT

    log "Claude Code session launched in Terminal"

    # Cleanup PID file
    rm -f "$PID_FILE"
    log "Reinitializer complete"
}

main "$@"
