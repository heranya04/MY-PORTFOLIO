# HERANYA SHAH — Cinematic Digital Identity & Portfolio

> **"CODE. CREATE. CAPTURE."**  
> A dark, sophisticated, film-inspired personal portfolio designed for a first-year Computer Science Engineering student bridging computation and cinematography.

---

## ✦ Live Preview Options

You have two instant ways to view the website:

### Option 1: Direct File Open
Double-click `index.html` in your file explorer. It will open directly in Google Chrome, Microsoft Edge, Brave, or Firefox.

### Option 2: Local HTTP Server (Recommended)
Run the included zero-dependency PowerShell preview script:
```powershell
powershell -ExecutionPolicy Bypass -File .\preview.ps1
```
This automatically launches `http://localhost:8080` in your default browser.

---

## ✦ Workspace Recommendation

To work with this project comfortably, recommend setting this directory as your active workspace:
```
C:\Users\shahp\.gemini\antigravity\scratch\heranya-portfolio
```
In VS Code or Antigravity: `File -> Open Folder -> heranya-portfolio`.

---

## ✦ Editable Variables (`js/config.js`)

All dynamic data is centralized in **`js/config.js`**. You do not need to edit complex HTML tags to update your information.

| Variable Category | Location in `js/config.js` | What It Controls |
| :--- | :--- | :--- |
| **Personal Info** | `PORTFOLIO_CONFIG.personal` | Full Name, Portfolio Title (`HERANYA AI & DL`), Badges, Headline, Short Intro, Location, Year |
| **Contact & Links** | `PORTFOLIO_CONFIG.contact` | Email (`heranya.26bcon1957@jecrcu.edu.in`), GitHub (`heranya04`), LinkedIn (`Heranya Shah`), Instagram (`heranyaa_`) |
| **Hero Visuals** | `PORTFOLIO_CONFIG.hero` | Hero visual URL, REC label (`REC ● 24 FPS`), aspect ratio (`2.39 : 1`), lens tag (`35MM T1.5`) |
| **About Section** | `PORTFOLIO_CONFIG.about` | Personal statement quote, biography paragraphs, portrait image, "Currently Learning", "Currently Exploring" |
| **Philosophy & Ticker** | `PORTFOLIO_CONFIG.philosophy` | Philosophy quote, narrative on code & cinema overlap, marquee words (`CODE`, `CREATE`, `CAPTURE`, etc.) |
| **Selected Projects** | `PORTFOLIO_CONFIG.projects` | Project numbers (`01`, `02`, `03`), titles, subtitles, descriptions, tech tags, GitHub URLs, live URLs |
| **Creative Portfolio** | `PORTFOLIO_CONFIG.creativeGallery`| Photos, videos, color grades, visual experiments, camera specs, descriptions, aspect ratios |
| **Skills Matrix** | `PORTFOLIO_CONFIG.skills` | Tech & Creative skills with honest badges (`Comfortable`, `Learning`, `Exploring` — no fake progress bars!) |
| **Learning Timeline** | `PORTFOLIO_CONFIG.timeline` | 2026 milestones and future milestones labeled as goals |
| **Experience** | `PORTFOLIO_CONFIG.experience` | `"Currently building experience."` banner, clubs, hackathons, workshops, collaborations |
| **Obsessions** | `PORTFOLIO_CONFIG.currentlyObsessed` | 6 personal touch cards (technologies, projects, music, film, camera techniques, experiments) |

---

## ✦ Key Architectural Features

- **Cinematic Aesthetic**: Charcoal dark theme (`#09090b`), off-white typography, warm bronze/amber accent (`#e58249`), thin borders, and subtle film grain overlay.
- **Custom Desktop Cursor**: Interactive dot and lag-follower ring with contextual modes (`VIEW` over creative images, `EXPLORE` over project cards, and expansion on buttons). Automatically disabled on mobile/touch screens.
- **Interactive Lightbox Modal**: High-res viewer for creative works with categories (`ALL`, `PHOTO`, `VIDEO`, `EDIT`, `EXPERIMENTS`), previous/next navigation, and `Escape`/Arrow key accessibility.
- **Functional Contact Form**: Client-side field validation (name, email syntax, message length) with feedback alerts and automatic `mailto:` generation.
- **Fully Responsive**: Fluid typography (`clamp()`) and asymmetric editorial grid that adapts cleanly from 320px mobile screens to large desktop monitors.
- **Zero-Bloat Performance**: Instant load times, GPU-accelerated CSS transforms, preconnected Google Fonts (`Syne`, `Space Grotesk`, `Plus Jakarta Sans`), and zero npm dependencies required.

---

## ✦ Deployment to GitHub Pages

Since your GitHub username is **`heranya04`**, you can host this for free on GitHub Pages:

1. Create a repository on GitHub named `heranya04.github.io` (or `portfolio`).
2. In PowerShell inside this directory:
   ```powershell
   git init
   git add .
   git commit -m "Initial release of cinematic portfolio"
   git branch -M main
   git remote add origin https://github.com/heranya04/heranya04.github.io.git
   git push -u origin main
   ```
3. In GitHub Repository Settings → **Pages** → Source: **Deploy from branch `main`**.
4. Your website will be live at:
   `https://heranya04.github.io/`

---

## ✦ Project Directory Tree

```
heranya-portfolio/
├── index.html           # Main semantic HTML5 structure & SEO metadata
├── css/
│   └── styles.css       # Cinematic dark design system, film grain, animations
├── js/
│   ├── config.js        # Centralized editable variables & portfolio data
│   ├── cursor.js        # Custom desktop cursor with VIEW / EXPLORE modes
│   ├── lightbox.js      # Creative gallery fullscreen lightbox viewer
│   ├── contact.js       # Contact form validation & email transmission
│   └── main.js          # DOM hydration & scroll animations
├── preview.ps1          # Zero-dependency local preview runner
└── README.md            # Documentation & deployment guide
```
