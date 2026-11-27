#!/bin/sh
set -eu
usage() { printf 'Usage: %s install|uninstall [Cold|Neutral|Warm|All]\n' "$0"; }
case "${1:-}" in -h|--help) usage; exit 0;; install|uninstall) ;; *) usage >&2; exit 2;; esac
[ "$#" -le 2 ] || { usage >&2; exit 2; }
case "${2:-All}" in Cold|Neutral|Warm) themes="MonoYou-Folders-$2";; All) themes='MonoYou-Folders-Cold MonoYou-Folders-Neutral MonoYou-Folders-Warm';; *) usage >&2; exit 2;; esac
repo_dir=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd)
case "${XDG_DATA_HOME:-}" in /*) icon_dir="$XDG_DATA_HOME/icons";; *) icon_dir="$HOME/.local/share/icons";; esac
for theme in $themes; do
    source_dir="$repo_dir/icons/$theme"
    target="$icon_dir/$theme"
    if [ "$1" = install ] && [ ! -f "$source_dir/index.theme" ]; then
        printf 'Missing theme: %s\n' "$source_dir" >&2; exit 1
    fi
    if [ -L "$target" ] || { [ -e "$target" ] && { [ ! -d "$target" ] || { [ ! -f "$target/.monoyou-icons" ] && ! cmp -s "$source_dir/index.theme" "$target/index.theme"; }; }; }; then
        printf 'Cannot manage existing path: %s\n' "$target" >&2; exit 1
    fi
done
if [ "$1" = uninstall ]; then
    for theme in $themes; do
        target="$icon_dir/$theme"
        if [ -d "$target" ]; then rm -r -- "$target"; printf 'Removed: %s\n' "$theme"; fi
    done
    exit 0
fi
mkdir -p -- "$icon_dir"
staging=$(mktemp -d "$icon_dir/.monoyou-setup.XXXXXX")
trap 'rm -rf -- "$staging"' EXIT
trap 'exit 1' HUP INT TERM
for theme in $themes; do
    cp -a -- "$repo_dir/icons/$theme" "$staging/$theme"
    touch "$staging/$theme/.monoyou-icons"
    if command -v gtk-update-icon-cache >/dev/null 2>&1; then
        gtk-update-icon-cache -f "$staging/$theme" || printf 'Warning: could not update cache for %s\n' "$theme" >&2
    fi
done
for theme in $themes; do
    target="$icon_dir/$theme"
    if [ -d "$target" ]; then
        backup="$staging/previous-$theme"
        mv -T -- "$target" "$backup"
        if ! mv -T -- "$staging/$theme" "$target"; then mv -T -- "$backup" "$target"; exit 1; fi
    else mv -T -- "$staging/$theme" "$target"; fi
    printf 'Installed: %s\n' "$theme"
done
