#!/usr/bin/env python3
# Inject the shared-password gate (_gate_snippet.tpl) at the END of <head> in every built .html.
# Self-correcting + idempotent: strips any existing gate block first, then re-inserts — so it works
# even for pages without a .bak_island (Runner, index) and fixes placement on every run.
# Run as a post-build step (like noindex) so it survives every re-inject; .bak_island sources stay gate-free.
import sys, re, glob, os

HERE = os.path.dirname(os.path.abspath(__file__))
SNIP = open(os.path.join(HERE, '_gate_snippet.tpl'), encoding='utf-8').read().strip()

GATE_RE = re.compile(r'\s*<style id="__aiosgate_css">.*?</script>', re.S)  # matches an already-injected gate block

files = sys.argv[1:] or glob.glob(os.path.join(HERE, '*.html'))
for fn in files:
    try:
        s = open(fn, encoding='utf-8').read()
    except Exception as e:
        print('[skip]', fn, e); continue
    s = GATE_RE.sub('', s)                      # remove any prior gate (keeps it idempotent / fixes placement)
    m = re.search(r'</head\s*>', s, re.IGNORECASE)
    if m:
        s = s[:m.start()] + SNIP + '\n' + s[m.start():]
    else:
        h = re.search(r'<head[^>]*>', s, re.IGNORECASE)
        if not h:
            print('[no head]', os.path.basename(fn)); continue
        s = s[:h.end()] + '\n' + SNIP + s[h.end():]
    open(fn, 'w', encoding='utf-8').write(s)
    print('[gated]', os.path.basename(fn))
