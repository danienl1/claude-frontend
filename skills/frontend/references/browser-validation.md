# Browser Validation

Browser validation proves whether the UI works outside static code review.

## Minimum Validation Matrix

| Check | Required Evidence |
| --- | --- |
| Page load | URL opens, no blank screen |
| Console | no uncaught errors on initial load and primary flow |
| Network | no failed critical requests |
| Viewports | screenshots at 375px, 768px, 1440px |
| Workflow | primary user journey completed with real clicks/input |
| Accessibility | keyboard smoke test and automated checks when available |
| Forms | valid and invalid submission states |

## Viewports

- Mobile: 375x812
- Tablet: 768x1024
- Desktop: 1440x900

Add more when the product has known target devices.

## What to Flag

- blank or partially rendered page
- hydration errors
- console exceptions
- unhandled promise rejections
- failed API calls required for the view
- text clipping, overlap, horizontal scroll
- controls under sticky headers/footers
- invisible focus state
- disabled controls with no explanation
- loading state that never resolves
- success/error state that is not visible

## Browser QA Report Shape

```markdown
## Browser QA

Target: http://localhost:3000
Viewports: 375, 768, 1440

### Results
- Load: PASS/FAIL
- Console: PASS/FAIL
- Network: PASS/FAIL
- Primary flow: PASS/FAIL
- Responsive: PASS/FAIL
- Accessibility smoke: PASS/FAIL

### Evidence
- Screenshot: artifacts/mobile.png
- Screenshot: artifacts/tablet.png
- Screenshot: artifacts/desktop.png
- Trace: playwright-report/
```

## Fallback When Browser Is Unavailable

Report:

- why browser validation was not run
- which code-level checks were run instead
- exact commands attempted
- residual risk
