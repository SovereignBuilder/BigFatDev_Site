---
title: "Quiet Routines for Building"
date: 2025-12-12
section: "Dev Diary"
excerpt: "A small set of habits that keeps work steady, calm, and honest."
---

Building works best when it is ordinary.

## A simple loop

- Write one note.
- Ship one small change.
- Walk away before it turns into a performance.

## Tiny checklist

1. Name the next smallest step.
2. Make it visible.
3. Stop when it is done.

```js
// The smallest possible "done".
export function nextStep(current) {
  return current?.trim()?.length ? "ship" : "write a note";
}
```
