# Visual Regression Recipe

Visual regression helps detect layout drift, but it should support human review rather
than replace it.

## What to Capture

- primary route or screen
- key modal/dialog state
- form validation state
- empty state
- data-heavy state
- mobile navigation open/closed
- dark mode if supported

## Screenshot Naming

```text
artifacts/
  desktop-home.png
  tablet-home.png
  mobile-home.png
  mobile-menu-open.png
  form-error-state.png
```

## Review Checklist

- layout is not blank
- typography scale is stable
- important content remains visible
- buttons and labels are not clipped
- no accidental scrollbars
- no low-contrast text
- no skeletons stuck after load
- no hover-only content required on touch devices

## Pixel Diff Guidance

Use pixel diffing for regression detection, not design judgment.

Flag diffs when:

- important components move unexpectedly
- text disappears or changes line count unexpectedly
- layout shift exceeds expected tolerance
- color contrast or state indication changes

Do not over-index on:

- font anti-aliasing differences
- timestamp or randomized content
- animations captured at different frames

## Accessibility Pairing

Visual screenshots must be paired with keyboard and semantics checks. A page can look
correct and still be unusable to assistive technology.
