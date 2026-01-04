# Blog Post Formatting Guide (Beginner Friendly)

This guide shows you how to format text for the blog using Markdown. Think of Markdown as a simple way to add structure (titles, lists, links) while typing normal text.

If you ever get stuck, copy the example and replace the words with your own.

## 1) Headings (titles)

Use headings to break your post into sections.

Example:
```
# Main Title (H1)
## Section Title (H2)
### Subsection Title (H3)
#### Smaller Subsection (H4)
```

Tip: Most posts only need H2 and H3 headings.

## 2) Paragraphs (normal text)

To start a new paragraph, leave a blank line between blocks of text.

Example:
```
This is the first paragraph.

This is the second paragraph.
```

## 3) Bold and italic text

Use these to emphasize words.

- Italic: wrap the word in single asterisks.
- Bold: wrap the word in double asterisks.
- Bold + italic: wrap the word in triple asterisks.

Examples:
```
*italic text*
**bold text**
***bold italic text***
```

## 4) Lists

Unordered list (bullets):
```
- Item one
- Item two
  - Nested item (a sub-bullet)
```

Ordered list (numbered):
```
1. First item
2. Second item
3. Third item
```

## 5) Links

Use links to point to other pages or sources.

Format:
```
[Link text](https://example.com)
```

Example:
```
[OpenAI](https://openai.com)
```

## 6) Images

To add an image, put it in `public/images/` and use this format:

```
![Alt text](/images/your-image.png)
```

The "Alt text" is a short description of the image for accessibility.

## 7) Blockquotes

Use blockquotes for quotes or callouts.

Example:
```
> This is a quote.
> It can span multiple lines.
```

## 8) Code

Inline code (short words in a sentence):
```
Use the `npm run dev` command to start the site.
```

Code block (multiple lines):
````text
```text
Your code here
```
````

## 9) Horizontal rule (divider line)

Type three dashes on a line by itself:
```
---
```

## 10) Checklists (optional)

Use these for to-do lists.

```
- [ ] Task not done
- [x] Task done
```

## Quick starter template

Copy this and replace the text:
```
## Built
- Item one
- Item two

## Learned
- Item one
- Item two

## Next
- Item one
- Item two
```
