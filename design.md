# Dexwin Design System

Source: `❖ Dexwin UI – (v7.0).fig` (Figma desktop file, ~271MB). Built on the
Untitled UI Figma kit structure, rebranded with Dexwin's green brand color
and Maven Pro typeface. Values below were pulled directly from the file's
Figma variables (`❖ FOUNDATIONS` pages: Colors, Typography, Spacing/radius/
grids, Effect styles).

## Typography

Single font family across the system: **Maven Pro** (`font-family-display`
variable — used for both display and body text).

| Token | Size | Line height | Notes |
|---|---|---|---|
| `text-xs` | 12px | 18px | |
| `text-sm` | 14px | 20px | |
| `text-md` | 16px | 24px | base body size |
| `text-lg` | 18px | 28px | |
| `text-xl` | 20px | 30px | |
| `display-xs` | 24px | 32px | |
| `display-sm` | 30px | 38px | |
| `display-lg` | 48px | 60px | letter-spacing -2 |
| `display-xl` | 60px | 72px | letter-spacing -2 |

Weights available: Regular (400), Medium (500), Semibold (600), Bold (700).
Display sizes (`display-lg`/`display-xl`) carry `-2` letter-spacing; text
sizes use `0`.

## Spacing scale

`spacing-{token}` (px): none 0, xxs 2, xs 4, sm 6, md 8, lg 12, xl 16,
2xl 20, 3xl 24, 4xl 32, 5xl 40, 6xl 48, 7xl 64, 8xl 80, 9xl 96, 10xl 128,
11xl 160.

Also present as a raw numeric scale (`Spacing/N`): 0, 2, 4, 8, 12, 16, 20,
24, 32, 40, 48, 64, 80, 96, 128, 160, 192, 224, 256, 320, 384, 480, 640,
720, 768, 1024, 1280, 1440, 1600, 1920px.

Layout widths: `width-xxs` 320, `xs` 384, `sm` 480, `md` 560, `lg` 640,
`xl` 768, `2xl` 1024, `3xl` 1280, `4xl` 1440, `5xl` 1600, `6xl` 1920.
Container padding: 16px mobile / 32px desktop. Container max-width
(desktop): 1280px. Paragraph max-width: 720px.

## Radius scale

`radius-{token}` (px): none 0, xxs 2, xs 4, sm 6, md 8, lg 10, xl 12,
2xl 16, 3xl 20, 4xl 24, full 9999.

## Shadows & effects

| Token | Layers |
|---|---|
| `shadow-xs` | 0/1/2/0 |
| `shadow-sm` | 0/1/2/-1 + 0/1/3/0 |
| `shadow-md` | 0/2/4/-2 + 0/4/6/-1 |
| `shadow-lg` | 0/2/2/-1 + 0/4/6/-2 + 0/12/16/-4 |
| `shadow-xl` | 0/3/3/-1.5 + 0/8/8/-4 + 0/20/24/-4 |
| `shadow-2xl` | 0/4/4/-2 + 0/24/48/-12 |
| `shadow-3xl` | 0/5/5/-2.5 + 0/32/64/-12 |

All shadow colors are a near-black `#0a0d12` at varying opacity.

Focus ring: `#02aa69` (brand-500) as a 4px spread ring + 2px white inset,
composited with the element's own shadow (`focus-ring-shadow-xs/sm`).
Error focus ring uses `#f04438`. Backdrop blurs: sm 8, md 16, lg 24, xl 40.

## Color system

### Brand (green)

| Step | Hex |
|---|---|
| 25 | #f2fbf8 |
| 50 | #e6f6f0 |
| 100 | #cdede2 |
| 200 | #a6dec9 |
| 300 | #7ecfb0 |
| 400 | #4fbf95 |
| 500 | #02aa69 |
| 600 | #018f58 |
| 700 | #016f45 |
| 800 | #014f32 |
| 900 | #003f29 |
| 950 | #00261a |

