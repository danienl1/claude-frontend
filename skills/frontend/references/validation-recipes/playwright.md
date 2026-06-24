# Playwright Validation Recipe

Use Playwright when available to validate real browser behavior.

## Preferred Commands

```bash
npx playwright test
npx playwright test --project=chromium
npx playwright test --headed
npx playwright show-report
```

Do not install Playwright or browser binaries without user permission if they are absent.

## Stable Locator Strategy

Prefer:

1. role and accessible name
2. labels
3. text when unique and user-visible
4. `data-testid`
5. CSS selectors only as a last resort

Examples:

```ts
await page.getByRole('button', { name: 'Save changes' }).click()
await page.getByLabel('Email').fill('test@example.com')
await expect(page.getByRole('alert')).toContainText('Enter a valid email')
```

## Viewport Screenshot Matrix

```ts
const viewports = [
  { name: 'mobile', width: 375, height: 812 },
  { name: 'tablet', width: 768, height: 1024 },
  { name: 'desktop', width: 1440, height: 900 },
]

for (const viewport of viewports) {
  await page.setViewportSize(viewport)
  await page.goto('/')
  await page.screenshot({ path: `artifacts/${viewport.name}.png`, fullPage: true })
}
```

## Console and Network Checks

```ts
const errors: string[] = []
page.on('console', msg => {
  if (msg.type() === 'error') errors.push(msg.text())
})

const failedRequests: string[] = []
page.on('requestfailed', req => failedRequests.push(req.url()))
```

## Avoid Flaky Tests

- Wait for specific response or visible state, not arbitrary time.
- Use locators instead of raw element handles.
- Assert after each meaningful action.
- Keep tests isolated.
- Save screenshots and traces on failure.

## Report Evidence

Record:

- command run
- target URL
- viewport screenshots
- console errors
- failed requests
- primary flow status
- trace/report path
