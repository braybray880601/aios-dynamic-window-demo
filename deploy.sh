#!/usr/bin/env bash
# Deploy the AIOS Dynamic Window demo to GitHub Pages.
# Repo: braybray880601/aios-dynamic-window-demo  →  https://braybray880601.github.io/aios-dynamic-window-demo/
# Usage:  ./deploy.sh "commit message"
set -euo pipefail
cd "$(dirname "$0")"

# 1) Rebuild: regenerate the injected .html pages from their .bak_island sources
for b in *.bak_island; do cp "$b" "${b%.bak_island}"; done
python3 _inject_island.py *.html >/dev/null 2>&1

# 2) Re-add the noindex meta (re-injecting strips it; keeps the site out of search engines)
python3 - <<'PY'
import glob, re
for fn in glob.glob("*.html"):
    s = open(fn, encoding="utf-8").read()
    if 'name="robots"' in s:
        continue
    open(fn, "w", encoding="utf-8").write(
        re.sub(r'(<head[^>]*>)', r'\1\n<meta name="robots" content="noindex,nofollow"/>', s, count=1)
    )
PY

# 3) Commit + push (no-op if nothing changed)
MSG="${1:-update demo}"
git add -A
if git diff --cached --quiet; then
  echo "nothing to commit — already up to date"
  exit 0
fi
git commit -q -m "$MSG"
git push -q origin main
echo "✓ pushed — live in ~1 min: https://braybray880601.github.io/aios-dynamic-window-demo/"
