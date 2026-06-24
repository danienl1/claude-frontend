# Frontend Report Template

Use this for audit and validation output.

## Executive Summary

```markdown
# Frontend Audit Report

**Project**: [name]
**Mode**: build|audit|validate|diff|design
**Target**: [URL or code-only]
**Framework**: [detected]
**Files/Routes Reviewed**: [count/list]
**Browser Validation**: completed|partial|not run

## Overall Frontend Score: XX/100 (Grade: X)

### Finding Summary
| Severity | Count |
| --- | --- |
| BLOCKER | X |
| HIGH | X |
| MEDIUM | X |
| LOW | X |
| INFO | X |

### Category Scores
| Category | Score | Weight | Top Finding |
| --- | --- | --- | --- |
| Product UX | XX | 10% | ... |
| Design System | XX | 15% | ... |
| Components/State | XX | 15% | ... |
| Accessibility | XX | 15% | ... |
| Responsive | XX | 10% | ... |
| Performance/SEO | XX | 10% | ... |
| Browser QA | XX | 15% | ... |
| Integration | XX | 10% | ... |
```

## Finding Format

```markdown
[FE-001] Specific title
Severity: BLOCKER|HIGH|MEDIUM|LOW|INFO | Confidence: HIGH|MEDIUM|LOW
Category: Product UX|Design|Components|Accessibility|Responsive|Performance|Browser QA|Integration
Location: file:line or URL/selector
Evidence: [code, screenshot name, command output, or browser observation]

WHAT: What is wrong.
WHY IT MATTERS: User impact and release risk.
FIX: Concrete remediation. Include code-level direction when possible.
```

## Browser Evidence

```markdown
## Browser Validation

- Target:
- Commands:
- Viewports:
- Screenshots:
- Console errors:
- Network failures:
- Primary flow result:
- Accessibility smoke:
```

## Remediation Plan

```markdown
## Fix Now
1. [FE-001] ...

## Fix This Sprint
1. [FE-004] ...

## Backlog
1. [FE-010] ...
```

## Methodology Footer

```text
Methodology: frontend GARE workflow, WCAG 2.2 AA, design-system audit,
responsive viewport checks, Core Web Vitals heuristics, and browser QA where available.
```
