#!/usr/bin/env bash
# Verifies the hardcoded version in every skill's branding footer matches
# .claude-plugin/plugin.json. Run with --fix to rewrite them.
#
#   scripts/check-version.sh          # check, exit 1 on drift
#   scripts/check-version.sh --fix    # rewrite footers to match plugin.json
set -euo pipefail
cd "$(dirname "$0")/.."

VERSION=$(sed -n 's/.*"version"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' .claude-plugin/plugin.json | head -1)
[ -n "$VERSION" ] || { echo "could not read version from .claude-plugin/plugin.json" >&2; exit 2; }

FIX=0
[ "${1:-}" = "--fix" ] && FIX=1

drift=0
missing=0

# marketplace.json carries its own copy of the plugin version.
MKT=".claude-plugin/marketplace.json"
if [ -f "$MKT" ]; then
  mv=$(sed -n 's/.*"version"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' "$MKT" | head -1)
  if [ -n "$mv" ] && [ "$mv" != "$VERSION" ]; then
    if [ "$FIX" -eq 1 ]; then
      sed -i '' "s|\"version\": \"$mv\"|\"version\": \"$VERSION\"|" "$MKT"
      echo "FIXED $MKT: v$mv -> v$VERSION"
    else
      echo "DRIFT $MKT: v$mv (plugin.json says v$VERSION)"
    fi
    drift=$((drift+1))
  fi
fi
# CLAUDE.md carries the footer template; skills carry it in their Output block.
FILES=$(ls skills/*/SKILL.md CLAUDE.md)

for f in $FILES; do
  found=$(grep -o 'ai-adoption-playbook) v[0-9]\+\.[0-9]\+\.[0-9]\+' "$f" | sed 's/.* v//' | sort -u || true)
  if [ -z "$found" ]; then
    case "$f" in
      # skills with no saved deliverable have no footer, and that is fine
      skills/using-playbook/SKILL.md|skills/full-adoption-cycle/SKILL.md) ;;
      *) echo "MISSING footer: $f"; missing=$((missing+1)) ;;
    esac
    continue
  fi
  for v in $found; do
    if [ "$v" != "$VERSION" ]; then
      if [ "$FIX" -eq 1 ]; then
        sed -i '' "s|ai-adoption-playbook) v$v|ai-adoption-playbook) v$VERSION|g" "$f"
        echo "FIXED $f: v$v -> v$VERSION"
      else
        echo "DRIFT $f: v$v (plugin.json says v$VERSION)"
      fi
      drift=$((drift+1))
    fi
  done
done

if [ "$FIX" -eq 1 ]; then
  echo "done. plugin version v$VERSION"
  exit 0
fi

if [ "$drift" -eq 0 ] && [ "$missing" -eq 0 ]; then
  echo "ok: all footers at v$VERSION"
  exit 0
fi
echo "version drift: $drift file(s); missing footer: $missing file(s)" >&2
exit 1
