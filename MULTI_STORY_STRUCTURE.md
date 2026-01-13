# Multi-Story Library Structure

**Created:** 2026-01-13
**Purpose:** Scalable structure for WooCommerce Stories library

---

## Repository Structure

```
woo-stories/
├── docs/                                    # GitHub Pages root
│   ├── index.html                          # Library landing page ⭐ NEW
│   ├── 01-terrarium-job/                   # Story 01 reader ⭐ NEW
│   │   └── index.html                      # Comic reader
│   ├── 02-marketplace-video/               # Story 02 (future)
│   │   └── index.html
│   └── 03-your-story/                      # Story 03 (future)
│       └── index.html
├── 01_the_terrarium_job/                   # Story 01 source files
│   ├── pages/                              # Comic pages
│   ├── GRAPHIC_NOVEL_SCRIPT.md
│   └── [other docs]
├── 02_marketplace_video/                   # Story 02 source files
│   ├── scene1-the-problem.mp4
│   └── [other videos]
└── 03_your_story/                          # Story 03 source files
    └── [future content]
```

---

## How It Works

### Landing Page (docs/index.html)
- **URL:** `https://USERNAME.github.io/woo-stories/`
- **Purpose:** Story library/catalog
- **Features:**
  - Grid of story cards with covers
  - Click to enter each story
  - "Coming Soon" placeholders for future stories
  - About section explaining the project

### Individual Story Readers (docs/XX-story-name/)
- **URL:** `https://USERNAME.github.io/woo-stories/01-terrarium-job/`
- **Purpose:** Story-specific reading experience
- **Features:**
  - Optimized for that story format (comic, video, interactive)
  - Unique navigation appropriate to format
  - Story-specific metadata

### Source Files (XX_story_name/)
- **Purpose:** Original assets, scripts, documentation
- **Not in docs/:** These stay in project root
- **Referenced by:** Readers in docs/ folder

---

## Adding a New Story

### Step 1: Create Source Folder
```bash
mkdir 02_marketplace_video  # or whatever your story is
cd 02_marketplace_video
```

Add your content:
- Comics: `pages/page_01.png`, etc.
- Videos: `scene1.mp4`, etc.
- Documentation: `SCRIPT.md`, `STORYBOARD.md`, etc.

### Step 2: Create Reader Folder
```bash
mkdir docs/02-marketplace-video
```

Note the naming convention:
- Source: `02_marketplace_video` (underscore, descriptive)
- Reader: `02-marketplace-video` (hyphen, URL-friendly)

### Step 3: Create Reader HTML

**For comics:**
Copy and modify `docs/01-terrarium-job/index.html`

**For videos:**
Create video player interface

**For interactive:**
Create interactive experience

Key: Update paths to point to your source files:
```javascript
// From docs/02-marketplace-video/index.html
// To source at 02_marketplace_video/
image: "../../02_marketplace_video/pages/page_01.png"
```

Path breakdown:
- `../../` = go up two levels (from docs/02-story/ to root)
- `02_marketplace_video/` = source folder
- `pages/page_01.png` = asset

### Step 4: Update Landing Page

Edit `docs/index.html`, add story card:

```html
<a href="./02-marketplace-video/" class="story-card">
    <img src="../02_marketplace_video/cover.png" alt="Story Title" class="story-cover">
    <div class="story-info">
        <div class="story-number">Story 02</div>
        <h2 class="story-title">Your Story Title</h2>
        <p class="story-description">
            Brief description of your story...
        </p>
        <div class="story-meta">
            <span>🎬 Video series</span>
            <span>⏱️ 3 min watch</span>
        </div>
        <span class="badge">Video</span>
    </div>
</a>
```

### Step 5: Test Locally

```bash
cd docs
python3 -m http.server 8000
```

Visit:
- http://localhost:8000 (library)
- http://localhost:8000/01-terrarium-job/ (story 1)
- http://localhost:8000/02-marketplace-video/ (story 2)

