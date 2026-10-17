---
title: "Learner Studio"
date: 2026-05-15T12:00:00-04:00
draft: false
tags: ["projects", "ai", "nextjs", "education"]
categories: ["Projects"]
summary: "An AI-native, artifact-driven learning platform with an 8-axis competency radar and personalized multi-modal curriculum."
---

## Learner Studio

🎓 **AI-Native, Artifact-Driven Competency Assessment & Mastery**

Learner Studio is an AI-native learning engine designed to evaluate real-world builder capability. Learners submit authentic GitHub code repositories and receive an automated multi-agent diagnosis across an 8-dimension competency radar, targeted lesson modules, and closed-loop re-assessment cycles.

Originated from an ADK agent training initiative and generalized into a pluggable multi-domain learning platform.

### How It Works:
```text
Submit GitHub repo
    → Multi-agent analysis (AST parse + static scan)
    → 8-axis Competency Radar
    → Gaps identified → Learning modules assigned
    → Learner completes: Reading · Video · Whiteboard · Sandbox · Quiz
    → Re-submit → Radar expands → Repeat
```

### The Tech Stack:
- **Frontend**: Next.js 16 (App Router), TypeScript, Tailwind CSS v4
- **Design System**: Sahara (warm linen & terracotta theme)
- **Visualizations**: Recharts 8-axis radar charts
- **Analysis Engine**: Python AST scoring & anti-pattern static scanners
- **Hosting Target**: Google Cloud Run

---

**Code:** [https://github.com/kanchpat/learner-studio/](https://github.com/kanchpat/learner-studio/)
