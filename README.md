# A8C Stories

**Stories of entrepreneurship, creativity, and the infrastructure that makes it possible.**

[View Live Site →](https://divydovy.github.io/a8cstories/)

---

## About

A8C Stories are vision narratives that explore what Automattic's products, services, and experiences could look like in the future.

These aren't case studies or testimonials. They're aspirational stories designed to inspire shared visions we can work toward together.

---

## Current Stories

### Story 01: The Terrarium Job
A 14-page graphic novel following Alex, who wakes up with an idea for modular terrariums and launches a live store the same day with Woo's help. A vision of what's possible when infrastructure gets out of your way.

**Format:** Comic book / Graphic novel
**Length:** 14 pages, ~5 minute read
**Read:** [The Terrarium Job →](https://divydovy.github.io/a8cstories/01-terrarium-job/)

---

## Project Structure

```
a8cstories/
├── docs/                      # GitHub Pages site
│   ├── index.html            # Library landing page
│   └── 01-terrarium-job/     # Story 01 reader
├── 01_the_terrarium_job/     # Story 01 source files
│   ├── pages/                # Comic pages
│   └── [scripts & docs]
└── [documentation]
```

---

## Local Development

**View locally:**
```bash
cd docs
python3 -m http.server 8000
```

Visit: http://localhost:8000

---

## Deployment

**Quick deploy:**
```bash
./deploy.sh
```

**Manual deploy:**
```bash
git add .
git commit -m "Update"
git push origin main
```

GitHub Pages rebuilds automatically in 1-2 minutes.

---

## Adding New Stories

See `MULTI_STORY_STRUCTURE.md` for complete guide.

**Quick steps:**
1. Create source folder: `02_story_name/`
2. Add your content (pages, videos, assets)
3. Create reader: `docs/02-story-name/index.html`
4. Update library: Add card to `docs/index.html`
5. Deploy: `./deploy.sh`

---

## Tech Stack

- **Frontend:** HTML, CSS, JavaScript (no frameworks)
- **Hosting:** GitHub Pages
- **Art:** Gemini 2.5 Flash Image
- **Stories:** Dave Lockie
- **Format:** Multi-format (comics, videos, interactive)

---

## Repository

**GitHub:** https://github.com/divydovy/a8cstories
**Live Site:** https://divydovy.github.io/a8cstories/

---

## Features

✅ Multi-story library structure
✅ Responsive design (desktop, tablet, mobile)
✅ Keyboard navigation (← → arrows)
✅ Thumbnail navigation
✅ Automattic brand colors
✅ No build process required
✅ Fast loading with lazy images

---

## Documentation

- **`A8C_REBRAND_COMPLETE.md`** - Rebrand details and deployment
- **`MULTI_STORY_STRUCTURE.md`** - How to add new stories
- **`DEPLOY_GITHUB_PAGES.md`** - GitHub Pages setup
- **`COMIC_READER_SUMMARY.md`** - Story 01 reader details

---

## License

© 2026 A8C Stories
Created by Dave Lockie
Powered by Automattic + AI
