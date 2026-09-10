# Claude Code destructive Bash blocker

A Claude Code PreToolUse hook that blocks selected destructive Bash commands before execution.

## Bounty

$100

## What it blocks

- rm -rf
- rm -fr
- rm -r -f
- git push --force
- git push -f
- DROP TABLE
- TRUNCATE TABLE
- DELETE FROM without WHERE

git push --force-with-lease is allowed.

Normal commands such as rm file.txt, git status, npm test, and git push origin main are allowed.

## Logging

Blocked commands are logged to ~/.claude/hooks/blocked.log.

Each log entry contains timestamp, command, project path, and reason.

## Installation

Run ./install.sh from this directory, then add the configuration from settings.example.json to your Claude Code settings.

## Testing

Run: python3 test_hook.py

Expected: PASS: 15 tests

## Safety

The hook analyzes incoming Bash tool calls and returns a deny decision for matching destructive patterns. It does not execute the incoming command.

This project does not claim the bounty, create a PR, modify GitHub, or submit anything automatically.
