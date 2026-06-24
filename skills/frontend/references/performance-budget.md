# Performance, Assets, and SEO Budget

Use this reference for frontend performance and public-page SEO checks.

## Core Web Vitals Targets

| Metric | Good Target | Common Fixes |
| --- | --- | --- |
| LCP | under 2.5s | optimize hero image, preload critical asset, reduce server latency |
| INP | under 200ms | reduce JS work, debounce heavy handlers, split bundles |
| CLS | under 0.1 | reserve image/ad/font space, avoid late layout injection |

## Asset Checks

- Images have explicit dimensions or aspect-ratio containers.
- Hero/LCP image is optimized and not lazy-loaded when above the fold.
- Non-critical images are lazy-loaded.
- SVG icons are inline or bundled through the existing icon system.
- Fonts use sensible weights and avoid excessive variants.
- `font-display` strategy avoids invisible text.

## JavaScript Budget

Flag:

- heavy components in the initial bundle without a reason
- charting, maps, 3D, editors, or video libraries loaded on routes that do not use them
- server-renderable content forced into client components
- unnecessary global providers
- repeated expensive calculations during render

## CSS and Animation

Flag:

- layout-triggering animations on large elements
- unbounded box shadows or blur filters on many nodes
- no `prefers-reduced-motion` handling for significant motion
- CSS frameworks included twice or unused component libraries

## SEO Basics for Public Pages

For public marketing/content/product pages:

- one clear H1
- unique title and meta description
- canonical URL if route can duplicate
- robots/noindex intentional
- structured data only when it matches visible content
- logical heading structure
- internal links with descriptive anchor text

For private apps and dashboards, focus on performance and ignore SEO unless the user asks.
