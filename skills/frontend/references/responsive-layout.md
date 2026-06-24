# Responsive Layout

Responsive review checks whether the interface works with real content at expected
viewport sizes.

## Standard Viewports

- 375x812: mobile portrait
- 768x1024: tablet
- 1440x900: desktop

Also test narrow containers for embedded widgets, side panels, and split panes.

## Layout Rules

- No horizontal scrolling unless the UI is explicitly a canvas, board, or table with a
  deliberate scroll container.
- Critical actions remain visible or reachable.
- Sticky headers and footers do not cover content.
- Text wraps within buttons, cards, table cells, and form controls.
- Long names, URLs, and localized strings cannot break layout.
- Fixed-format surfaces use stable dimensions: aspect-ratio, min/max, grid tracks, or
  container queries.
- Touch targets remain usable on mobile.

## Common Problems

| Problem | Fix |
| --- | --- |
| Toolbar buttons wrap unpredictably | Use fixed icon button sizes and overflow menu |
| Cards stretch to unusable widths | Add max-width or denser grid rules |
| Tables collapse on mobile | Use horizontal table container or mobile row cards |
| Sidebar consumes mobile viewport | Convert to drawer, tabs, or bottom nav |
| Text overlaps adjacent content | Add min-width control, wrapping, or dynamic truncation |
| Modal exceeds viewport | Use max-height, internal scroll, and visible actions |

## Screenshot Review Checklist

- [ ] no clipped headings or buttons
- [ ] no overlapping sticky elements
- [ ] no hidden form submit actions
- [ ] no empty blank bands caused by fixed heights
- [ ] no unreadable tiny text
- [ ] no important information only visible on hover
