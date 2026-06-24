# Recommendations and Known Gaps

This repo is usable as a local Claude Code skill, but a few things are still missing before
public release.

## Recommended Next Steps

1. **Publish path**
   - Add the repository to a Claude plugin marketplace or publish installation docs that do
     not imply `claude plugin install frontend` works before marketplace registration.

2. **Real benchmark set**
   - Add 5-10 sample apps with known issues: dashboard, marketing page, SaaS settings,
     ecommerce flow, dense admin table, mobile navigation, modal/forms, and data-heavy chart.
   - Use them to calibrate scores and false positives.

3. **Optional validation scripts**
   - Add a small Node/Playwright helper that can run the viewport screenshot matrix, collect
     console errors, and generate a markdown report.
   - Keep it optional so the skill remains zero-dependency by default.

4. **Visual examples**
   - Add before/after screenshots that demonstrate what the design critique considers
     generic, acceptable, and excellent.

5. **Framework expansion**
   - Add dedicated references for Astro, Solid, Remix, React Native, and mobile WebView
     patterns if those stacks matter.

6. **Accessibility automation**
   - Add axe-core examples and a manual keyboard-screen-reader checklist for cases automated
     tools cannot fully verify.
