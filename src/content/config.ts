import { defineCollection, z } from "astro:content";

const blog = defineCollection({
  type: "content",
  schema: z.object({
    title: z.string(),
    date: z.date(),
    section: z.enum([
      "Dev Diary",
      "Human-AI Engineering",
      "Methodical Musings",
    ]),
    excerpt: z.string(),
    coverImage: z.string().optional(),
    draft: z.boolean().optional(),
  }),
});

const projects = defineCollection({
  type: "content",
  schema: z.object({
    title: z.string(),
    date: z.date().optional(),
    status: z.enum(["Active", "Prototype", "Paused", "Archived"]),
    description: z.string(),
    links: z
      .array(
        z.object({
          label: z.string(),
          url: z.string().url(),
        })
      )
      .optional(),
  }),
});

const shop = defineCollection({
  type: "content",
  schema: z.object({
    title: z.string(),
    section: z.enum(["Software", "Games", "Art", "Services"]),
    description: z.string(),
    url: z.string().url().optional(),
  }),
});

export const collections = { blog, projects, shop };
