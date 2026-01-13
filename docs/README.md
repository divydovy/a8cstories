# The Terrarium Job - Comic Reader

Web-based comic reader for "The Terrarium Job" graphic novel.

## Features

- 📖 Clean, responsive comic reading interface
- ⌨️ Keyboard navigation (← → arrow keys)
- 🖼️ Thumbnail strip for quick navigation
- 📱 Mobile-friendly design
- 🎨 WooCommerce purple branding
- ⚡ Fast loading with lazy-loaded images

## Viewing Locally

Simply open `index.html` in your web browser:

```bash
open docs/index.html
```

Or use a local server (recommended):

```bash
cd docs
python3 -m http.server 8000
```

Then visit: http://localhost:8000

## Deploying to GitHub Pages

### Option 1: Deploy from /docs folder (Recommended)

1. **Push to GitHub:**
   ```bash
   git add .
   git commit -m "Add comic reader"
   git push origin main
   ```

2. **Enable GitHub Pages:**
   - Go to your repository on GitHub
   - Settings → Pages
   - Source: "Deploy from a branch"
   - Branch: `main`
   - Folder: `/docs`
   - Click "Save"

3. **Wait 1-2 minutes**, then visit:
   ```
   https://[your-username].github.io/woo-stories/
   ```

### Option 2: Deploy from root

Move `index.html` to project root:
```bash
mv docs/index.html .
```

Update image paths in HTML from `../01_the_terrarium_job/pages/` to `01_the_terrarium_job/pages/`.

Then follow same GitHub Pages setup but choose `/root` folder.

## Project Structure

```
woo-stories/
├── docs/
│   ├── index.html          # Comic reader (you are here)
│   └── README.md           # This file
└── 01_the_terrarium_job/
    └── pages/
        ├── page_01.png     # 14 comic pages
        ├── page_02.png
        └── ...
```

## Customization

### Changing Colors

Edit the CSS in `index.html`:

```css
/* WooCommerce Purple */
background: #7F54B3;

/* Dark Background */
background: #1a1a1a;
```

### Adding More Pages

Update the `pages` array in the JavaScript:

```javascript
const pages = [
    { num: 1, title: "Your Title", image: "../path/to/image.png" },
    // Add more pages...
];
```

### Changing Metadata

Update the `<head>` section:

```html
<title>Your Comic Title</title>
<meta name="description" content="Your description">
```

## Browser Support

- ✅ Chrome/Edge (latest)
- ✅ Firefox (latest)
- ✅ Safari (latest)
- ✅ Mobile browsers

## License

© 2026 WooCommerce Stories