### Step 6: Deploy

```bash
git add .
git commit -m "Add Story 02: [Title]"
git push
```

GitHub Pages updates in 1-2 minutes.

---

## Naming Conventions

### Source Folders (root level)
```
01_the_terrarium_job/      # Story 01 source
02_marketplace_video/      # Story 02 source
03_subscription_empire/    # Story 03 source
```
- Format: `##_descriptive_name`
- Use underscores
- Descriptive, not URL-friendly

### Reader Folders (docs/)
```
docs/01-terrarium-job/     # Story 01 reader
docs/02-marketplace-video/ # Story 02 reader
docs/03-subscription/      # Story 03 reader
```
- Format: `##-short-name`
- Use hyphens (URL-friendly)
- Short but recognizable

### URL Structure
```
https://USERNAME.github.io/woo-stories/              # Library
https://USERNAME.github.io/woo-stories/01-terrarium-job/  # Story 01
https://USERNAME.github.io/woo-stories/02-marketplace/    # Story 02
```

---

## File Organization Best Practices

### Source Folders Should Contain
```
02_story_name/
├── pages/           # Or videos/, assets/, etc.
├── SCRIPT.md        # Story script
├── STORYBOARD.md    # Visual planning
├── PROMPTS.md       # Generation prompts (if AI)
└── README.md        # Story-specific documentation
```

### Reader Folders Should Contain
```
docs/02-story-name/
├── index.html       # The reader interface
└── README.md        # Optional: Reader-specific notes
```

Keep it minimal - all CSS/JS embedded in HTML.

---

## Path Reference Guide

### From Landing Page (docs/index.html)

To story reader:
```html
<a href="./01-terrarium-job/">
```

To source assets:
```html
<img src="../01_the_terrarium_job/pages/page_01.png">
```

### From Story Reader (docs/01-terrarium-job/index.html)

To source assets:
```javascript
image: "../../01_the_terrarium_job/pages/page_01.png"
```

Back to library:
```html
<a href="../">← Back to Library</a>
```

### Path Cheat Sheet

```
docs/index.html
  → ./01-story/                    # Story reader
  → ../01_story/pages/page.png     # Source asset

docs/01-story/index.html
  → ../../01_story/pages/page.png  # Source asset
  → ../                            # Back to library
```

---

## Format-Specific Readers

### Comic Reader (like Story 01)
**Features:**
- Page navigation (prev/next)
- Thumbnail strip
- Keyboard shortcuts
- Page counter

**Template:** `docs/01-terrarium-job/index.html`

### Video Player (for Story 02)
**Features:**
- Video playlist
- Chapter markers
- Auto-advance
- Full-screen support

**Create:** New HTML with embedded video player

### Interactive Experience
**Features:**
- Custom navigation
- User choices
- Progress tracking
- State management

**Create:** Custom HTML/JS application

---

## GitHub Pages Configuration

### Settings
1. Repository Settings → Pages
2. Source: `main` branch
3. Folder: `/docs`
4. Custom domain: Optional

### URLs
```
Root:     https://USERNAME.github.io/woo-stories/
Story 01: https://USERNAME.github.io/woo-stories/01-terrarium-job/
Story 02: https://USERNAME.github.io/woo-stories/02-marketplace/
```

### Privacy
**GitHub Free:**
- Repo must be **public** for Pages to be public
- Both repo and Pages are public together

**GitHub Pro/Team/Enterprise:**
- Repo can be **private** with public Pages
- Settings → Pages → "Change visibility"

---

## Example: Adding Story 02 (Video Series)

### 1. Create source folder
```bash
# Already exists from previous work
ls 02_marketplace_video/
# scene1-the-problem.mp4
# scene2-pivot-reveal.mp4
# ...
```

### 2. Create reader
```bash
mkdir docs/02-marketplace-video
```

