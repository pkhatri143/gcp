#!/usr/bin/env bash
# Fails if a component contains a hard-coded colour instead of a token.
# Ignores colours that appear only inside comments (/* */, <!-- -->, // ...).
# Allow a deliberate exception by putting `token-exempt: <reason>` on the same line.
#
# Known limitation: a URL fragment that looks like hex (e.g. ...#abcdef) is flagged; use token-exempt.
# Usage: scripts/check-tokens.sh [dir]     (default: components)
# Exit:  0 = clean, 1 = violations, 2 = nothing to check / bad input
set -u
DIR="${1:-components}"

files=$(find "$DIR" -name '*.vue' 2>/dev/null | sort)
if [ -z "$files" ]; then
  echo "ERROR: no .vue files found in '$DIR'. Run from the repo root or pass a directory." >&2
  exit 2
fi

# shellcheck disable=SC2086
hits=$(awk '
  FNR == 1 { inb = 0; inh = 0 }
  {
    orig = $0
    if (orig ~ /token-exempt/) next

    # strip /* ... */ and <!-- ... --> (possibly spanning lines)
    line = orig; out = ""
    while (length(line) > 0) {
      if (inb) { i = index(line, "*/");  if (i == 0) { line = "" } else { line = substr(line, i + 2); inb = 0 } continue }
      if (inh) { i = index(line, "-->"); if (i == 0) { line = "" } else { line = substr(line, i + 3); inh = 0 } continue }
      a = index(line, "/*"); b = index(line, "<!--")
      if (a == 0 && b == 0) { out = out line; line = ""; break }
      if (b == 0 || (a != 0 && a < b)) { out = out substr(line, 1, a - 1); line = substr(line, a + 2); inb = 1 }
      else                              { out = out substr(line, 1, b - 1); line = substr(line, b + 4); inh = 1 }
    }
    # strip trailing // comments (only when preceded by whitespace, so URLs survive)
    sub(/(^|[ \t])\/\/.*$/, "", out)

    flag = 0
    if (out ~ /rgba?\(|hsla?\(/) flag = 1
    s = out
    while (match(s, /#[0-9a-fA-F]+/)) {
      len = RLENGTH - 1
      nextc = substr(s, RSTART + RLENGTH, 1)
      if ((len == 3 || len == 4 || len == 6 || len == 8) && nextc !~ /[A-Za-z0-9_-]/) flag = 1
      s = substr(s, RSTART + RLENGTH)
    }
    if (flag) printf "%s:%d: %s\n", FILENAME, FNR, orig
  }
' $files)

if [ -n "$hits" ]; then
  count=$(printf '%s\n' "$hits" | wc -l | tr -d ' ')
  echo "Hard-coded colours found ($count). Use a token from tokens.css, or mark a deliberate"
  echo "exception with 'token-exempt: <reason>' on the same line:"
  echo
  printf '%s\n' "$hits"
  exit 1
fi
echo "OK: no hard-coded colours in $DIR"
