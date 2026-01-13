# Deploy to GitHub Pages - Quick Guide

## Step 1: Create GitHub Repository

```bash
# Initialize git if not already done
git init

# Add all files
git add .

# Commit
git commit -m "Add The Terrarium Job comic reader"

# Create repository on GitHub, then:
git remote add origin https://github.com/YOUR-USERNAME/woo-stories.git
git branch -M main
git push -u origin main
```

## Step 2: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** (top right)
3. Click **Pages** (left sidebar)
4. Under "Build and deployment":
   - **Source:** Deploy from a branch
   - **Branch:** `main`
   - **Folder:** **`/ (root)`** ← Important: Use root, not /docs
5. Click **Save**

**Why root?** Images are stored at project root (`01_the_terrarium_job/pages/`). Serving from root allows access to both `/docs/` pages and root-level assets.

## Step 3: Wait & Access

- GitHub Pages builds in 1-2 minutes
- You'll see a green box with your URL:
  ```
  Your site is live at https://YOUR-USERNAME.github.io/woo-stories/
  ```

## Troubleshooting

### Images not loading?

**Problem:** Images return 404 errors

**Solution:** Use absolute paths from repo root. For repo `divydovy/a8cstories`:
```javascript
// Correct - absolute path with repo name
image: "/a8cstories/01_the_terrarium_job/pages/page_01.png"

// Incorrect - relative paths don't work
image: "../../01_the_terrarium_job/pages/page_01.png"
```

GitHub Pages serves your repo at `username.github.io/repo-name/`, so absolute paths must include the repo name.

### 404 Error?

**Problem:** GitHub Pages shows 404 or README

**Solutions:**
1. Check **`/ (root)`** is selected in Settings → Pages (not `/docs`)
2. Ensure root `index.html` redirects to `/docs/`
3. Wait 2-3 minutes after enabling Pages
4. Hard refresh browser (Cmd+Shift+R or Ctrl+Shift+R)
5. Clear browser cache if still seeing old content

### CSS/JS not working?

**Problem:** Styling looks broken

**Solution:** All CSS and JS is embedded in `index.html`, so this shouldn't happen. If it does:
1. Check browser console for errors (F12)
2. Verify GitHub Pages URL ends with `/` (e.g., `.../woo-stories/`)

## Custom Domain (Optional)

Want `comic.yourdomain.com` instead of GitHub URL?

1. Settings → Pages → Custom domain
2. Enter your domain
3. Add CNAME record in your DNS:
   ```
   comic.yourdomain.com → YOUR-USERNAME.github.io
   ```

## Preview Locally First

Before pushing, test locally:

```bash
# Run from project root (not docs folder)
python3 -m http.server 8000
```

Visit:
- Library: http://localhost:8000/docs/
- Story: http://localhost:8000/docs/01-terrarium-job/

**Note:** Must run from project root so images at `01_the_terrarium_job/pages/` are accessible.

Press Ctrl+C to stop server.

## Quick Updates

After making changes:

```bash
git add .
git commit -m "Update comic reader"
git push
```

GitHub Pages auto-deploys in 1-2 minutes.

---

## Current Deployment

**Repository:** https://github.com/divydovy/a8cstories
**Live Site:** https://divydovy.github.io/a8cstories/

**Site features:**
- ✅ Multi-story library structure
- ✅ 14-page interactive comic reader
- ✅ Thumbnail navigation
- ✅ Keyboard shortcuts (← →)
- ✅ Mobile-friendly responsive design
- ✅ Automattic brand colors
- ✅ No build process required
