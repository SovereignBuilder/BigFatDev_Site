# Blog Posting Guide

This guide explains, in plain language, how to add blog posts to the website and how the blog "threads" (sections) work. It is written for non-technical use.

## 1) What the blog "threads" are

The site uses one blog with three threads (also called sections). Each thread has its own page and its own stream of posts. A single post belongs to exactly one thread.

Current threads:
- Dev Diary
- Human-AI Engineering
- Methodical Musings

If you pick one of these threads in your post, the site will automatically place the post on that thread?s page and the main Blog page.

## 2) Where to create a new post

Every blog post is a single Markdown file saved in this folder:

C:\Dev\BFDwebsite\src\content\blog\

You can create a new file in that folder. The file name becomes the URL slug. Example file name:

my-first-week-log.md

The full URL would become:

/blog/dev-diary/my-first-week-log

## 3) The required frontmatter

At the top of every blog post file, you must include a frontmatter block. This tells the site the post title, date, and thread.

Use this exact format:

---
title: "Your post title"
date: 2025-01-15
section: "Dev Diary"
excerpt: "A short summary that appears in lists."
draft: false
---

Field meanings:
- title: The visible post title.
- date: The post date. Use YYYY-MM-DD.
- section: Choose one of the three threads exactly as written: Dev Diary, Human-AI Engineering, Methodical Musings.
- excerpt: A short summary (one or two sentences). It appears on the Blog page and section lists.
- draft: If true, the post will be hidden. If false, the post will be published.

## 4) Writing the post body

Below the frontmatter, write your post content in normal Markdown. You can use headings, bullet points, and links.

Example:

---
title: "Week of 2025-01-15 - Built, Learned, Next"
date: 2025-01-15
section: "Dev Diary"
excerpt: "A calm weekly log covering progress and lessons."
draft: false
---

## Built
- Bullet 1
- Bullet 2

## Learned
- Bullet 1
- Bullet 2

## Next
- Bullet 1
- Bullet 2

## 5) Weekly log format (recommended)

For weekly Dev Diary posts, use the format defined in the SMAE website-first ritual:

Title: Week of YYYY-MM-DD - Built, Learned, Next

Sections:
- Built (1 to 5 bullets)
- Learned (1 to 5 bullets)
- Next (1 to 5 bullets)
- Optional: One screenshot or artifact
- Optional: One invitation question

This keeps weekly posts consistent and easy to scan.

## 6) Adding images

Place images in:

C:\Dev\BFDwebsite\public\images\

Then reference them in your post like this:

![Alt text](/images/your-image.png)

## 7) How the "Latest" panels work

On the main Blog page, each thread shows a small "Latest" panel. The site finds the newest post (by date) for each thread and shows it there. This happens automatically when you add a new post.

## 8) How to publish

When you are ready:
1) Set draft: false.
2) Save the file in the blog folder.
3) Commit and push the file to GitHub.
4) Netlify will deploy the updated site automatically.

## 9) Optional: Import from SMAE draft folder

If you write drafts in the SMAE draft folder, you can use the import script to copy them into the website blog folder. This does not publish the post by itself, but it places the draft in the correct location.

Draft folder:
C:\Dev\Gemini-Forge-AIDevAssist\Spheres\SMAE\SMAE_MJ_Draft_Content

Import script:
C:\Dev\BFDwebsite\scripts\import-drafts.ps1

To run it:

C:\Dev\BFDwebsite\scripts\import-drafts.ps1

If you want to preview what will happen without copying files:

C:\Dev\BFDwebsite\scripts\import-drafts.ps1 -DryRun

If you want to overwrite existing files with the same name:

C:\Dev\BFDwebsite\scripts\import-drafts.ps1 -Force

## 10) Creating a new thread (advanced)

Only do this when you truly want a permanent new category.

To create a new thread:
1) Update the sections list in:
   C:\Dev\BFDwebsite\src\lib\sections.ts
2) Update the allowed sections in:
   C:\Dev\BFDwebsite\src\content\config.ts
3) Update the blog descriptions in:
   C:\Dev\BFDwebsite\src\pages\blog\index.astro
4) Add at least one post with the new section value so it appears.

If you are not comfortable with these steps, ask for help and it can be done safely.
