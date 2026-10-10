---
name: gcp-design-system
source_file: GCP Design System
source_pages: 53 (Cover + 5 foundation pages + 46 component pages)
consolidated_from: typeui.sh per-page exports (DESIGN.md x53, SKILL.md x53)
---

# GCP Design System — Design Guidelines (Consolidated)

This file merges 53 separate per-page Figma extractions into one
reference. Every DESIGN.md across all 53 pages had byte-identical
Color/Typography/Spacing/Radius/Motion/Effect/Grid token sections —
those are included once here, not 53 times. The only thing that
actually varied per page was the Component Families list, which is
what this file organizes properly below.

## Variable Collections
- Primitives
- Color Tokens
- Typography Tokens
- Radius
- Spacing

## Color Tokens
- Final Designs Section: #10177752
- diagram: gradient_linear(#B7DCFC 69% | #E0E9EF80 85% | #B7DCFC 100%)
- Logo Color Dark: gradient_linear(#1D2026 0% | #6B768C 100%)
- Logo Color Light: gradient_linear(#FFFFFF 29% | #6E6E6E 100%)
- Logo Color Edge Dark: gradient_linear(#1C0C5B 0% | #3D10DE 50%)
- Edge Logo Light: gradient_linear(#3D10DE 66% | #7E22CE 100%)
- AI Icon Light: gradient_linear(#606DFF 0% | #A65EFF 100%)
- AI Logo Detaut: gradient_linear(#4353FF 0% | #8528F8 100%)
- Illustration/general: gradient_linear(#4353FF 0% | #6975FF 100%)
- Illustration/app Tile: gradient_linear(#4353FF 0% | #8528F8 100%)
- Primitives/Color/Primary/Blue 50: #4353FF
- Primitives/Color/Primary/Blue 10: #020631
- Primitives/Color/Background/Card: #FFFFFF
- Primitives/Color/Background/Page: #F9F9FC
- Primitives/Color/Neutral/100: #E5E7EF
- Primitives/Color/Neutral/200: #C4CBDD
- Primitives/Color/Neutral/300: #9CA5BE
- Color Tokens/text-primary: alias(Color/Primary/Blue 10)
- Color Tokens/text-label: alias(Color/Neutral/600)
- Color Tokens/text-large text: alias(Color/Neutral/400)
- Color Tokens/text-primary button: alias(Color/Background/Card)
- Color Tokens/text-secondary button: alias(Color/Primary/Blue 50)
- Color Tokens/surface-primary: alias(Color/Background/Page)
- Color Tokens/surface-secondary: alias(Color/Background/Card)
- Primitives/Color/Neutral/400: #68769C
- Primitives/Color/Neutral/500: #535F7F
- Primitives/Color/Neutral/600: #47506A
- Primitives/Color/Neutral/700: #202430
- Primitives/Color/Semantic BG/Grey: #F5F5F5
- Primitives/Color/Semantic BG/Blue: #E9F2FF
- Primitives/Color/Semantic BG/Purple: #F5EEFB
- Primitives/Color/Semantic BG/Green: #DCFFF1
- Primitives/Color/Semantic BG/Orange: #FFF3EB
- Primitives/Color/Semantic BG/Red: #FFECEB
- Primitives/Color/Semantic Element/Green: #008516
- Primitives/Color/Semantic Element/Orange: #E36A0D
- Primitives/Color/Semantic Element/Red: #D60000
- Primitives/Color/Semantic Element/Blue: #0055D4
- Primitives/Color/Semantic Element/Grey: #9CA5BE
- Primitives/Color/Semantic Text/Green: #008516

## Typography Tokens
- Header/Header 1: Poppins Bold, 48px / 54px, tracking 0%
- Header/Header 2: Poppins Bold, 40px / 45px, tracking 0%
- Header/Header 3: Poppins Bold, 36px / 40px, tracking 0%
- Header/Header 4: Poppins Bold, 32px / 36px, tracking 0%
- Header/Header 5: Poppins Bold, 24px / 30px, tracking 0%
- Sub Header/Sub Header 1: Poppins SemiBold, 20px / 24px, tracking 0%
- Sub Header/Sub Header 2: Poppins SemiBold, 16px / 20px, tracking 0%
- Sub Header/Sub Header 3: Poppins SemiBold, 14px / 20px, tracking 0%
- Body/Body Large: Poppins Regular, 20px / 30px, tracking 0%
- Body/Body Medium: Poppins Regular, 16px / 24px, tracking 0%
- Body/Body Small: Poppins Regular, 14px / 20px, tracking 0%
- Button/Button Large: Poppins SemiBold, 20px / 30px, tracking 0%
- Button/Button Medium: Poppins SemiBold, 16px / 24px, tracking 0%
- Button/Button Compact: Poppins SemiBold, 14px / 20px, tracking 0%
- Tags/Tag 1: Poppins Regular, 12px / 18px, tracking 0px
- Tags/Tag 2: Poppins Regular, 10px / 15px, tracking 0px
- Links/Link 1: Poppins Italic, 14px / 20px, tracking 0px
- Links/Link 2: Poppins Italic, 12px / 18px, tracking 0px

## Spacing Tokens
- Spacing/space-0: 0
- Spacing/space-1: 2
- Spacing/space-2⭐: 4
- Spacing/space-3⭐: 8
- Spacing/space-5⭐: 16
- Spacing/space-7: 24
- Spacing/space-8: 32
- Spacing/space-9: 40
- Spacing/space-10: 48
- Spacing/space-11: 64
- Spacing/space-12: 80
- Spacing/space-13: 120
- Spacing/space-4: 12
- Spacing/space-6⭐: 20

## Radius Tokens
- Radius/XXS: 2
- Radius/XS: 4
- Radius/S: 8
- Radius/M: 12
- Radius/L: 20
- Radius/XL: 28
- Radius/FULL: 999

## Motion Tokens
- Primitives/Font/Size/10: 10
- Primitives/Font/Size/12: 12
- Primitives/Font/Size/14: 14
- Primitives/Font/Size/16: 16
- Primitives/Font/Size/20: 20
- Primitives/Font/Size/24: 24
- Primitives/Font/Size/32: 32
- Primitives/Font/Size/36: 36
- Primitives/Font/Size/40: 40
- Primitives/Font/Size/48: 48
- Primitives/Font/Line Height/2xs: 15
- Primitives/Font/Line Height/xs: 18
- Primitives/Font/Line Height/s: 20
- Primitives/Font/Line Height/sm: 24
- Primitives/Font/Line Height/m: 30
- Primitives/Font/Line Height/l: 36
- Primitives/Font/Line Height/xl: 40
- Primitives/Font/Line Height/2xl: 45
- Primitives/Font/Line Height/3xl: 54
- Typography Tokens/Titles/Header 1/Size: alias(Font/Size/48)
- Primitives/Font/Line Spacing/1%: 1

## Effect Styles
- Highlighted/Highlighted 1: drop_shadow 8px offset 2 4 #8528F814
- Highlighted/Highlighted 2: drop_shadow 10px offset 2 4 #8528F829
- Highlighted/Highlighted 3: drop_shadow 12px offset 2 4 #8528F83D
- Highlighted/Highlighted 4: drop_shadow 14px offset 2 4 #8528F866
- Regular/Regular 1: drop_shadow 8px offset 2 4 #68769C14
- Regular/Regular 2: drop_shadow 10px offset 0 4 #68769C29
- Regular/Regular 3: drop_shadow 12px offset 2 4 #68769C3D
- Regular/Regular 4: drop_shadow 14px offset 2 4 #68769C66

## Grid Styles
- XL-16: columns count 16, section auto, gutter 16px, align stretch
- L-12: columns count 12, section auto, gutter 16px, align stretch
- Phone Compact: columns count 4, section auto, gutter 8px, align stretch
- Icon Grid: columns count 2, section 1px, gutter 16px, align center + rows count 2, section 1px, gutter 16px, align center + ...

## Logo Variants
Source page: Logo

- AsInt Edge Logo
- AsInt Corporate Logo
- AI Logo
- Type=Dark
- Type=Black
- Type=White
- Type=Light
- Type=Default
- Final Edge Mobile Logo
- Type=Default Dark
- Type=Default Light
- Type=Icon Dark
- Type=Icon Light
- Type=AI Default
- Type=AI Insights

## Icon Inventory
Source page: Icons — 40 icons found.
Use these names, not guessed/placeholder icons, in any component build.

- Star
- Flag
- chevron_up
- chevron_Left
- check
- cancel
- search
- asterisk
- Error
- info
- mic
- check_circle
- close
- warning
- home
- Link
- Image
- Image-upload
- Video-upload
- Video
- Camera
- chevron_right
- calendar_month
- visibility_off
- visibility_on
- Flag-US
- Notification
- Sort Asc
- Sort
- Sort Desc
- edit
- delete
- filter_list
- add_2
- more_horizontal
- view_column
- content_copy
- download_2
- upload_2
- drag_horizontal

## Illustration Assets
Source page: Illustrations

- list 1
- Favourite
- magnifying-glass 2
- History
- Preview Illustration
- Digital wallchart
- Asset Inspection

## Component Catalog
46 component pages found, each with its own Figma page
(confirmed by `source_page` in the original per-page exports — this file
was extracted once per page, not once per file, so this list reflects
53 distinct pages in the Figma file, not 53 duplicate exports of one page).

**Note on node types (corrected):** this catalog is a naming/variant
inventory from the per-page exports. A later check of the published
library confirmed at least Button, Radio button, Segmented Button,
Checkboxes, Cell, Columns and Tree Table Columns are real
`component_set` assets, so the earlier worry that these were just
similarly-named frames was unfounded for those. Other components in this
list have not been individually checked. For Code Connect, map the
*component set* node, not a single variant or a section (see
known-issues.md in the skill).

### Accordion
17 variant/element entries.

- Accordion
- State=Regular, Allignment=Right, Expanded=No
- State=Hover, Allignment=Right, Expanded=No
- State=Focus, Allignment=Right, Expanded=No
- State=Disabled, Allignment=Right, Expanded=No
- State=Regular, Allignment=Left, Expanded=No
- State=Hover, Allignment=Left, Expanded=No
- State=Focus, Allignment=Left, Expanded=No
- State=Disabled, Allignment=Left, Expanded=No
- State=Regular, Allignment=Right, Expanded=Yes
- State=Regular, Allignment=Left, Expanded=Yes
- State=Hover, Allignment=Right, Expanded=Yes
- State=Hover, Allignment=Left, Expanded=Yes
- State=Focus, Allignment=Right, Expanded=Yes
- State=Focus, Allignment=Left, Expanded=Yes
- State=Disabled, Allignment=Right, Expanded=Yes
- State=Disabled, Allignment=Left, Expanded=Yes

### Active Uploads Overlay
14 variant/element entries.

- States
- Active Uploads Overlay
- State=In Progress
- State=Success
- State=Error
- State=Warning
- State=In Progress, Type=Single
- State=In Progress, Type=Multi
- State=Success, Type=Multi
- State=Success, Type=Single
- State=Error, Type=Single
- State=Warning, Type=Single
- State=Warning, Type=Multi
- State=Error, Type=Multi

### App Tile
8 variant/element entries.

- App Tile
- State=Default, Device=Web
- State=Focus, Device=Web
- State=Hover, Device=Web
- State=Default, Device=Mobile
- State=Default, Device=Premium Tile
- State=Disabled, Device=Mobile
- State=Disabled, Device=Web

### Bar Chart
36 variant/element entries.

- Chart
- Elements
- Device=Web, Series stacked=1, Orientation=Vertical
- Device=Mobile, Series stacked=1, Orientation=Vertical
- Device=Mobile, Series stacked=1, Orientation=Horizontal
- Device=Mobile, Series stacked=2, Orientation=Horizontal
- Device=Mobile, Series stacked=3, Orientation=Horizontal
- Device=Mobile, Series stacked=2, Orientation=Vertical
- Device=Mobile, Series stacked=3, Orientation=Vertical
- Device=Web, Series stacked=1, Orientation=Horizontal
- Device=Web, Series stacked=2, Orientation=Horizontal
- Device=Web, Series stacked=3, Orientation=Horizontal
- Device=Web, Series stacked=2, Orientation=Vertical
- Device=Web, Series stacked=3, Orientation=Vertical
- Label=True
- Label=False
- Series stacked=1, Orientation=Vertical
- Series stacked=1, Orientation=Horizontal
- Series stacked=2, Orientation=Vertical
- Series stacked=2, Orientation=Horizontal
- Series stacked=3, Orientation=Vertical
- Series stacked=3, Orientation=Horizontal
- Series=1, Orientation=Vertical, Device=Web
- Series=1, Orientation=Vertical, Device=Mobile
- Series=1, Orientation=Horizontal, Device=Mobile
- Series=1, Orientation=Horizontal, Device=Web
- Series=2, Orientation=Vertical, Device=Web
- Series=2, Orientation=Vertical, Device=Mobile
- Series=2, Orientation=Horizontal, Device=Mobile
- Series=2, Orientation=Horizontal, Device=Web
- Series=3, Orientation=Vertical, Device=Web
- Series=3, Orientation=Vertical, Device=Mobile
- Series=3, Orientation=Horizontal, Device=Mobile
- Series=3, Orientation=Horizontal, Device=Web
- Device=Web
- Device=Mobile

### Breadcrumbs
15 variant/element entries.

- Breadcrumb Items
- Type=Current Page, State=Default, Open=No
- Type=Current Page, State=Active, Open=No
- Type=Current Page, State=Hover, Open=No
- Type=Current Page, State=Focus, Open=No
- Type=Link, State=Default, Open=No
- Type=Link, State=Active, Open=No
- Type=Link, State=Hover, Open=No
- Type=Link, State=Focus, Open=No
- Type=Overflow, State=Default, Open=No
- Type=Overflow, State=Active, Open=No
- Type=Overflow, State=Active, Open=Yes
- Type=Overflow, State=Hover, Open=No
- Type=Overflow, State=Focus, Open=No
- Breadcrumb

### Button
40 variant/element entries.

- Button
- Size=Large, State=Enabled, Type=Primary
- Size=Large, State=Enabled, Type=Secondary
- Size=Large, State=Enabled, Type=Tertiary
- Size=Medium, State=Enabled, Type=Secondary
- Size=Medium, State=Enabled, Type=Tertiary
- Size=Small, State=Enabled, Type=Secondary
- Size=Small, State=Enabled, Type=Tertiary
- Size=Large, State=Hover, Type=Secondary
- Size=Large, State=Hover, Type=Tertiary
- Size=Medium, State=Hover, Type=Secondary
- Size=Medium, State=Hover, Type=Tertiary
- Size=Small, State=Hover, Type=Secondary
- Size=Small, State=Hover, Type=Tertiary
- Size=Large, State=Pressed, Type=Secondary
- Size=Large, State=Pressed, Type=Tertiary
- Size=Medium, State=Pressed, Type=Secondary
- Size=Medium, State=Pressed, Type=Tertiary
- Size=Small, State=Pressed, Type=Secondary
- Size=Small, State=Pressed, Type=Tertiary
- Size=Large, State=Disabled, Type=Secondary
- Size=Large, State=Focused, Type=Secondary
- Size=Large, State=Disabled, Type=Tertiary
- Size=Large, State=Focused, Type=Tertiary
- Size=Medium, State=Disabled, Type=Secondary
- Size=Medium, State=Focused, Type=Secondary
- Size=Medium, State=Disabled, Type=Tertiary
- Size=Medium, State=Focused, Type=Tertiary
- Size=Small, State=Disabled, Type=Secondary
- Size=Small, State=Focused, Type=Secondary
- Size=Small, State=Disabled, Type=Tertiary
- Size=Small, State=Focused, Type=Tertiary
- Size=Medium, State=Enabled, Type=Primary
- Size=Small, State=Enabled, Type=Primary
- Size=Small, State=Hover, Type=Primary
- Size=Small, State=Pressed, Type=Primary
- Size=Small, State=Disabled, Type=Primary
- Size=Small, State=Focused, Type=Primary
- Size=Medium, State=Hover, Type=Primary
- Size=Medium, State=Pressed, Type=Primary

### Calendar
21 variant/element entries.

- Date States
- Month Selection
- Calendar
- Year|Month States
- States=Default
- States=Hover
- States=Selected
- States=Disabled
- States=Today
- States=Focused
- States=Range Selected
- Selected=False
- Selected=True
- View=Month View
- View=Year View
- View=Date View
- View=Date Range
- State=Default
- State=Hover
- State=Focused
- State=Selected

### Cards
7 variant/element entries.

- Cards
- Size=Small
- Size=Large
- Size=Mobile: Label&Value
- Size=Mobile: Label&Value Horizontal
- Size=Mobile Document
- Size=Mobile: Tiles

### Check Box and Radio Button
21 variant/element entries.

- Radio button
- Checkboxes
- State=Default, Selected=False
- State=Disable, Selected=False
- State=Default, Selected=True
- State=Disable, Selected=True
- Selection=Unchecked, Semantic State=None, Enable=True
- Selection=Unchecked, Semantic State=None, Enable=False
- Selection=Unchecked, Semantic State=Error, Enable=True
- Selection=Unchecked, Semantic State=Warning, Enable=True
- Selection=Unchecked, Semantic State=Success, Enable=True
- Selection=Checked, Semantic State=None, Enable=True
- Selection=Checked, Semantic State=None, Enable=False
- Selection=Checked, Semantic State=Error, Enable=True
- Selection=Checked, Semantic State=Warning, Enable=True
- Selection=Checked, Semantic State=Success, Enable=True
- Selection=Indeterminate, Semantic State=None, Enable=True
- Selection=Indeterminate, Semantic State=None, Enable=False
- Selection=Indeterminate, Semantic State=Error, Enable=True
- Selection=Indeterminate, Semantic State=Warning, Enable=True
- Selection=Indeterminate, Semantic State=Success, Enable=True

### Chips
21 variant/element entries.

- Chip
- State=Default, Icon right=False, Icon left=False
- State=Hover, Icon right=False, Icon left=False
- State=Focused, Icon right=False, Icon left=False
- State=Disabled, Icon right=False, Icon left=False
- State=Default, Icon right=True, Icon left=False
- State=Hover, Icon right=True, Icon left=False
- State=Focused, Icon right=True, Icon left=False
- State=Disabled, Icon right=True, Icon left=False
- State=Default, Icon right=False, Icon left=True
- State=Hover, Icon right=False, Icon left=True
- State=Focused, Icon right=False, Icon left=True
- State=Disabled, Icon right=False, Icon left=True
- State=Default, Icon right=True, Icon left=True
- State=Hover, Icon right=True, Icon left=True
- State=Focused, Icon right=True, Icon left=True
- State=Disabled, Icon right=True, Icon left=True
- State=Active, Icon right=False, Icon left=False
- State=Active, Icon right=True, Icon left=False
- State=Active, Icon right=False, Icon left=True
- State=Active, Icon right=True, Icon left=True

### Color Picker
1 variant/element entries.

- Color Picker

### Count Analytics Data
1 variant/element entries.

- Count Anayltics Data

### Donut Chart
30 variant/element entries.

- Chart
- Elements
- Legend
- Layout=01, State=Default, Device=Web
- Layout=01, State=Default, Device=Mobile
- Layout=01, State=Selected, Device=Web
- Layout=01, State=Selected, Device=Mobile
- Layout=02, State=Default, Device=Web
- Layout=02, State=Default, Device=Mobile
- Layout=02, State=Selected, Device=Web
- Layout=02, State=Selected, Device=Mobile
- Layout=03, State=Default, Device=Web
- Layout=03, State=Default, Device=Mobile
- Layout=03, State=Selected, Device=Web
- Layout=03, State=Selected, Device=Mobile
- Layout=04, State=Default, Device=Web
- Layout=04, State=Default, Device=Mobile
- Layout=04, State=Selected, Device=Web
- Layout=04, State=Selected, Device=Mobile
- Layout=05, State=Default, Device=Web
- Layout=05, State=Default, Device=Mobile
- Layout=05, State=Selected, Device=Web
- Layout=05, State=Selected, Device=Mobile
- State=Default, Device=Web
- State=Default, Device=Mobile
- State=Selected, Device=Web
- State=Selected, Device=Mobile
- Device=Web
- Device=Mobile
- Device=Website

### Dropdown
6 variant/element entries.

- Dropdown
- Selection=Single
- Selection=Icons
- Selection=Image
- Selection=Single Master
- Selection=Multiselect

### File Upload Dialogue
5 variant/element entries.

- Popover arrow
- Property 1=Empty State
- Property 1=In Process
- Property 1=Error
- Property 1=Success

### Floating Footer
1 variant/element entries.

- Floating Footer

### Header
3 variant/element entries.

- Header
- Type=Default
- Type=Edit Enabled

### Header Info Cards
11 variant/element entries.

- Header Info Card
- Colors=Color 1, Type=Text
- Colors=Color 1, Type=Tag
- Colors=Color 2, Type=Text
- Colors=Color 2, Type=Tag
- Colors=Color 3, Type=Text
- Colors=Color 3, Type=Tag
- Colors=Color 4, Type=Text
- Colors=Color 4, Type=Tag
- Colors=Color 5, Type=Text
- Colors=Color 5, Type=Tag

### HeatMap
40 variant/element entries.

- Heat Map
- HeatMap Single Large
- Heat Map Large
- Size=Large
- Size=Small
- State=Default, Semantic=Custom Light, Size=Large
- State=Default, Semantic=Custom Light, Size=Small
- State=Default, Semantic=Custom Light, Size=Extra Small
- State=Default, Semantic=Red, Size=Large
- State=Default, Semantic=Red, Size=Small
- State=Default, Semantic=Red, Size=Extra Small
- State=Default, Semantic=Orange, Size=Large
- State=Default, Semantic=Orange, Size=Small
- State=Default, Semantic=Orange, Size=Extra Small
- State=Default, Semantic=Yellow, Size=Large
- State=Default, Semantic=Yellow, Size=Small
- State=Default, Semantic=Yellow, Size=Extra Small
- State=Default, Semantic=Green, Size=Large
- State=Default, Semantic=Green, Size=Small
- State=Default, Semantic=Green, Size=Extra Small
- State=Default, Semantic=None, Size=Large
- State=Default, Semantic=None, Size=Small
- State=Default, Semantic=Custom Dark, Size=Large
- State=Default, Semantic=Custom Dark, Size=Small
- State=Default, Semantic=Custom Dark, Size=Extra Small
- State=Selected, Semantic=Custom Light, Size=Large
- State=Selected, Semantic=Custom Light, Size=Small
- State=Selected, Semantic=Custom Light, Size=Extra Small
- State=Selected, Semantic=Red, Size=Large
- State=Selected, Semantic=Red, Size=Small
- State=Selected, Semantic=Red, Size=Extra Small
- State=Selected, Semantic=Orange, Size=Large
- State=Selected, Semantic=Orange, Size=Small
- State=Selected, Semantic=Orange, Size=Extra Small
- State=Selected, Semantic=Yellow, Size=Large
- State=Selected, Semantic=Yellow, Size=Small
- State=Selected, Semantic=Yellow, Size=Extra Small
- State=Selected, Semantic=Green, Size=Large
- State=Selected, Semantic=Green, Size=Small
- State=Selected, Semantic=Green, Size=Extra Small

### Input Fields
40 variant/element entries.

- Multi Input
- Text Input
- Date Input
- Date Input(Expanded)
- Header
- Form Group
- Dialogue Input
- Wizard
- Connector
- Text Input with Indicator
- Input Color Indicator
- State=Default, Semantic State=None, Size=Large
- State=Default, Semantic State=None, Size=Small
- State=Default, Semantic State=Error, Size=Large
- State=Default, Semantic State=Error, Size=Small
- State=Default, Semantic State=Success, Size=Large
- State=Default, Semantic State=Success, Size=Small
- State=Default, Semantic State=Warning, Size=Large
- State=Default, Semantic State=Warning, Size=Small
- State=Default, Semantic State=Information, Size=Large
- State=Default, Semantic State=Information, Size=Small
- State=Disabled, Semantic State=None, Size=Large
- State=Disabled, Semantic State=None, Size=Small
- State=Focus, Semantic State=None, Size=Large
- State=Focus, Semantic State=None, Size=Small
- State=Hover, Semantic State=None, Size=Large
- State=Hover, Semantic State=None, Size=Small
- State=Active, Semantic State=None, Size=Large
- State=Active, Semantic State=None, Size=Small
- State=Active, Semantic State=Error, Size=Large
- State=Active, Semantic State=Error, Size=Small
- State=Active, Semantic State=Warning, Size=Large
- State=Active, Semantic State=Warning, Size=Small
- State=Active, Semantic State=Success, Size=Large
- State=Active, Semantic State=Success, Size=Small
- State=Active, Semantic State=Information, Size=Large
- State=Active, Semantic State=Information, Size=Small
- State=Regular, Semantic State=None, Size=Large
- State=Regular, Semantic State=None, Size=Small
- State=Read Only, Semantic State=None, Size=Large

### Line Chart
6 variant/element entries.

- Chart
- Elements
- Tooltip
- Device=Mobile
- Device=Web
- Device=Device2

### List Item
40 variant/element entries.

- List Item
- Type=Single Master, Selected=Off, State=Default, Subtitle=Off, Image=Off, Icon=Off, Info Text=Off
- Type=Single Master, Selected=Off, State=Default, Subtitle=On, Image=Off, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Default, Subtitle=On, Image=Off, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Hover, Subtitle=On, Image=Off, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Focus, Subtitle=On, Image=Off, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Disabled, Subtitle=On, Image=Off, Icon=Off, Info Text=Off
- Type=Single Master, Selected=Off, State=Default, Subtitle=On, Image=Off, Icon=Off, Info Text=On
- Type=Single Master, Selected=Off, State=Default, Subtitle=Off, Image=Off, Icon=Off, Info Text=On
- Type=Single Master, Selected=On, State=Default, Subtitle=On, Image=Off, Icon=Off, Info Text=On
- Type=Single Master, Selected=On, State=Hover, Subtitle=On, Image=Off, Icon=Off, Info Text=On
- Type=Single Master, Selected=On, State=Focus, Subtitle=On, Image=Off, Icon=Off, Info Text=On
- Type=Single Master, Selected=On, State=Disabled, Subtitle=On, Image=Off, Icon=Off, Info Text=On
- Type=Single Master, Selected=On, State=Default, Subtitle=Off, Image=Off, Icon=Off, Info Text=On
- Type=Single Master, Selected=On, State=Hover, Subtitle=Off, Image=Off, Icon=Off, Info Text=On
- Type=Single Master, Selected=On, State=Focus, Subtitle=Off, Image=Off, Icon=Off, Info Text=On
- Type=Single Master, Selected=On, State=Disabled, Subtitle=Off, Image=Off, Icon=Off, Info Text=On
- Type=Single Master, Selected=Off, State=Default, Subtitle=On, Image=Off, Icon=On, Info Text=Off
- Type=Single Master, Selected=Off, State=Default, Subtitle=Off, Image=Off, Icon=On, Info Text=Off
- Type=Single Master, Selected=On, State=Default, Subtitle=On, Image=Off, Icon=On, Info Text=Off
- Type=Single Master, Selected=On, State=Hover, Subtitle=On, Image=Off, Icon=On, Info Text=Off
- Type=Single Master, Selected=On, State=Focus, Subtitle=On, Image=Off, Icon=On, Info Text=Off
- Type=Single Master, Selected=On, State=Disabled, Subtitle=On, Image=Off, Icon=On, Info Text=Off
- Type=Single Master, Selected=On, State=Default, Subtitle=Off, Image=Off, Icon=On, Info Text=Off
- Type=Single Master, Selected=On, State=Hover, Subtitle=Off, Image=Off, Icon=On, Info Text=Off
- Type=Single Master, Selected=On, State=Focus, Subtitle=Off, Image=Off, Icon=On, Info Text=Off
- Type=Single Master, Selected=On, State=Disabled, Subtitle=Off, Image=Off, Icon=On, Info Text=Off
- Type=Single Master, Selected=Off, State=Default, Subtitle=On, Image=On, Icon=Off, Info Text=Off
- Type=Single Master, Selected=Off, State=Default, Subtitle=Off, Image=On, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Default, Subtitle=On, Image=On, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Hover, Subtitle=On, Image=On, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Focus, Subtitle=On, Image=On, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Disabled, Subtitle=On, Image=On, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Default, Subtitle=Off, Image=On, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Hover, Subtitle=Off, Image=On, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Focus, Subtitle=Off, Image=On, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Disabled, Subtitle=Off, Image=On, Icon=Off, Info Text=Off
- Type=Single Master, Selected=On, State=Default, Subtitle=Off, Image=Off, Icon=Off, Info Text=Off
- Type=Single Master, Selected=Off, State=Focus, Subtitle=Off, Image=Off, Icon=Off, Info Text=Off
- Type=Single Master, Selected=Off, State=Hover, Subtitle=Off, Image=Off, Icon=Off, Info Text=Off

### Loading
5 variant/element entries.

- Skeleton Component
- Progress Bar Page Loader
- Property 1=Default
- Progress=0
- 100

### Matrix
36 variant/element entries.

- Matrix Single Square
- Matrix
- State=Selected, Semantic Color=Red, Size=Large
- State=Selected, Semantic Color=Red, Size=Small
- State=Selected, Semantic Color=Orange, Size=Large
- State=Selected, Semantic Color=Orange, Size=Small
- State=Selected, Semantic Color=Yellow, Size=Large
- State=Selected, Semantic Color=Yellow, Size=Small
- State=Selected, Semantic Color=Green, Size=Large
- State=Selected, Semantic Color=Green, Size=Small
- State=Selected, Semantic Color=Grey, Size=Large
- State=Selected, Semantic Color=Custom Light, Size=Large
- State=Selected, Semantic Color=None, Size=Large
- State=Selected, Semantic Color=Custom Dark, Size=Large
- State=Selected, Semantic Color=Grey, Size=Small
- State=Selected, Semantic Color=Custom Light, Size=Small
- State=Selected, Semantic Color=None, Size=Small
- State=Selected, Semantic Color=Custom Dark, Size=Small
- State=Default, Semantic Color=Red, Size=Large
- State=Default, Semantic Color=Red, Size=Small
- State=Default, Semantic Color=Orange, Size=Large
- State=Default, Semantic Color=Orange, Size=Small
- State=Default, Semantic Color=Yellow, Size=Large
- State=Default, Semantic Color=Yellow, Size=Small
- State=Default, Semantic Color=Green, Size=Large
- State=Default, Semantic Color=Green, Size=Small
- State=Default, Semantic Color=Grey, Size=Large
- State=Default, Semantic Color=Custom Light, Size=Large
- State=Default, Semantic Color=None, Size=Large
- State=Default, Semantic Color=Custom Dark, Size=Large
- State=Default, Semantic Color=Grey, Size=Small
- State=Default, Semantic Color=Custom Light, Size=Small
- State=Default, Semantic Color=None, Size=Small
- State=Default, Semantic Color=Custom Dark, Size=Small
- Size=Large
- Size=Small

### Message Dialog
6 variant/element entries.

- Message Dilogue
- Type=Sucess
- Type=Error
- Type=Warning
- Type=Information
- Type=Neutral

### Pie chart
16 variant/element entries.

- Pie Chart
- Segments=01, State=Default
- Segments=01, State=Hover
- Segments=01, State=Selected
- Segments=02, State=Default
- Segments=02, State=Hover
- Segments=02, State=Selected
- Segments=03, State=Default
- Segments=03, State=Hover
- Segments=03, State=Selected
- Segments=04, State=Default
- Segments=04, State=Hover
- Segments=04, State=Selected
- Segments=05, State=Default
- Segments=05, State=Hover
- Segments=05, State=Selected

### Popover
16 variant/element entries.

- Popover arrow
- Color Indicator Popover
- Arrow=Left Top
- Arrow=Left Center
- Arrow=Left Bottom
- Arrow=Right Center
- Arrow=Right Bottom
- Arrow=Top Center
- Arrow=Top Right
- Arrow=Bottom Center
- Arrow=Bottom Right
- Arrow=Right Top
- Arrow=Top Left
- Arrow=Bottom Left
- Type=Multi
- Type=Single

### Process Indicator
40 variant/element entries.

- Process Indicator
- Process Indicator Meter
- Type=Neutral, Progress=0
- Type=Success, Progress=0
- Type=Error, Progress=0
- Type=Information, Progress=0
- Type=Warning, Progress=0
- Type=Neutral, Progress=10
- Type=Success, Progress=10
- Type=Error, Progress=10
- Type=Information, Progress=10
- Type=Warning, Progress=10
- Type=Neutral, Progress=50
- Type=Success, Progress=50
- Type=Error, Progress=50
- Type=Information, Progress=50
- Type=Warning, Progress=50
- Type=Neutral, Progress=80
- Type=Success, Progress=80
- Type=Error, Progress=80
- Type=Information, Progress=80
- Type=Warning, Progress=80
- Type=Neutral, Progress=100
- Type=Success, Progress=100
- Type=Error, Progress=100
- Type=Information, Progress=100
- Type=Warning, Progress=100
- Progress=10%, Size=Large
- Progress=0%, Size=Large
- Progress=10%, Size=Small
- Progress=0%, Size=Small
- Progress=15%, Size=Large
- Progress=15%, Size=Small
- Progress=20%, Size=Large
- Progress=20%, Size=Small
- Progress=25%, Size=Large
- Progress=25%, Size=Small
- Progress=30%, Size=Large
- Progress=30%, Size=Small
- Progress=35%, Size=Large

### Profile Thumbnail
38 variant/element entries.

- Profile Thumbnail
- Thumbnail
- Size=Large, Color=Default
- Size=Small, Color=Default
- Size=Medium, Color=Default
- Size=Large, Color=Accent 1
- Size=Small, Color=Accent 1
- Size=Medium, Color=Accent 1
- Size=Large, Color=Accent 2
- Size=Small, Color=Accent 2
- Size=Medium, Color=Accent 2
- Size=Large, Color=Accent 3
- Size=Large, Color=Accent 4
- Size=Small, Color=Accent 3
- Size=Small, Color=Accent 4
- Size=Medium, Color=Accent 3
- Size=Medium, Color=Accent 4
- Size=Large, Color=Image
- Size=Small, Color=Image
- Size=Medium, Color=Image
- Type=Image, Accent color=Image, Size=Large
- Type=Image, Accent color=Image, Size=Medium
- Type=Image, Accent color=Image, Size=Small
- Type=Icon, Accent color=Accent 1, Size=Large
- Type=Icon, Accent color=Accent 1, Size=Medium
- Type=Icon, Accent color=Accent 1, Size=Small
- Type=Icon, Accent color=Accent 2, Size=Large
- Type=Icon, Accent color=Accent 2, Size=Medium
- Type=Icon, Accent color=Accent 2, Size=Small
- Type=Icon, Accent color=Accent 3, Size=Large
- Type=Icon, Accent color=Accent 3, Size=Medium
- Type=Icon, Accent color=Accent 3, Size=Small
- Type=Icon, Accent color=Accent 4, Size=Large
- Type=Icon, Accent color=Accent 4, Size=Medium
- Type=Icon, Accent color=Accent 4, Size=Small
- Type=Icon, Accent color=Accent 5, Size=Large
- Type=Icon, Accent color=Accent 5, Size=Medium
- Type=Icon, Accent color=Accent 5, Size=Small

### Scatter plot
4 variant/element entries.

- Scatter Chart 2
- Scatter Chart 1
- Device=Web
- Device=Mobile

### Scrollbar
4 variant/element entries.

- Scroll bar
- Type=Vertical
- Type=Horizontal
- Type=Horizontal bar

### Search Bar
11 variant/element entries.

- Search Bar
- State=Default, Size=Large
- State=Default, Size=Small
- State=Hover, Size=Large
- State=Focused, Size=Large
- State=Disabled, Size=Large
- State=Hover, Size=Small
- State=Focused, Size=Small
- State=Disabled, Size=Small
- State=Active, Size=Large
- State=Active, Size=Small

### Segmented Button
31 variant/element entries.

- Segmented Button pieces
- Segmented Button
- Selected=No, Type=Left, State=Default, Icon=Yes
- Selected=No, Type=Left, State=Default, Icon=No
- Selected=No, Type=Right, State=Default, Icon=Yes
- Selected=No, Type=Right, State=Default, Icon=No
- Selected=No, Type=Left, State=Hover, Icon=Yes
- Selected=No, Type=Left, State=Focused, Icon=Yes
- Selected=No, Type=Left, State=Hover, Icon=No
- Selected=No, Type=Left, State=Focused, Icon=No
- Selected=No, Type=Right, State=Hover, Icon=Yes
- Selected=No, Type=Right, State=Focused, Icon=Yes
- Selected=No, Type=Right, State=Hover, Icon=No
- Selected=No, Type=Right, State=Focused, Icon=No
- Selected=No, Type=Middle, State=Default, Icon=Yes
- Selected=No, Type=Middle, State=Default, Icon=No
- Selected=No, Type=Middle, State=Hover, Icon=Yes
- Selected=No, Type=Middle, State=Focused, Icon=Yes
- Selected=No, Type=Middle, State=Hover, Icon=No
- Selected=No, Type=Middle, State=Focused, Icon=No
- Selected=Yes, Type=Middle, State=Default, Icon=Yes
- Selected=Yes, Type=Middle, State=Default, Icon=No
- Selected=Yes, Type=Left, State=Default, Icon=Yes
- Selected=Yes, Type=Left, State=Default, Icon=No
- Selected=Yes, Type=Right, State=Default, Icon=Yes
- Selected=Yes, Type=Right, State=Default, Icon=No
- Section=3, Selection=Middle
- Section=3, Selection=Left
- Section=3, Selection=Right
- Section=2, Selection=Left
- Section=2, Selection=Right

### Semantic Message Strips
21 variant/element entries.

- Semantic Message Strips
- Type=Info, Size=Large, Layout=Multi-lines
- Type=Info, Size=Small, Layout=Multi-lines
- Type=Info, Size=Small, Layout=Single line
- Type=Info, Size=Large, Layout=Single line
- Type=Warning, Size=Large, Layout=Multi-lines
- Type=Warning, Size=Small, Layout=Multi-lines
- Type=Warning, Size=Small, Layout=Single line
- Type=Warning, Size=Large, Layout=Single line
- Type=Error, Size=Large, Layout=Multi-lines
- Type=Error, Size=Small, Layout=Multi-lines
- Type=Error, Size=Small, Layout=Single line
- Type=Error, Size=Large, Layout=Single line
- Type=Success, Size=Large, Layout=Multi-lines
- Type=Neutral, Size=Large, Layout=Multi-lines
- Type=Success, Size=Small, Layout=Multi-lines
- Type=Neutral, Size=Small, Layout=Multi-lines
- Type=Success, Size=Small, Layout=Single line
- Type=Neutral, Size=Small, Layout=Single line
- Type=Success, Size=Large, Layout=Single line
- Type=Neutral, Size=Large, Layout=Single line

### Shell bar
4 variant/element entries.

- Shell Bar
- Size=Large
- Size=Medium
- Size=Small

### Side Navigation Panel
14 variant/element entries.

- Navbar Row
- Side Navigation Panel
- State=Default
- State=Focused
- State=Input
- State=Header
- State=Workspace Header
- State=Selected
- State=State8
- State=Hover
- State=Expanded
- State=App Extended
- State=Project Extended
- State=Collapsed

### Slider
40 variant/element entries.

- Handle
- Slider
- State=Default
- State=Hover
- State=Focused
- State=Pressed
- State=Disabled
- Progress=Not Started, Type=Continuous, Disabled=False, Stop Count=2
- Progress=Not Started, Type=Discrete, Disabled=False, Stop Count=2
- Progress=Not Started, Type=Continuous, Disabled=True, Stop Count=2
- Progress=Not Started, Type=Discrete, Disabled=True, Stop Count=2
- Progress=In Progress, Type=Continuous, Disabled=False, Stop Count=4
- Progress=In Progress, Type=Continuous, Disabled=False, Stop Count=5
- Progress=In Progress, Type=Continuous, Disabled=False, Stop Count=6
- Progress=In Progress, Type=Continuous, Disabled=False, Stop Count=7
- Progress=In Progress, Type=Continuous, Disabled=False, Stop Count=8
- Progress=In Progress, Type=Continuous, Disabled=False, Stop Count=9
- Progress=In Progress, Type=Continuous, Disabled=False, Stop Count=10
- Progress=In Progress, Type=Discrete, Disabled=False, Stop Count=4
- Progress=In Progress, Type=Discrete, Disabled=True, Stop Count=4
- Progress=In Progress, Type=Discrete, Disabled=False, Stop Count=5
- Progress=In Progress, Type=Discrete, Disabled=True, Stop Count=5
- Progress=In Progress, Type=Discrete, Disabled=False, Stop Count=6
- Progress=In Progress, Type=Discrete, Disabled=True, Stop Count=6
- Progress=In Progress, Type=Discrete, Disabled=False, Stop Count=7
- Progress=In Progress, Type=Discrete, Disabled=True, Stop Count=7
- Progress=In Progress, Type=Discrete, Disabled=False, Stop Count=8
- Progress=In Progress, Type=Discrete, Disabled=True, Stop Count=8
- Progress=In Progress, Type=Discrete, Disabled=False, Stop Count=9
- Progress=In Progress, Type=Discrete, Disabled=True, Stop Count=9
- Progress=In Progress, Type=Discrete, Disabled=False, Stop Count=10
- Progress=In Progress, Type=Discrete, Disabled=True, Stop Count=10
- Progress=In Progress, Type=Continuous, Disabled=True, Stop Count=4
- Progress=In Progress, Type=Continuous, Disabled=True, Stop Count=7
- Progress=In Progress, Type=Continuous, Disabled=True, Stop Count=5
- Progress=In Progress, Type=Continuous, Disabled=True, Stop Count=8
- Progress=In Progress, Type=Continuous, Disabled=True, Stop Count=6
- Progress=In Progress, Type=Continuous, Disabled=True, Stop Count=9
- Progress=In Progress, Type=Continuous, Disabled=True, Stop Count=10
- Progress=In Progress, Type=Continuous, Disabled=False, Stop Count=3

### Spider chart
8 variant/element entries.

- Spider chart Mobile
- Spider chart Web
- Layout=Default
- Layout=1
- Layout=2
- Layout=3
- Layout=4
- Layout=5

### Step Indicator
11 variant/element entries.

- Progress Steps
- Connector
- Progress Steps Master Slot
- State=Completed
- State=Active
- State=Disabled
- State=Idle
- State=Regular
- Steps=Single Progress
- Varient=Default
- Varient=Flexi

### Switch
7 variant/element entries.

- Switch
- State=Default, Active=On
- State=Hover, Active=On
- State=Disabled, Active=On
- State=Default, Active=Off
- State=Hover, Active=Off
- State=Disabled, Active=Off

### Tab
20 variant/element entries.

- Tab Items
- Tab
- State=Selected, Type=Text
- State=Regular, Type=Text
- State=Hover, Type=Text
- State=Disabled, Type=Text
- State=Focused, Type=Text
- State=Selected, Type=Text+Icon
- State=Regular, Type=Text+Icon
- State=Hover, Type=Text+Icon
- State=Disabled, Type=Text+Icon
- State=Focused, Type=Text+Icon
- State=Selected, Type=Icon
- State=Regular, Type=Icon
- State=Hover, Type=Icon
- State=Disabled, Type=Icon
- State=Focused, Type=Icon
- Type=Text
- Type=Icon
- Type=Text+Icon

### Table
40 variant/element entries.

- Cell
- Columns
- Rows
- Table Types
- Table
- Title
- Type=Text, Selected=True, State=Regular, Header Cell=False, Size=Default
- Type=Text, Selected=True, State=Regular, Header Cell=False, Size=Small
- Type=Radio Button, Selected=True, State=Regular, Header Cell=False, Size=Default
- Type=Radio Button, Selected=True, State=Regular, Header Cell=False, Size=Small
- Type=Checkbox, Selected=True, State=Regular, Header Cell=False, Size=Default
- Type=Checkbox, Selected=True, State=Regular, Header Cell=False, Size=Small
- Type=Icon, Selected=True, State=Regular, Header Cell=False, Size=Default
- Type=Icon, Selected=True, State=Regular, Header Cell=False, Size=Small
- Type=Input, Selected=True, State=Regular, Header Cell=False, Size=Default
- Type=Input, Selected=True, State=Regular, Header Cell=False, Size=Small
- Type=Date Input, Selected=True, State=Regular, Header Cell=False, Size=Default
- Type=Date Input, Selected=True, State=Regular, Header Cell=False, Size=Small
- Type=Progress Bar, Selected=True, State=Regular, Header Cell=False, Size=Default
- Type=Chip, Selected=True, State=Regular, Header Cell=False, Size=Default
- Type=Progress Bar, Selected=True, State=Regular, Header Cell=False, Size=Small
- Type=Chip, Selected=True, State=Regular, Header Cell=False, Size=Small
- Type=Button, Selected=True, State=Regular, Header Cell=False, Size=Default
- Type=Button, Selected=True, State=Regular, Header Cell=False, Size=Small
- Type=Tag, Selected=True, State=Regular, Header Cell=False, Size=Default
- Type=Tag, Selected=True, State=Regular, Header Cell=False, Size=Small
- Type=Switch, Selected=True, State=Regular, Header Cell=False, Size=Default
- Type=Switch, Selected=True, State=Regular, Header Cell=False, Size=Small
- Type=Text, Selected=False, State=Hover, Header Cell=False, Size=Default
- Type=Text, Selected=False, State=Hover, Header Cell=False, Size=Small
- Type=Radio Button, Selected=False, State=Hover, Header Cell=False, Size=Default
- Type=Radio Button, Selected=False, State=Hover, Header Cell=False, Size=Small
- Type=Checkbox, Selected=False, State=Hover, Header Cell=False, Size=Default
- Type=Checkbox, Selected=False, State=Hover, Header Cell=False, Size=Small
- Type=Icon, Selected=False, State=Hover, Header Cell=False, Size=Default
- Type=Icon, Selected=False, State=Hover, Header Cell=False, Size=Small
- Type=Input, Selected=False, State=Hover, Header Cell=False, Size=Default
- Type=Input, Selected=False, State=Hover, Header Cell=False, Size=Small
- Type=Date Input, Selected=False, State=Hover, Header Cell=False, Size=Default
- Type=Date Input, Selected=False, State=Hover, Header Cell=False, Size=Small

### Tags
31 variant/element entries.

- Tags
- Size=Small, State=Success, Selection=Unselected
- Size=Small, State=Success, Selection=Selected
- Size=Small, State=Info, Selection=Unselected
- Size=Small, State=Info, Selection=Selected
- Size=Small, State=Warning, Selection=Unselected
- Size=Small, State=Warning, Selection=Selected
- Size=Small, State=Error, Selection=Unselected
- Size=Small, State=Error, Selection=Selected
- Size=Small, State=Neutral, Selection=Unselected
- Size=Small, State=Neutral, Selection=Selected
- Size=Medium, State=Success, Selection=Unselected
- Size=Large, State=Success, Selection=Unselected
- Size=Medium, State=Success, Selection=Selected
- Size=Large, State=Success, Selection=Selected
- Size=Medium, State=Info, Selection=Unselected
- Size=Large, State=Info, Selection=Unselected
- Size=Medium, State=Info, Selection=Selected
- Size=Large, State=Info, Selection=Selected
- Size=Medium, State=Warning, Selection=Unselected
- Size=Large, State=Warning, Selection=Unselected
- Size=Medium, State=Warning, Selection=Selected
- Size=Large, State=Warning, Selection=Selected
- Size=Medium, State=Error, Selection=Unselected
- Size=Large, State=Error, Selection=Unselected
- Size=Medium, State=Error, Selection=Selected
- Size=Large, State=Error, Selection=Selected
- Size=Medium, State=Neutral, Selection=Unselected
- Size=Large, State=Neutral, Selection=Unselected
- Size=Medium, State=Neutral, Selection=Selected
- Size=Large, State=Neutral, Selection=Selected

### Text Area
19 variant/element entries.

- Text Area
- State=Default, Expanding=On, Semantic State=None
- State=Placeholder, Expanding=On, Semantic State=None
- State=Placeholder, Expanding=Off, Semantic State=None
- State=Active, Expanding=On, Semantic State=None
- State=Hover, Expanding=On, Semantic State=None
- State=Disabled, Expanding=On, Semantic State=None
- State=Disabled, Expanding=Off, Semantic State=None
- State=Default, Expanding=On, Semantic State=Error
- State=Default, Expanding=Off, Semantic State=Error
- State=Default, Expanding=On, Semantic State=Success
- State=Default, Expanding=Off, Semantic State=Success
- State=Default, Expanding=On, Semantic State=Warning
- State=Default, Expanding=Off, Semantic State=Warning
- State=Default, Expanding=On, Semantic State=Information
- State=Default, Expanding=Off, Semantic State=Information
- State=Default, Expanding=Off, Semantic State=None
- State=Active, Expanding=Off, Semantic State=None
- State=Hover, Expanding=Off, Semantic State=None

### Toolbar
4 variant/element entries.

- Toolbar
- Mode=Default
- Mode=Overflow
- Mode=Edit

### Tree Table
40 variant/element entries.

- Arrow Level
- Tree Table Rows
- Tree Table Columns
- Structure
- Tree Table
- Level=1, Leaf Node=False
- Level=2, Leaf Node=False
- Level=2, Leaf Node=True
- Level=3, Leaf Node=False
- Level=3, Leaf Node=True
- Level=4, Leaf Node=False
- Level=4, Leaf Node=True
- Level=5, Leaf Node=False
- Level=5, Leaf Node=True
- Level=6, Leaf Node=False
- Level=6, Leaf Node=True
- Level=7, Leaf Node=False
- Level=7, Leaf Node=True
- Level=8, Leaf Node=False
- Level=8, Leaf Node=True
- Level=9, Leaf Node=False
- Level=9, Leaf Node=True
- Level=10, Leaf Node=False
- Level=10, Leaf Node=True
- Type=Header, Selected=False
- Type=Regular, Selected=False
- Type=Hover, Selected=False
- Type=Regular, Selected=True
- Type=Arrow Level
- Type=Checkbox
- Type=Text
- Type=Delete
- Type=Edit
- Type=Switch
- Type=Tag
- Type=Radio Button
- Type=Date Input
- Type=Button
- Type=Input Text
- Structure=Column Based

## Pages With No Components Found
These pages exist in the file but the extractor found nothing on them
— either they're token-only pages (expected: Color, Typography,
Radius | Spacing) or components that don't exist there yet (worth
checking: Color Picker, Count Analytics Data, Floating Footer).

- Color
- Typography
- Radius | Spacing

## Editing Notes
- This is a merged reference generated from 53 separate per-page
  extractions on 2026-10-06. Re-run extraction and re-merge if the
  Figma file changes substantially rather than hand-editing this file.
- Keep token names synchronized with Figma styles and variables.
- Add usage examples and anti-patterns for critical components.