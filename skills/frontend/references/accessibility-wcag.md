# Accessibility Reference - WCAG 2.2 AA

Use this for web frontend accessibility review and implementation.

## Core Rules

1. Use semantic HTML first.
2. Add ARIA only when native semantics are insufficient.
3. Every interactive control must be keyboard reachable.
4. Every interactive control needs a visible focus indicator.
5. Every input needs a programmatic label.
6. Icon-only controls need an accessible name.
7. Dialogs must trap focus while open and restore focus on close.
8. Dynamic status changes need live regions when they matter.
9. Error messages must identify the field and explain how to fix it.
10. Do not communicate state by color alone.

## WCAG Checks

| Area | Requirement |
| --- | --- |
| Contrast | 4.5:1 for normal text, 3:1 for large text and UI graphics |
| Target size | At least 24x24 CSS pixels, with adequate spacing |
| Reflow | Works at narrow viewport and high zoom without loss of function |
| Keyboard | Tab order is logical; Enter/Escape/Arrow keys work where expected |
| Focus | Visible, high-contrast focus state; no keyboard traps |
| Forms | Labels, descriptions, errors, and required indicators are programmatic |
| Images | Meaningful images have alt text; decorative images are hidden |
| Motion | Avoid essential motion; respect reduced motion preferences |

## Common Failures

### Div Button

Problem: clickable `div` or `span` without role, tab index, or keyboard handler.

Fix: use `<button>` for actions and `<a>` for navigation.

### Icon Button Without Name

Problem:

```html
<button><svg aria-hidden="true"></svg></button>
```

Fix:

```html
<button aria-label="Open navigation"><svg aria-hidden="true"></svg></button>
```

### Dialog Without Focus Management

Required behavior:

- focus moves into dialog on open
- tab stays within dialog
- Escape closes when appropriate
- close button exists
- focus returns to trigger on close

### Form Error Not Announced

Use `aria-invalid`, `aria-describedby`, and visible text.

```html
<label for="email">Email</label>
<input id="email" aria-invalid="true" aria-describedby="email-error">
<p id="email-error">Enter a valid email address.</p>
```

## Manual Checks Automated Tools Miss

- Is the focus order understandable?
- Do labels make sense out of visual context?
- Can a keyboard user complete the primary flow?
- Does the screen reader announcement reflect state changes?
- Is the UI usable at 200-400% zoom?
- Are gestures available through single-pointer or keyboard alternatives?
