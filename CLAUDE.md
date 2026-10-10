# GCP Design System

Vue 3 single-file components plus static HTML prototypes for the GCP product. Design source
of truth is Figma; tokens live in `tokens.css`.

## Layout
- `tokens.css` — all design tokens (CSS variables). Use semantic tokens in components.
  It exists once, here. Never copy it elsewhere.
- `components/` — Vue 3 SFCs (`<script setup>`, scoped CSS). PascalCase filenames.
- `docs/DESIGN.md` — merged token + component inventory from Figma (incl. icon list).
- `.claude/skills/gcp-design-system/` — rules, component status, known issues.
- `.claude/skills/figma-to-page/` — how to build a page from a Figma link.
- `HANDOVER.md` — links, what is verified vs assumed, open questions.

There is no build tooling or test setup yet. Do not invent npm scripts. If you add tooling, say so.

## Rules
- Never hard-code colours, spacing, radius, font sizes or shadows. Use `tokens.css`.
  If a token is missing, flag it (`/* NEEDS TOKEN */` + `known-issues.md`), do not invent one.
- Reuse existing components before writing new ones (`components.md` lists them).
- Figma prop names are not our prop names. Check the component's real props.
- Keyboard access and visible focus are required. Use real form controls and labels.
- Be honest about what came from Figma, what was assumed, and what was not checked.

## Figma
- Library file: `dyyiBTD6tJ57ggwSZToFbY`. Screens file: `O1L39CeZsNghNYsil1RlJr`.
- To build from a link, use the `figma-to-page` skill (`/figma-to-page <link>`).
- Run `/mcp` to confirm the Figma server is connected before starting.

## Checks
- `scripts/check-tokens.sh` — fails on hard-coded colours in `components/`.
