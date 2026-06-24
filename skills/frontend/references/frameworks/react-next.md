# React and Next.js Patterns

Use existing project conventions first. Apply these patterns when no stronger local
pattern exists.

## React Component Design

- Prefer composition over inheritance or prop explosions.
- Keep components focused. Split large render functions.
- Use semantic HTML and native controls.
- Use stable keys from data, not array indexes for dynamic lists.
- Avoid storing derived state unless caching is required.
- Keep side effects in effects, event handlers, loaders, or server actions as appropriate.

## State

- Local UI state: `useState` or `useReducer`.
- Shared client state: context only for low-frequency global state.
- Server state: React Query, SWR, framework loaders, or server components.
- Forms: use controlled or framework-native form handling with validation.

## Next.js

- Prefer server components for static/server-derived content.
- Mark client components only when interactivity, browser APIs, or client hooks require it.
- Keep metadata accurate for public pages.
- Use `next/image` or equivalent optimization for important images.
- Handle loading and error boundaries at route segments.
- Avoid hydration mismatches from browser-only values during initial render.

## Accessibility Gotchas

- Custom comboboxes, menus, tabs, and dialogs must implement ARIA authoring patterns.
- Icon buttons require accessible names.
- Route changes should preserve logical focus behavior.
- Toasts and async statuses may need live regions.

## Performance Gotchas

- Lazy-load charts, editors, maps, 3D, and video tooling.
- Memoize expensive derived lists only when profiling or size justifies it.
- Virtualize long lists.
- Do not ship large mock datasets in the production client bundle.
- Keep providers scoped to routes that need them.

## Review Triggers

Flag:

- `dangerouslySetInnerHTML` without sanitization and clear need
- `useEffect` data fetching that duplicates framework loaders
- `any` or loose unknown API responses entering UI
- missing error boundaries on fragile route surfaces
- repeated JSX blocks that should be components
- disabled exhaustive-deps without explanation
