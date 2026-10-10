# Using Claude Code with this repo and Figma

Everything below was checked against current Anthropic and Figma docs, except where marked
**untested**. The repo files (`CLAUDE.md`, the two skills, the check script) were written for
this repo but have **not been run inside Claude Code yet**. Do the dry run in section 4 first.

## 1. One-time setup (per developer)

1. Install Claude Code (see Anthropic's docs for the current install command).
2. Get a Figma seat that includes Dev Mode, with access to both Figma files listed in
   `CLAUDE.md`.
3. From the repo root, connect the Figma server at **project scope**, so the config is
   committed and everyone gets the same setup:

   ```bash
   claude mcp add --scope project --transport http figma https://mcp.figma.com/mcp
   git add .mcp.json && git commit -m "Add Figma MCP server"
   ```

   Do this once, for the whole team. Everyone else just pulls.
4. Start `claude` in the repo, run `/mcp`, and sign in to Figma when prompted. The server
   should show as connected.
5. Accept the workspace trust prompt. Project skills in `.claude/skills/` only load after you do.

**Plugin alternative:** Figma also ships a Claude Code plugin
(`claude plugin install figma@claude-plugins-official`) that bundles the server plus its own
workflow skills. We suggest the project-scoped server instead so that only *our* skill governs
how pages are built. If you install the plugin anyway, its skills may compete with
`figma-to-page`; tell Claude to use `figma-to-page`.

## 2. Build a page from a Figma link

In Figma, right-click the frame, choose copy link, then in Claude Code:

```
/figma-to-page https://www.figma.com/design/<file>/<name>?node-id=1-2
```

The skill reads the frame in pieces, maps to existing components and tokens, builds the Vue
files, runs the token check, and ends with three lists: from Figma / assumed / open questions.
Read the third list. That is where design needs to answer something.

Better results when you:
- link a **specific frame**, not a whole page;
- mark finished frames "Ready for dev" and use `&m=dev` links;
- ask for one screen per task, then review before the next.

Useful prompts:
- "Build this page. Reuse existing components and tell me what is new."
- "Compare your result with the screenshot and list every difference."
- "Which colours or spacings here have no token? Log them in known-issues.md."

## 3. Guardrail

`scripts/check-tokens.sh` fails on hard-coded colours in `components/`. Run it before every
commit; add it to CI when there is one.

**Baseline today: passes.** Five violations had tokens and are fixed. Seven lines for five
distinct gaps (tooltip surface/text, pure black, avatar black, translucent white) have no token;
they are marked `token-exempt: NEEDS TOKEN` so the check passes while they stay searchable:

```bash
grep -rn "NEEDS TOKEN" components/
```

Those need real tokens from design. A good Claude Code task once design answers:

> "Add the new tokens to tokens.css, replace each NEEDS TOKEN line with the token, remove the
> marker, and run scripts/check-tokens.sh."

`tokens.css` lives once, at the repo root. Never copy it into a skill folder or anywhere else.

## 4. Dry run (do this before trusting any of it)

Give Claude Code the list-page frame, `node-id=5527-61102` in the screens file, and compare
the result with `ffs-assessments-v2.html`. Check: did it connect to Figma, did it read the
frame in pieces, did it reuse `Button.vue`, did it pass Figma prop names through, did it
leave hex values behind? Fix the skill wording where it went wrong, and commit that.

## 5. Keeping it healthy

- **When Figma changes:** re-run the extraction, update `tokens.css` and `docs/DESIGN.md`,
  and commit together. A stale `tokens.css` silently produces wrong pages.
- **New component:** add it to `components.md` in the same PR.
- **Code Connect:** `Button` is mapped, but its prop template is missing, so generated usage
  passes Figma prop names. Add a template, or the skill's "translate props" rule has to
  catch it every time. Map the other component sets (by *component set* node) next.
- **Review:** treat generated pages as a first draft. Check keyboard use, focus, and states
  Figma doesn't show. None of this is accessibility-tested.

## 6. Known limits

- Figma applies rate limits that depend on plan. Many large frames in a row may slow down.
- The Figma server is link-based. It cannot browse a page; it needs a node link.
- Text inside component instances (table cell text) may not come through. Expect sample data.
