# Component State and API Contracts

Frontend quality depends on matching UI state to real data and user actions.

## Required UI States

For data-driven components, check:

- loading
- success
- empty
- error
- retrying
- disabled
- optimistic update
- stale/refetching
- permission denied

For forms, check:

- untouched
- dirty
- validating
- invalid
- submitting
- success
- server error
- duplicate submission prevention

## API Contract Checks

- Frontend expects fields that backend actually returns.
- Optional fields are handled without crashing.
- API errors map to user-facing messages.
- Pagination, filtering, and sorting parameters match backend names.
- Date/time, currency, and number formatting are explicit.
- IDs are stable and not array indexes when rendering dynamic lists.

## Async Failure Patterns

Flag:

- stale requests overwriting newer results
- setState after unmount without cleanup
- duplicate submit from rapid clicks
- optimistic update without rollback
- success toast shown before server confirmation when data integrity matters
- hidden network errors swallowed in console only

## Component Architecture Checks

- Components have one clear responsibility.
- Shared behavior is extracted into hooks or helpers when reused.
- Derived state is computed rather than stored when practical.
- Context is not used for rapidly changing local state.
- Form validation schemas are shared with API contracts when possible.
- Large list rendering uses pagination or virtualization.

## Fix Patterns

- Use request IDs or abort controllers for stale async requests.
- Disable submit while pending and show progress.
- Keep server state in React Query, SWR, framework loaders, or equivalent.
- Use schema validation for boundary data.
- Add contract tests for response shapes that UI depends on.
