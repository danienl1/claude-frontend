# Contributing to claude-frontend

Contributions should improve the skill's ability to build, critique, or validate real
frontends. Keep changes grounded in observable UI behavior and actionable engineering
practice.

## Useful Contribution Areas

- New framework references for React, Next.js, Vue, Svelte, Angular, Astro, or Solid
- Better browser validation recipes for Playwright, Storybook, or visual regression
- Accessibility checks tied to WCAG 2.2 criteria
- Design-system heuristics that catch generic or inconsistent AI-generated UI
- Report templates and scoring calibration

## Pull Request Checklist

1. Keep the skill user-invokable and self-contained.
2. Add or update reference files when adding a new specialist behavior.
3. Keep examples realistic. Prefer concrete component, route, and test examples.
4. Run `bash install.sh --local` and verify the installed skill directory.
5. Update `checksums.sha256` after changing skill files.

## Style

- Markdown should be direct and scan-friendly.
- Use ASCII unless the file already requires non-ASCII examples.
- Avoid generic design advice. Tie guidance to visible behavior or code checks.
- Prefer framework-native APIs and semantic HTML before custom abstractions.

## Reporting Bugs

Open an issue with:

- the command or mode used
- framework and package manager
- whether a dev server or target URL was available
- the expected behavior and the actual output
- screenshots or Playwright traces when relevant