### 3. Create video player HTML
```html
<!DOCTYPE html>
<html>
<head>
    <title>The Marketplace Revolution</title>
    <!-- Video player CSS -->
</head>
<body>
    <video controls>
        <source src="../../02_marketplace_video/scene1-the-problem.mp4">
    </video>
    <div class="playlist">
        <!-- Scene buttons -->
    </div>
</body>
</html>
```

### 4. Update landing page
Add card to `docs/index.html` stories grid.

### 5. Test & deploy
```bash
python3 -m http.server 8000  # Test
git add . && git commit -m "Add Story 02" && git push
```

---

## Maintenance

### Updating a Story
```bash
# Update source files
nano 01_the_terrarium_job/pages/page_05.png

# Reader automatically picks up changes (uses relative paths)
# No reader edits needed unless structure changes

git add .
git commit -m "Update Story 01: Page 5"
git push
```

### Removing a Story
```bash
# Remove reader
rm -rf docs/02-marketplace-video/

# Remove source (optional - might keep for archive)
# rm -rf 02_marketplace_video/

# Update landing page
nano docs/index.html  # Remove story card

git commit -m "Remove Story 02"
git push
```

### Reordering Stories
```bash
# Rename folders to change numbers
mv 02_story/ 03_story/
mv docs/02-story/ docs/03-story/

# Update landing page story numbers
nano docs/index.html

git commit -m "Reorder stories"
git push
```

---

## Benefits of This Structure

✅ **Scalable** - Add unlimited stories
✅ **Organized** - Source separate from readers
✅ **Flexible** - Each story can have unique format
✅ **GitHub Pages Native** - No build process
✅ **URL-Friendly** - Clean URLs for sharing
✅ **Maintainable** - Update one story without touching others
✅ **Professional** - Library landing page showcases all work

---

## Current Status

**Implemented:**
- ✅ Library landing page (`docs/index.html`)
- ✅ Story 01 reader (`docs/01-terrarium-job/`)
- ✅ Proper path structure
- ✅ Coming Soon placeholders (Story 02, 03)

**Ready to Add:**
- [ ] Story 02: Marketplace Video reader
- [ ] Story 03: Your next story
- [ ] Additional stories as needed

---

## Quick Commands

**Test everything locally:**
```bash
cd docs && python3 -m http.server 8000
```

**Add new story:**
```bash
mkdir XX_story_name
mkdir docs/XX-story-name
# Create content and reader
```

**Deploy updates:**
```bash
git add .
git commit -m "Update: [description]"
git push
```

**View live site:**
```
https://YOUR-USERNAME.github.io/woo-stories/
```

---

## Questions & Answers

**Q: Can I have more than 10 stories?**
A: Yes! No limit. Just use `10_story`, `11_story`, etc.

**Q: Can stories have different formats?**
A: Yes! Comic, video, interactive, PDF, anything HTML can display.

**Q: Can I mix public and private stories?**
A: Repo privacy is all-or-nothing. But you can:
- Don't link private stories from landing page
- Require passwords (custom implementation)
- Use separate repos for private content

**Q: Can I customize the library landing page?**
A: Yes! Edit `docs/index.html` freely. It's just HTML/CSS/JS.

**Q: What if I want a custom domain?**
A: GitHub Pages supports custom domains:
1. Settings → Pages → Custom domain
2. Add CNAME record: `stories.yourdomain.com → USERNAME.github.io`

**Q: Can I have a story in multiple parts?**
A: Yes! Two approaches:
1. Multiple pages within one reader (like comic pages)
2. Multiple story folders (01a, 01b) as separate entries

**Q: Can I add analytics?**
A: Yes! Add Google Analytics or Plausible to each reader's HTML.

---

**Structure Status:** ✅ Complete and ready for scaling

**Next:** Add Story 02 video player reader, then continue growing library!

---

*Multi-story library structure by Dave Lockie*
*Implemented: 2026-01-13*
