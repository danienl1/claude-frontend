# Claude Frontend Skill - Research Agent Prompt

Mission: research what a comprehensive Claude Code frontend creation, design, and
validation skill should know.

## Tracks

### 1. Existing Frontend AI Workflows

Search for Claude Code skills, Cursor rules, Copilot extensions, and open-source agent
workflows that build or review frontends. Extract:

- workflow structure
- trigger phrases and UX
- supported frameworks
- how they validate UI quality
- limitations users report

### 2. Design System Quality

Study design-system audit practices, token architecture, component-library documentation,
and anti-patterns in generic AI-generated UI. Extract:

- scoring dimensions
- token consistency checks
- typography and spacing heuristics
- visual originality signals
- component-state coverage expectations

### 3. Accessibility

Use WCAG 2.2, WAI-ARIA Authoring Practices, and platform accessibility docs. Extract:

- Level AA requirements most relevant to frontend code
- keyboard and focus-management patterns
- form validation and error-message requirements
- contrast, target size, and reflow checks
- automated versus manual checks

### 4. Browser Validation

Research Playwright, Storybook test-runner, axe, Lighthouse, and visual regression tools.
Extract:

- stable selector strategy
- screenshot viewport matrix
- console and network failure checks
- artifact storage
- CI examples

### 5. Framework Patterns

Cover React, Next.js, Vue, Svelte, Angular, Astro, and Solid. Extract:

- component architecture
- data fetching and mutation patterns
- state management options
- accessibility gotchas
- hydration and performance pitfalls

### 6. Performance and SEO

Study Core Web Vitals, image optimization, bundle budgeting, font loading, structured data,
metadata, and mobile-first indexing. Extract concrete thresholds and remediation examples.

## Output

Save findings as structured Markdown files under `research/` with source links, examples,
and recommendations that can be converted into reference modules.
