import { defineCollection, z } from 'astro:content';

const insights = defineCollection({
    type: 'content',
    schema: z.object({
        title: z.string(),
        date: z.date().or(z.string()),
        summaryImage: z.string().optional(),
        tags: z.array(z.string()).optional(),
        draft: z.boolean().optional().default(false),
    }),
});

const builds = defineCollection({
    type: 'content',
    schema: z.object({
        title: z.string(),
        date: z.date().or(z.string()),
        summaryImage: z.string().optional(),
        showInMenu: z.boolean().optional().default(false),
    }),
});

export const collections = { insights, builds };
