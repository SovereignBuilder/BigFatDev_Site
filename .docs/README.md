# Big Fat Developments

Calm, minimal personal hub for MJ. Dark mode by default, with a light mode toggle.

## Quick start

```bash
npm install
npm run dev
```

## Project structure

```
/
  public/
    branding/
    images/
  src/
    components/
    content/
    lib/
    pages/
    styles/
```

## Content: blog posts

Posts live in `src/content/blog/*.md` with frontmatter:

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

Each section gets its own index page:
- `/blog/dev-diary`
- `/blog/human-ai-engineering`

## Theme toggle

Theme state is stored in `localStorage` and defaults to dark. The toggle is in the header.
