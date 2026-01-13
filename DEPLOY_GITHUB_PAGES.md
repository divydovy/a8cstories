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
   - **Folder:** `/docs`
5. Click **Save**

## Step 3: Wait & Access

- GitHub Pages builds in 1-2 minutes
- You'll see a green box with your URL:
  ```
  Your site is live at https://YOUR-USERNAME.github.io/woo-stories/
  ```

## Troubleshooting

### Images not loading?

**Problem:** Paths don't work on GitHub Pages

**Solution:** Image paths are relative from `/docs/index.html`:
```
../01_the_terrarium_job/pages/page_01.png
```

This works because:
- `docs/index.html` (your HTML)
- `01_the_terrarium_job/pages/` (your images)
- Both are at the same level in the repo

### 404 Error?

**Problem:** GitHub Pages shows 404

**Solutions:**
1. Check `/docs` folder is selected in Settings → Pages
2. Ensure `index.html` exists in `/docs/` folder
3. Wait 2-3 minutes after enabling Pages
4. Hard refresh browser (Cmd+Shift+R or Ctrl+Shift+R)

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
cd docs
python3 -m http.server 8000
```

Visit: http://localhost:8000

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

**Your site will be at:**
```
https://YOUR-USERNAME.github.io/woo-stories/
```

**Comic reader features:**
- ✅ 14 pages with navigation
- ✅ Thumbnail strip
- ✅ Keyboard shortcuts (← →)
- ✅ Mobile-friendly
- ✅ WooCommerce branding
