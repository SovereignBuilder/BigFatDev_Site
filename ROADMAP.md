# Roadmap

This roadmap is ordered by impact. Each phase is designed to be shippable on its own.

## Phase 1: Content and launch polish
- Replace placeholder copy with real content across Home, About, Dev, Shop, Support.
- Replace hero placeholder with a real image (optimized, compressed).
- Confirm logo usage (dark/light variants) and update if needed.
- Add a real contact method (email or Netlify form) and validate it.
- Replace placeholder Gumroad and repo links.

## Phase 2: SEO and sharing
- Add OpenGraph and Twitter meta tags.
- Add canonical URLs per page.
- Add `robots.txt` and a generated `sitemap.xml`.
- Add structured data (JSON-LD for site identity).

## Phase 3: Accessibility and UX
- Add click-outside and Escape handling for the mobile nav.
- Improve focus states for all interactive elements.
- Verify color contrast in both themes.
- Add `aria-current` on active nav links (already present in layout).

## Phase 4: Performance and build
- Ensure all images are optimized (size + format).
- Audit font loading and add preconnect/preload if needed.
- Run a Lighthouse pass and fix top warnings.

## Phase 5: Optional enhancements
- Add RSS for the blog sections.
- Add search (Pagefind or simple client-side filter).
- Add a `/now`-style section to the blog or homepage.
- Add a simple newsletter signup.

## Phase 6: Content workflows
- Add a “draft” workflow in Git (branch + preview build).
- Add basic content QA checklist before deploy.

---

## Current status
- Structure and design implemented.
- Content collections wired for blog/projects/shop.
- Stub pages created for future expansion.
