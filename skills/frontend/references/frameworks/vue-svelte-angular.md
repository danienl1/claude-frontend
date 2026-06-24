# Vue, Svelte, and Angular Patterns

Use this reference for non-React frontend review.

## Vue

- Prefer Composition API for complex state.
- Keep templates readable; extract components when branches grow.
- Use computed values for derived state.
- Use `v-if` and `v-show` intentionally.
- Avoid `v-html` unless sanitized and justified.
- Use semantic components and labels.
- Validate props and emitted events.

Common flags:

- global reactive state for local concerns
- watchers used where computed values fit
- missing error/loading states around async calls
- `:key="index"` on dynamic lists

## Svelte

- Use stores for shared state, not for every local value.
- Keep reactive statements simple and avoid hidden dependency chains.
- Use actions for reusable DOM behavior.
- Add transitions only when they clarify state.
- Avoid raw HTML injection unless sanitized.

Common flags:

- reactive loops that refire unexpectedly
- component files doing too many jobs
- missing form and async states
- inaccessible custom controls

## Angular

- Prefer standalone components where the project uses them.
- Use reactive forms for complex validation.
- Keep templates declarative and avoid expensive method calls in templates.
- Use OnPush/change-detection strategies when appropriate.
- Use Angular CDK for complex accessible controls where possible.
- Sanitize dynamic HTML and avoid bypass APIs unless documented.

Common flags:

- business logic in templates
- subscriptions without cleanup
- untyped forms in strict projects
- route guards that do not cover deep links

## Shared Checks

- keyboard support for custom controls
- stable layout at mobile/tablet/desktop
- clear loading, empty, and error states
- component boundaries that match product concepts
- no framework escape hatches without explicit reason
