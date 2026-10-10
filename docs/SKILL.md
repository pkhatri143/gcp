---
name: gcp-design-system
description: Creates implementation-ready design-system guidance for the GCP Design System, derived from a consolidated merge of 53 per-page Figma extractions (foundations + 46 components). Use when writing, reviewing, or generating UI copy/structure/rules for this design system.
---

# GCP Design System (Consolidated)

Merged from 53 separate per-page SKILL.md exports (one per Figma page).
All 53 shared the same boilerplate structure below almost verbatim —
kept once here instead of 53 times. The only real per-page content was
each page's Component Families list, now combined into one master
catalog further down. See DESIGN.md (companion file, same merge) for
the actual token values — this file is process/rules guidance, not
the token source of truth.

## Mission
Document and operationalize the GCP Design System style foundations extracted from Figma so teams can build consistent interfaces quickly.

## Brand
- Product/brand: GCP Design System
- Audience: Designers and engineers building this product
- Product surface: web app

## Style Foundations
- Visual style: structured, token-driven, layered, radius Radius/XXS/Radius/XS/Radius/S/Radius/M
- Typography scale: Header/Header 1, Header/Header 2, Header/Header 3, Header/Header 4, Header/Header 5, Sub Header/Sub Header 1, Sub Header/Sub Header 2, Sub Header/Sub Header 3, Body/Body Large, Body/Body Medium, Body/Body Small, Button/Button Large, Button/Button Medium, Button/Button Compact
- Color palette: Final Designs Section, diagram, Logo Color Dark, Logo Color Light, Logo Color Edge Dark, Edge Logo Light, AI Icon Light, AI Logo Detaut, Illustration/general, Illustration/app Tile, Primitives/Color/Primary/Blue 50, Primitives/Color/Primary/Blue 10, Primitives/Color/Background/Card, Primitives/Color/Background/Page
- Spacing scale: Spacing/space-0, Spacing/space-1, Spacing/space-2⭐, Spacing/space-3⭐, Spacing/space-5⭐, Spacing/space-7, Spacing/space-8, Spacing/space-9, Spacing/space-10, Spacing/space-11, Spacing/space-12, Spacing/space-13, Spacing/space-4, Spacing/space-6⭐
- Radius/shadow/motion tokens: Primitives/Font/Size/10, Primitives/Font/Size/12, Primitives/Font/Size/14, Primitives/Font/Size/16, Primitives/Font/Size/20, Primitives/Font/Size/24, Primitives/Font/Size/32, Primitives/Font/Size/36, Primitives/Font/Size/40, Primitives/Font/Size/48, Primitives/Font/Line Height/2xs, Primitives/Font/Line Height/xs, Primitives/Font/Line Height/s, Primitives/Font/Line Height/sm

## Component Families (master catalog)
52 component pages, consolidated from individual per-page exports.
Full variant lists are in DESIGN.md's Component Catalog section — this
is the name-level index.

- **Accordion** (17 variants)
- **Active Uploads Overlay** (14 variants)
- **App Tile** (8 variants)
- **Bar Chart** (36 variants)
- **Breadcrumbs** (15 variants)
- **Button** (40 variants)
- **Calendar** (21 variants)
- **Cards** (7 variants)
- **Check Box and Radio Button** (21 variants)
- **Chips** (21 variants)
- **Color** (1 variants)
- **Color Picker** (1 variants)
- **Count Analytics Data** (1 variants)
- **Donut Chart** (30 variants)
- **Dropdown** (6 variants)
- **File Upload Dialogue** (5 variants)
- **Floating Footer** (1 variants)
- **Header** (3 variants)
- **Header Info Cards** (11 variants)
- **HeatMap** (40 variants)
- **Icons** (40 variants)
- **Illustrations** (7 variants)
- **Input Fields** (40 variants)
- **Line Chart** (6 variants)
- **List Item** (40 variants)
- **Loading** (5 variants)
- **Logo** (15 variants)
- **Matrix** (36 variants)
- **Message Dialog** (6 variants)
- **Pie chart** (16 variants)
- **Popover** (16 variants)
- **Process Indicator** (40 variants)
- **Profile Thumbnail** (38 variants)
- **Radius | Spacing** (1 variants)
- **Scatter plot** (4 variants)
- **Scrollbar** (4 variants)
- **Search Bar** (11 variants)
- **Segmented Button** (31 variants)
- **Semantic Message Strips** (21 variants)
- **Shell bar** (4 variants)
- **Side Navigation Panel** (14 variants)
- **Slider** (40 variants)
- **Spider chart** (8 variants)
- **Step Indicator** (11 variants)
- **Switch** (7 variants)
- **Tab** (20 variants)
- **Table** (40 variants)
- **Tags** (31 variants)
- **Text Area** (19 variants)
- **Toolbar** (4 variants)
- **Tree Table** (40 variants)
- **Typography** (1 variants)

## Accessibility
- Target: WCAG 2.2 AA
- Keyboard-first interactions required
- Focus-visible rules required
- Contrast constraints required

## Writing Tone
concise, confident, implementation-focused

## Rules: Do
- Use extracted color tokens before introducing one-off values: Final Designs Section
- diagram
- Logo Color Dark
- Logo Color Light
- Logo Color Edge Dark
- Edge Logo Light.
- Use these typography styles consistently: Header/Header 1
- Header/Header 2
- Header/Header 3
- Header/Header 4
- Header/Header 5
- Sub Header/Sub Header 1.
- Define all interaction states for interactive components: default
- hover
- focus-visible
- active
- disabled
- and loading.

## Rules: Don't
- Do not duplicate existing style tokens with one-off naming.
- Do not remove focus-visible indicators or keyboard support.
- Do not hard-code raw values where local styles or variables already exist.

## Guideline Authoring Workflow
1. Restate design intent in one sentence.
2. Define foundations and tokens.
3. Define component anatomy
4. variants
5. and interactions.
6. Add accessibility acceptance criteria.
7. Add anti-patterns and migration notes.
8. End with QA checklist.

## Required Output Structure
- Context and goals
- Design tokens and foundations
- Component-level rules (anatomy, variants, states, responsive behavior)
- Accessibility requirements and testable acceptance criteria
- Content and tone standards with examples
- Anti-patterns and prohibited implementations
- QA checklist

## Component Rule Expectations
- Include keyboard, pointer, and touch behavior.
- Include spacing and typography token requirements.
- Include long-content, overflow, and empty-state handling.

## Quality Gates
- Every non-negotiable rule uses "must".
- Every recommendation uses "should".
- Every accessibility rule is testable in implementation.
- Prefer system consistency over local visual exceptions.

## Acceptance Checklist
- Frontmatter exists with valid `name` and `description`.
- Guidance is under 500 lines for `skill.md` when possible.
- Accessibility and interaction states are explicitly documented.
- Rules are concrete, testable, and non-ambiguous.
- Output can be reused in other repositories with only variable replacement.

## TypeUI + Agentic Integration
This `SKILL.md` is intended for `typeui.sh` CLI workflows.
It can later be integrated with agentic tools including Claude Code, OpenCode, Gemini CLI, Cursor, and similar assistants.

<!-- TYPEUI_SH_MANAGED_END -->

## Merge Notes
- Source: 53 files (SKILL.md + SKILL1.md…SKILL52.md), extracted
  2026-10-06, consolidated into this single file on the same day.
- 3 pages (Color, Typography, "Radius | Spacing") are token-only —
  no components expected there, not a gap.
- Re-run the typeui.sh extraction and re-merge if the Figma file
  changes substantially, rather than hand-editing this file directly.