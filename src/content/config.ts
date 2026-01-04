import { defineCollection, z } from "astro:content";

const blog = defineCollection({
  type: "content",
  schema: z.object({
    title: z.string(),
    date: z.date(),
    section: z.enum([
      "Dev Diary",
      "Human-AI Engineering",
    ]),
    excerpt: z.string(),
    coverImage: z.string().optional(),
    draft: z.boolean().optional(),
  }),
});

export const collections = { blog };