`600` (#018f58) is the primary solid brand color used for CTAs
(`bg-brand-solid`); `500` (#02aa69) is the focus-ring / secondary brand
color.

### Semantic tokens (light mode)

- **Text**: `text-primary` #181d27, `text-secondary` #414651,
  `text-tertiary` #535862, `text-quaternary` #717680, `text-white` #fff,
  `text-disabled`/`text-placeholder` #717680, `text-brand-primary` #003f29,
  `text-brand-secondary` #016f45, `text-brand-tertiary` #018f58,
  `text-error-primary` #d92d20, `text-warning-primary` #dc6803,
  `text-success-primary` #079455.
- **Background**: `bg-primary` #fff, `bg-secondary` #fafafa, `bg-tertiary`
  #f5f5f5, `bg-quaternary` #e9eaeb, `bg-brand-primary` #e6f6f0,
  `bg-brand-secondary` #cdede2, `bg-brand-solid` #018f58 (hover #016f45),
  `bg-brand-section` #014f32, `bg-error-primary` #fef3f2, `bg-error-solid`
  #d92d20, `bg-warning-primary` #fffaeb, `bg-warning-solid` #dc6803,
  `bg-success-primary` #ecfdf3, `bg-success-solid` #079455, `bg-overlay`
  #0a0d12.
- **Border**: `border-primary` #d5d7da, `border-secondary` #e9eaeb,
  `border-tertiary` #f5f5f5, `border-disabled` #d5d7da, `border-brand`
  #02aa69, `border-error` #f04438.
- **Foreground (icons/strokes)**: `fg-primary` #181d27, `fg-secondary`
  #414651, `fg-tertiary` #535862, `fg-quaternary` #a4a7ae, `fg-white`
  #fff, `fg-disabled` #a4a7ae, `fg-brand-primary` #018f58,
  `fg-brand-secondary` #02aa69, `fg-error-primary` #d92d20,
  `fg-warning-primary` #dc6803, `fg-success-primary` #079455.

### Neutral (gray) families

The file ships several interchangeable gray ramps (pick one per theme,
don't mix): **Gray (light mode)** — the one semantic tokens above resolve
to — plus alternates: Gray (dark mode), Gray blue, Gray cool, Gray modern,
Gray neutral, Gray iron, Gray true, Gray warm. Each has steps
25/50/100/200/300/400/500/600/700/800/900/950. Light-mode reference:
25 #fdfdfd, 50 #fafafa, 100 #f5f5f5, 200 #e9eaeb, 300 #d5d7da,
400 #a4a7ae, 500 #717680, 600 #535862, 700 #414651, 800 #252b37,
900 #181d27, 950 #0a0d12.

### Status colors

| Color | 50 | 500 | 700 |
|---|---|---|---|
| Error | #fef3f2 | #f04438 | #b42318 |
| Warning | #fffaeb | #f79009 | #b54708 |
| Success | #ecfdf3 | #17b26a | #067647 |

Each has the full 25–950 ramp available (see the Colors page in Figma for
every step).

### Extended palette

Full 25–950 ramps also exist for: Blue, Blue light, Blue dark, Indigo,
Violet, Purple, Fuchsia, Pink, Rosé, Orange, Orange dark, Yellow, Teal,
Cyan, Moss, Green, Green light. These back chart series, tags/badges, and
data-viz — not used in primary UI chrome.

## Component inventory

Structure of the Figma file's `❖ BASE COMPONENTS` and
`❖ APPLICATION COMPONENTS` pages (each is a full page of variants in the
file — open the page in Figma for exact specs/states):

**Base components**: Buttons, Button groups, Dropdowns, Badges, Tags,
Inputs, Text editors, Toggles, Checkboxes, Radio groups, Avatars,
Tooltips, Progress indicators, Sliders, Video players.

**Application components**: Page headers, Card headers, Section headers,
Section footers, Application navigation, Modals, Bottom sheets, Command
menus, Charts, Metrics, Slideout menus, Inline CTAs, Pagination, Progress
steps, Activity feeds, Messaging, Tabs, Tables, Breadcrumbs, Alerts &
notifications, Date pickers, Calendars, File upload, Content dividers,
Loading indicators, Empty states, Code snippets.

Also present: a **LOFI Wireframes** page, an **Examples** page (marketing
landing-page sections plus a few login-page mockups — "Banking Login
Page", "HR Login Page" ×2 — used as visual explorations, not the final
provider-portal flow), and dedicated **Logos**, **Icons**, and **Misc
icons** foundation pages.

## Notes

- This file documents tokens/inventory only — it does not capture every
  component's states/variants or the exact screens in `Examples`. Open
  the Figma file directly for pixel-level specs when implementing.
- The already-built provider portal canvas (`canvas-source/`) uses this
  same brand green and Maven Pro, but was authored independently from a
  scraped HTML reference, not by reading this Figma file directly — treat
  this file as the source of truth if the two ever disagree.
