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
  section: "Dev Diary" # or "Human-AI Engineering" or "Methodical Musings"
excerpt: "Short summary shown on lists."
coverImage: "/images/optional.jpg" # optional
draft: false # optional
---
```

Each section gets its own index page:
- `/blog/dev-diary`
- `/blog/human-ai-engineering`
- `/blog/methodical-musings`

## Content: projects

Projects live in `src/content/projects/*.md` with frontmatter:

```yaml
---
title: "Project title"
status: "Active" # or "Paused" or "Archived"
description: "Short description."
links:
  - label: "repo"
    url: "https://github.com/..."
---
```

Rendered on `/dev`.

## Content: shop items

Shop items live in `src/content/shop/*.md` with frontmatter:

```yaml
---
title: "Item title"
section: "Software" # or "Games" or "Art" or "Services"
description: "Short description."
url: "https://gumroad.com/l/your-item"
---
```

Rendered on `/shop`.

## Theme toggle

Theme state is stored in `localStorage` and defaults to dark. The toggle is in the header.

## Hidden stub pages

These pages are not linked in the nav but are accessible directly:

- `/lab`
- `/tools`
- `/games`
- `/art`
- `/services`
- `/library`
- `/press`
