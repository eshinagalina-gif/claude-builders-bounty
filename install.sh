#!/data/data/com.termux/files/usr/bin/bash
set -e

mkdir -p "$HOME/.claude/hooks"

cp block_destructive_bash.py "$HOME/.claude/hooks/block_destructive_bash.py"
chmod +x "$HOME/.claude/hooks/block_destructive_bash.py"

echo "Hook installed:"
echo "$HOME/.claude/hooks/block_destructive_bash.py"
echo
echo "Add the PreToolUse configuration from settings.example.json to your Claude Code settings."
