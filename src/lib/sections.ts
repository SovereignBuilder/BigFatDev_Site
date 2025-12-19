export const BLOG_SECTIONS = [
  { slug: "dev-diary", title: "Dev Diary" },
  { slug: "artificial-intelligence-engineering", title: "Artificial Intelligence Engineering" },
  { slug: "mystical-musings", title: "Mystical Musings" },
] as const;

export const sectionFromSlug = (slug: string) =>
  BLOG_SECTIONS.find((section) => section.slug === slug);

export const slugFromSection = (sectionTitle: string) =>
  BLOG_SECTIONS.find((section) => section.title === sectionTitle)?.slug;
