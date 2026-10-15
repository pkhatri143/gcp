# GCP Design System

Tokens, Vue components and screen prototypes for the GCP product.
**Live explorer:** https://gcp-liard.vercel.app/

## How the live site stays current
`index.html` reads `tokens.css` and every `components/*.vue` file when the page loads.
Push a change to either and the site shows it. No rebuild step.

Two things are still edited by hand in `index.html`: the component list (`COMPONENTS`, with
status and notes) and each component's static preview markup. When you add a component, add
an entry and a `<template id="pv-…">` there, then update
`.claude/skills/gcp-design-system/references/components.md`.

## Layout
| Path | What |
|---|---|
| `tokens.css` | The only copy of the design tokens |
| `components/` | Vue 3 single-file components |
| `*.html` | Explorer and screen prototypes (reference only) |
| `docs/DESIGN.md` | Token and component inventory merged from Figma |
| `HANDOVER.md` | Start here: links, what is verified vs assumed, open questions |
| `CLAUDE-CODE-SETUP.md`, `CLAUDE.md`, `.claude/` | Claude Code setup and project skills |
| `scripts/check-tokens.sh` | Fails on hard-coded colours in `components/` |

To preview locally, serve the folder (`python3 -m http.server`); browsers block the
explorer's file reads when opened straight from disk.
