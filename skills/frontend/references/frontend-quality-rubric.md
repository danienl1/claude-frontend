# Frontend Quality Rubric

Use this rubric to score frontend creation, review, and validation work.

## Severity

| Severity | Meaning | Examples |
| --- | --- | --- |
| BLOCKER | Must fix before use or release | App does not load, critical flow broken, modal traps keyboard, mobile hides checkout button |
| HIGH | Serious user impact | Form silently loses data, unreadable contrast, primary nav broken at mobile, API contract mismatch |
| MEDIUM | Meaningful quality gap | Missing empty state, inconsistent component variants, unclear hierarchy, slow non-critical page |
| LOW | Polish or maintainability issue | Minor spacing inconsistency, weak hover state, verbose component |
| INFO | Observation or optional improvement | Nice-to-have refinement, future design-system extraction |

## Category Scoring

Start each category at 100 and deduct:

- BLOCKER: 30 points
- HIGH: 18 points
- MEDIUM: 10 points
- LOW: 3 points
- INFO: 0 points

Minimum score is 0.

## Confidence

| Confidence | Criteria |
| --- | --- |
| HIGH | Verified in code and browser, or direct code path proves issue |
| MEDIUM | Strong code evidence, but browser/runtime context incomplete |
| LOW | Heuristic or likely issue needing manual confirmation |

## Weighted Categories

| Category | Weight |
| --- | --- |
| Product UX and information architecture | 10% |
| Design system and visual originality | 15% |
| Component architecture and state/API contracts | 15% |
| Accessibility and semantics | 15% |
| Responsive layout | 10% |
| Performance, assets, and SEO basics | 10% |
| Browser QA and E2E validation | 15% |
| Integration, build, and code quality | 10% |

## Grade Interpretation

| Grade | Score | Interpretation |
| --- | --- | --- |
| A | 90-100 | Shippable and polished |
| B | 75-89 | Good; fix targeted issues |
| C | 60-74 | Functional but obvious gaps remain |
| D | 40-59 | Needs substantial frontend work |
| F | 0-39 | Broken or unfit for users |

## Auto-Blockers

Cap the grade at C when:

- build or page load fails
- primary workflow fails
- critical action is inaccessible by keyboard
- critical action is missing or overlapped on mobile
- the UI leaks raw errors or stack traces to users
