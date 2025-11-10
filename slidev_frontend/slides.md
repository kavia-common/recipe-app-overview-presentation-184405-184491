---
# Global deck settings
title: "Recipe App — Overview & Architecture"
info: |
  Slidev deck showcasing the Recipe App: features, architecture, benefits, and demo.
  Theme: Ocean Professional — blue primary (#2563EB) with amber accents (#F59E0B).
class: text-left
mdc: true
transition: fade-out
remoteAssets: true
download: false
monaco: true
highlighter: shiki
lineNumbers: false
fonts:
  sans: Inter, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Helvetica Neue, Arial
  mono: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace
css: |
  @import "./style.css";
---

layout: center
class: text-center
---

# Recipe App
<div class="title-slide with-hero-glow" style="background: linear-gradient(180deg, rgba(37,99,235,0.10), rgba(243,244,246,0.06)); border-radius: 20px; box-shadow: 0 10px 28px rgba(0,0,0,0.12);">
  <div class="hero-copy">
    <h2 class="text-hero" style="color:#2563EB">Overview & Architecture</h2>
    <p class="subtitle text-md" style="color:#111827">Modern recipe discovery, planning, and cooking assistance</p>
    <div class="subtitle text-xs" style="color:#6b7280">Ocean Professional Theme</div>
    <div class="hero-ctas mt-2">
      <button class="btn-primary" style="background:#2563EB;color:#ffffff">Start</button>
      <button class="btn-secondary" style="border-color:#2563EB">Agenda</button>
    </div>
  </div>
</div>

<!-- Speaker notes -->
<!--
Introduce the Recipe App. Call out the goals: discovery, planning, cooking, sharing.
-->

---

# App Overview

<div class="split-cols mt-2">
  <div class="left">
    <div class="feature-card">
      <div class="eyebrow">Purpose</div>
      <p class="muted">Help users discover, save, and cook recipes with a delightful and accessible experience.</p>
    </div>
    <div class="feature-card">
      <div class="eyebrow">Goals</div>
      <ul class="points-clean">
        <li>Frictionless browsing and search</li>
        <li>Personalized recommendations</li>
        <li>Seamless planning and shopping</li>
        <li>Reliable performance online and offline</li>
      </ul>
    </div>
  </div>
  <div class="right">
    <div class="glass-frame tall">
      <div class="placeholder">Illustration: User explores recipes ➜ plans meals ➜ shops ➜ cooks</div>
    </div>
  </div>
</div>

<!-- Speaker notes -->
<!--
Emphasize the end-to-end flow and focus on accessibility.
-->

---

# Features — Discovery and Engagement

<div class="card-grid three mt-2">
  <div class="feature-card">
    <div class="eyebrow" style="background:#2563EB22;border-color:#2563EB44">Auth</div>
    <h3 class="feature-title">User Accounts</h3>
    <ul class="points-clean">
      <li>Sign up / login</li>
      <li>Profile & preferences</li>
      <li>Privacy controls</li>
    </ul>
  </div>
  <div class="feature-card">
    <div class="eyebrow" style="background:#2563EB22;border-color:#2563EB44">Explore</div>
    <h3 class="feature-title">Browse & Search</h3>
    <ul class="points-clean">
      <li>Full-text search</li>
      <li>Filters: cuisine, diet, time, difficulty</li>
      <li>Rich categories and tags</li>
    </ul>
  </div>
  <div class="feature-card">
    <div class="eyebrow" style="background:#F59E0B22;border-color:#F59E0B55">Engage</div>
    <h3 class="feature-title">Favorites & Saves</h3>
    <ul class="points-clean">
      <li>Save recipes to collections</li>
      <li>Sync across devices</li>
      <li>One-tap access</li>
    </ul>
  </div>
</div>

---

# Features — Social and Planning

<div class="card-grid three mt-2">
  <div class="feature-card">
    <div class="eyebrow" style="background:#F59E0B22;border-color:#F59E0B55">Community</div>
    <h3 class="feature-title">Ratings & Comments</h3>
    <ul class="points-clean">
      <li>Star ratings</li>
      <li>Comment threads with moderation</li>
      <li>Helpful tips and substitutions</li>
    </ul>
  </div>
  <div class="feature-card">
    <div class="eyebrow" style="background:#2563EB22;border-color:#2563EB44">Utilities</div>
    <h3 class="feature-title">Shopping Lists</h3>
    <ul class="points-clean">
      <li>Auto-generate from selected recipes</li>
      <li>De-duplicate ingredients</li>
      <li>Shareable lists</li>
    </ul>
  </div>
  <div class="feature-card">
    <div class="eyebrow" style="background:#2563EB22;border-color:#2563EB44">Planner</div>
    <h3 class="feature-title">Meal Planning</h3>
    <ul class="points-clean">
      <li>Weekly calendar</li>
      <li>Portion and nutrition goals</li>
      <li>Export to calendar</li>
    </ul>
  </div>
</div>

---

# Features — Reliability and Accessibility

<div class="card-grid three mt-2">
  <div class="feature-card">
    <div class="eyebrow">Offline</div>
    <h3 class="feature-title">Offline Caching</h3>
    <ul class="points-clean">
      <li>Recently viewed recipes available offline</li>
      <li>Service worker caching strategies</li>
      <li>Graceful fallbacks</li>
    </ul>
  </div>
  <div class="feature-card">
    <div class="eyebrow">Notify</div>
    <h3 class="feature-title">Notifications</h3>
    <ul class="points-clean">
      <li>New recipe highlights</li>
      <li>Meal reminders</li>
      <li>Shopping list nudges</li>
    </ul>
  </div>
  <div class="feature-card">
    <div class="eyebrow">A11y</div>
    <h3 class="feature-title">Accessibility</h3>
    <ul class="points-clean">
      <li>Keyboard-first navigation</li>
      <li>Color contrast and text scaling</li>
      <li>ARIA-compliant components</li>
    </ul>
  </div>
</div>

---

# Architecture — High-Level

```mermaid
%%{init: {
  "theme": "base",
  "themeVariables": {
    "primaryColor": "#2563EB",
    "primaryTextColor": "#111827",
    "lineColor": "#94a3b8",
    "tertiaryColor": "#F59E0B"
  }
}}%%
flowchart LR
    A[🧑‍🍳 Frontend (Vue/Slidev)\nSPA / PWA] -->|HTTPS| B[🔗 Backend API (Placeholder)]
    B --> C[(📦 Data Storage\nRecipes, Users, Ratings)]
    B --> D[(🧠 Cache/Edge)]
    A -.-> E{.env config\nVITE_API_BASE,\nVITE_BACKEND_URL,\nVITE_WS_URL}
    E -.injects.-> A
    E -.injects.-> B

    style A fill:#ffffff,stroke:#2563EB,stroke-width:2px,color:#111827
    style B fill:#ffffff,stroke:#2563EB,stroke-dasharray: 5 3,color:#111827
    style C fill:#f9fafb,stroke:#F59E0B,color:#111827
    style D fill:#f9fafb,stroke:#2563EB,color:#111827
    style E fill:#f9fafb,stroke:#94a3b8,color:#111827
```

Note: Environment variables are for configuration awareness only; the deck does not require any runtime API calls.

---

# Architecture — Frontend Details

- Framework: Vue 3 + Vite
- Presentation: Slidev (this deck) for documentation and demos
- State: Local state + browser storage for offline caching
- Styling: Ocean Professional theme
- Config awareness:
  - VITE_API_BASE
  - VITE_BACKEND_URL
  - VITE_FRONTEND_URL
  - VITE_WS_URL
  - VITE_NODE_ENV

```ts {monaco} {lines:false}
const config = {
  api: import.meta.env.VITE_API_BASE || "https://api.example.com", // not used at runtime in this deck
  env: import.meta.env.VITE_NODE_ENV || "development",
  ws: import.meta.env.VITE_WS_URL || "wss://example.com",
}
console.log("Config awareness only:", config)
```

<!-- Speaker notes -->
<!--
Reinforce that the deck is self-contained and does not call external APIs.
-->

---

# Benefits

<div class="stats-band mt-2">
  <div class="stat-card">
    <div class="stat-number">Faster</div>
    <div class="stat-label">Onboarding</div>
  </div>
  <div class="stat-card">
    <div class="stat-number">Scalable</div>
    <div class="stat-label">Architecture</div>
  </div>
  <div class="stat-card">
    <div class="stat-number">Robust</div>
    <div class="stat-label">Performance</div>
  </div>
</div>

<div class="card-grid three mt-2">
  <div class="feature-card">
    <h3 class="feature-title">Maintainability</h3>
    <ul class="points-clean">
      <li>Modular components</li>
      <li>Clear boundaries between layers</li>
      <li>Typed code paths</li>
    </ul>
  </div>
  <div class="feature-card">
    <h3 class="feature-title">User Delight</h3>
    <ul class="points-clean">
      <li>Modern UX with subtle gradients and shadows</li>
      <li>Consistent, accessible design system</li>
      <li>Fast interactions</li>
    </ul>
  </div>
  <div class="feature-card">
    <h3 class="feature-title">Operational Excellence</h3>
    <ul class="points-clean">
      <li>Config-driven deployments</li>
      <li>Caching and offline-first strategies</li>
      <li>Observability hooks</li>
    </ul>
  </div>
</div>

---

# Live Demo

- Open Preview: http://localhost:3000
- Navigation tips:
  - Space / Arrow Keys: next/previous
  - O: overview
  - S: presenter mode
  - E: open editor

<div class="section-divider"></div>

```bash
# Dev (already configured for port 3000)
pnpm install
pnpm dev
# Then open http://localhost:3000
```

<!-- Speaker notes -->
<!--
Remind keyboard shortcuts and that the server is already configured for port 3000 in vite.config.ts.
-->

---

# Closing & Next Steps

<div class="cta-band">
  <div>
    <div class="overline" style="color:#2563EB">Continue the Journey</div>
    <h2 class="text-hero">Build. Taste. Share.</h2>
    <p class="muted">Try the Recipe App demo and contribute feedback.</p>
    <div class="cta-actions">
      <button class="btn-primary" style="background:#2563EB;color:#fff">View Prototype</button>
      <button class="btn-secondary" style="border-color:#2563EB">Read Docs</button>
    </div>
  </div>
  <div>
    <div class="card">
      <div class="eyebrow">Links</div>
      <ul class="points-clean">
        <li>Preview: http://localhost:3000</li>
        <li>Shortcuts: Space/Arrows · O · S · E</li>
        <li>Contact: team@recipeapp.local</li>
      </ul>
      <div class="muted small mt-4">Thank you!</div>
    </div>
  </div>
</div>

---
layout: center
class: text-center
---

# Thank You

Questions?

<div class="mt-4 subtle">Space/←/→ to navigate • O for overview • S presenter mode</div>
