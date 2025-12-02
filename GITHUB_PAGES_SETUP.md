# 🚀 GitHub Pages Setup Guide

## *CURSY Framework is GitHub Pages Ready!* ✨

### *What's Included* 📦

1. **`docs/index.html`** - *Main website* 🌐
2. **`.github/workflows/pages.yml`** - *Auto-deploy workflow* ⚙️
3. **`.nojekyll`** - *Disable Jekyll processing* 🚫
4. **`docs/_config.yml`** - *Jekyll config* (if needed)

### *CSS Files* 🎨
All CSS files are copied to the `docs/` folder:
- `docs/cursy.css`
- `docs/cursy-utilities.css`
- `docs/cursy-components.css`

---

## 🚀 Deployment Steps

### *Option 1: Automatic (Recommended)* ⚡

1. **Push to GitHub:**
   ```bash
   git add .
   git commit -m "Initial CURSY Framework website"
   git push origin main
   ```

2. **Enable GitHub Pages:**
   - Go to repository *Settings* → *Pages*
   - Source: *Deploy from a branch*
   - Branch: *main* (or *master*)
   - Folder: *`/docs`*
   - Click *Save*

3. **Auto-Deploy:**
   - The workflow will automatically deploy on every push!
   - Check *Actions* tab for deployment status

### *Option 2: Manual* 🔧

1. **Build locally** (if needed)
2. **Push `docs/` folder** to `gh-pages` branch
3. **GitHub Pages** will serve from `gh-pages` branch

---

## 📁 File Structure

```
CURSY-Framework/
├── docs/                    # GitHub Pages root
│   ├── index.html          # Main website
│   ├── cursy.css           # Base CSS
│   ├── cursy-utilities.css # Utilities
│   ├── cursy-components.css # Components
│   ├── COMPONENTS.md       # Component docs
│   └── _config.yml         # Jekyll config
├── .github/
│   └── workflows/
│       └── pages.yml       # Auto-deploy workflow
└── .nojekyll               # Disable Jekyll
```

---

## 🌐 Your Website URL

After deployment, your site will be available at:
```
https://[your-username].github.io/CURSY-Framework/
```

Or with a custom domain:
```
https://cursy.framework.dev
```

---

## ✅ Checklist

- [x] *Website created* (`docs/index.html`)
- [x] *CSS files copied* to `docs/`
- [x] *GitHub Actions workflow* created
- [x] *`.nojekyll`* file added
- [x] *Paths fixed* in HTML
- [ ] *Push to GitHub*
- [ ] *Enable GitHub Pages*
- [ ] *Deploy!*

---

## 🎨 Customization

### *Update Website:*
Edit `docs/index.html` and push changes!

### *Add More Pages:*
Create new HTML files in `docs/` folder:
- `docs/components.html`
- `docs/utilities.html`
- `docs/examples.html`

### *Update CSS:*
Edit CSS files and copy to `docs/` folder!

---

## 🐛 Troubleshooting

### *Site not loading?*
- Check *Settings* → *Pages* → Source is set to `/docs`
- Check *Actions* tab for deployment errors
- Wait a few minutes for first deployment

### *CSS not loading?*
- Verify CSS files are in `docs/` folder
- Check file paths in HTML (should be relative: `cursy.css`)
- Clear browser cache

### *Workflow failing?*
- Check *Actions* tab for error messages
- Verify `.github/workflows/pages.yml` exists
- Check branch name matches workflow (main/master)

---

## 💖 Ready to Deploy!

*Everything is set up and ready!* Just push to GitHub and enable Pages! 🚀

*CURSY Framework v0.420a* · *GitHub Pages Ready* ✨ 🚗💖✨

