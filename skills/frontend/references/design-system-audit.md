# Design System and Visual Audit

Evaluate whether the interface has a coherent visual system and a product-specific feel.

## Audit Dimensions

1. Color consistency
2. Typography hierarchy
3. Spacing rhythm
4. Component variants and states
5. Information density
6. Responsive behavior
7. Motion purpose
8. Accessibility support
9. Polish details
10. Originality and domain fit

Score each 0-10, then convert to a 0-100 category score.

## Signals of Quality

- One clear primary action per view.
- Visual hierarchy supports scanning without over-explaining.
- Components have variants for default, hover, focus, active, disabled, loading, error.
- Color communicates meaning but is not the only signal.
- Spacing uses a rhythm rather than arbitrary one-off values.
- Text sizes fit their containers and do not overlap.
- Layout matches domain density: dashboards are compact; editorial pages can breathe.
- Icons are familiar and semantic.
- Empty states help the user continue.
- Motion clarifies state changes or spatial relationships.

## AI-Generated UI Smells

Flag these when they harm quality:

- purple-to-blue default gradients used as a theme
- centered hero plus three generic cards for non-marketing apps
- every section as a floating card
- cards nested inside cards
- uniform large rounded corners everywhere
- glassmorphism without purpose or contrast control
- stock copy such as "Get Started" or "Learn More" as primary UX
- placeholder charts that do not answer operator questions
- decorative blobs, orbs, or bokeh with no product meaning
- excessive whitespace in tools meant for repeated work
- generic icons that do not match the command

## Design-System Extraction Checklist

- [ ] tokens exist or can be inferred for color, type, spacing, radius, and shadow
- [ ] components reuse tokens instead of hardcoded drift
- [ ] destructive, warning, success, neutral, and disabled states are distinct
- [ ] forms, tables, dialogs, menus, tabs, and toasts follow consistent patterns
- [ ] focus rings are visible and not removed
- [ ] dark mode exists only if implemented completely

## Fix Guidance

Make recommendations concrete:

- Replace "use better colors" with exact token proposals.
- Replace "spacing is inconsistent" with the component and values to normalize.
- Replace "too generic" with a domain-specific visual direction.
- Replace "improve hierarchy" with specific changes to heading, label, body, and caption scale.
