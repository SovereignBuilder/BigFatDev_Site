# Site User Guide

This guide explains how to add and manage content in the Big Fat Developments site.

## Quick start

```bash
npm install
npm run dev
```

## Content locations

- Blog posts: `src/content/blog/*.md`

## Blog posts

Create a new Markdown file in `src/content/blog/`.

### Frontmatter schema

```yaml
---
title: "Post title"
date: 2025-12-12
section: "Dev Diary" # or "Human-AI Engineering"
excerpt: "Short summary shown on lists."
coverImage: "/images/optional.jpg" # optional
draft: false # optional
---
```

### Example file

`src/content/blog/dev-diary-first-notes.md`

```md
---
title: "First Notes"
date: 2025-12-19
section: "Dev Diary"
excerpt: "A short entry on how this project began."
---

This is the body of the post.

## A second heading

- Bullet point one
- Bullet point two
```

### Where it appears

- Section index: `/blog/dev-diary` (or the relevant section)
- Blog hub: `/blog`
- Post page: `/blog/{section}/{slug}`

### Notes

- Use `draft: true` to hide a post from the site.
- The `section` value must match one of the two allowed sections exactly.

## Adding images

- Put images in `public/images/`.
- Reference them with `/images/your-file.ext` in Markdown or templates.

## Updating the logo

- Dark logo: `public/branding/BFD_logo_full_invert.png`
- Light logo: `public/branding/BFD_logo_soft_on_grey_8x.png`

Both are referenced in `src/components/Layout.astro`.

## Theme toggle

Theme selection is stored in `localStorage` and defaults to dark. The toggle is in the header.

## Build and deploy

```bash
npm run build
```

Netlify is configured to publish from `dist/`.
