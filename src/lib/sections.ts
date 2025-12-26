export const BLOG_SECTIONS = [
  { slug: "dev-diary", title: "Dev Diary" },
  { slug: "human-ai-engineering", title: "Human-AI Engineering" },
  { slug: "methodical-musings", title: "Methodical Musings" },
] as const;

export const sectionFromSlug = (slug: string) =>
  BLOG_SECTIONS.find((section) => section.slug === slug);

export const slugFromSection = (sectionTitle: string) =>
  BLOG_SECTIONS.find((section) => section.title === sectionTitle)?.slug;
