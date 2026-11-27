#!/usr/bin/env bash
set -euo pipefail
for cmd in curl tar mktemp; do
    command -v "$cmd" >/dev/null || { printf 'Missing dependency: %s\n' "$cmd" >&2; exit 1; }
done
printf '\nMonoYou Folders Installer\n\n  1. Cold\n  2. Neutral\n  3. Warm\n  4. All themes\n\n'
while true; do
    printf 'Select a variant: '
    IFS= read -r choice </dev/tty || exit 1
    case "$choice" in 1) variant=Cold;; 2) variant=Neutral;; 3) variant=Warm;; 4) variant=All;; *) printf 'Invalid option.\n'; continue;; esac
    break
done
printf '\nPapirus-Dark must be installed separately.\n'
tmp=$(mktemp -d)
trap 'rm -rf -- "$tmp"' EXIT
trap 'exit 1' HUP INT TERM
printf 'Downloading MonoYou Folders...\n'
curl -fsSL https://github.com/edwardzerov2/monoyou-folders/archive/refs/heads/main.tar.gz -o "$tmp/repo.tar.gz"
tar -xzf "$tmp/repo.tar.gz" -C "$tmp"
sh "$tmp/monoyou-folders-main/setup.sh" install "$variant"
printf '\nInstallation complete.\n'
