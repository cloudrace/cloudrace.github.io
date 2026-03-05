# Cloudrace (Astro Edition) 🚀

Welcome to the new, premium version of Cloudrace. This site has been transitioned from Hugo to **Astro** for a richer, more interactive builder experience.

## Tech Stack
- **Framework**: [Astro](https://astro.build/) (Static Site Generation)
- **Styling**: [Tailwind CSS](https://tailwindcss.com/) (Minimalist Concept B)
- **Deployment**: [Vercel](https://vercel.com/) (Atomic Deploys)
- **Aesthetics**: Dark-mode-first, High-typography, Glassmorphism.

---

## Maintenance Guide

### 1. Adding New Insights (Blog Posts)
Insights are stored in `src/content/insights/`. To add a new one:
1. Create a new `.md` or `.mdx` file in `src/content/insights/`.
2. Add the required frontmatter:
   ```yaml
   ---
   title: "Your Post Title"
   date: 2026-03-04
   summaryImage: "image_name.png"
   tags: ["ai", "pm"]
   draft: false
   ---
   ```
3. Your post will automatically appear on the `/insights` page.

### 2. Adding New Builds (Projects)
Builds are stored in `src/content/builds/`.
1. Create a new `.md` file in `src/content/builds/`.
2. This is best used for deeper architectural case studies of things you have built.

### 3. Updating Images
Place all images in the `public/images/` folder. You can reference them in Markdown as `/images/your-image.png`.

---

## Deployment Workflow (The "Builder" Way)

You no longer need a `deploy.sh` script! 

1. **Local Changes**: Make your edits in VS Code.
2. **Commit & Push**:
   ```bash
   git add .
   git commit -m "Update insights"
   git push origin main
   ```
3. **Automated Magic**: Once pushed to GitHub, **Vercel** will automatically detect the change, build the new site, and deploy it to `cloudrace.info` in seconds.

### Preview Deploys
If you create a new branch, Vercel will give you a unique "Preview URL" so you can test changes before merging them into `main`.

---

## Development
To run the site locally for testing:
```bash
npm run dev
```
Then open `http://localhost:4321` in your browser.
