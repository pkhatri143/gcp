# GCP Design System — Developer Handover

Read this first. It says what you can trust, what you can't, and what is
still undecided.

## 1. Where things live

| What | Link |
|---|---|
| Design library (tokens, components) | https://www.figma.com/design/dyyiBTD6tJ57ggwSZToFbY/GCP-Design-System |
| Screens file | https://www.figma.com/design/O1L39CeZsNghNYsil1RlJr/Fitness-For-Service-Assessments--FFS- |
| Screen 1: FFS Assessment list page | Screens file, node `5527:61102` (append `&m=dev` for Dev Mode) |
| Screen 2: FFSA.108 Prescreening | Screens file, node `247:18105` (append `&m=dev`) |
| Reference prototypes (live) | https://gcp-liard.vercel.app/ |
| Repo | https://github.com/pkhatri143/gcp |

You need access to **both** Figma files, and a seat that includes Dev Mode.

## 2. What's in this package

- `tokens.css` — all design tokens as CSS variables (colour, type, spacing,
  radius, shadows, gradients). Two tiers: `--primitive-*` raw values and
  semantic tokens. **Components should use semantic tokens**, not hard-coded
  values.
- `components/*.vue` — Vue 3 components built so far (Button, Input,
  SelectField, Tabs, Sidebar, TopBar, etc.). Not a complete library.
- `index.html` — the live component explorer (reads `tokens.css` and `components/` directly).
- `ffs-assessments-v2.html`, `ffsa-prescreening-v2.html` — prototypes of the
  two screens above, built from live Figma data.
- `docs/DESIGN.md` — consolidated token and component inventory (53 Figma
  pages merged).
- `docs/SKILL.md`, `gcp-design-system.skill` — rules for AI assistants
  working on this system.

## 3. How to use the prototypes

They are **visual and behavioural references, not production code.**
Measurements, colours and fonts come from Figma, so copy those. Do not copy
the markup wholesale.

Working in the prototypes: search, column sort and row selection on the list
page; dropdowns on the prescreening page.

## 4. Verified vs assumed

**Read from Figma (trustworthy):** layout measurements, token names and
values, type styles, the selected-row and zebra-stripe colours, tab and
status-tag styling, the Create / filter / search controls, the title row and
shell bar.

**Assumed or approximated (check before shipping):**
- **Icons.** Drawn by hand as SVG. Use the real icons from the library's
  Icons page. Names for the paperclip and save icons weren't readable.
- **Hover, focus and loading states.** Mostly not designed in Figma. Any
  hover colour in the prototypes is a guess.
- **Table text cells.** ID, name, type and level text came from a screenshot,
  not from the Figma nodes. Sample data only.
- **Images.** Figma asset links expire after 7 days. Fetch the real files.
- **Body-cell text style** (14px / 20px) is assumed to match Body Small.

## 5. Open questions (need a design or product answer)

1. Two colours disagree between Figma exports: `semantic-bg/red` (`#ffecee`
   vs `#ffeceb`) and `semantic-element/orange` (`#ec6e0e` vs `#e36a0d`).
   Prototypes use the first of each.
2. The disabled button was `#9ca5be` in old code but the Figma token is
   `#9da5ff`. Code now uses the token. Confirm that's intended.
3. Tooltip colours (`#333` / `#fff`) have no token.
4. Input "edited" and "external value" border colours borrow chart accent
   colours. Should they have their own tokens?
5. The "Default View" control on the list page is the Date Input component
   with a swapped label and icon. Intended, or a placeholder?
6. The divider under the table toolbar is 1502px of a 1570px table. Intended?
7. Pagination and several button instances are hidden in the list frame.
   Are they real?
8. Change History page: what does the connector between the two columns
   mean, and is the body text structured data?
9. `Select.vue` is still an unstyled native select. `SelectField.vue` is the
   styled reference.

## 6. Code Connect status

`Button` is mapped to `components/Button.vue` in the library, so Figma's
generated code points at the right file. **The props it emits are Figma's
variant names** (`type="Tertiary"`, `size="Large"`), not `Button.vue`'s props
(`btnBackgroundType`, `size`, `text`). Either add a Code Connect prop
template or align the prop names. Other component sets are not mapped yet.

## 7. Not covered by design files

Data loading, validation, how Screening Results are calculated, permissions,
routing, error handling, responsive behaviour (frames are 1728px wide only)
and accessibility testing. The prototypes use real form controls and
labelled buttons, but they have not been audited against WCAG.
