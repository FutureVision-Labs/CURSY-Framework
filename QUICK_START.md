# CURSY Framework – Quick Start Guide

## Installation

1. **Download the framework:**
   - Copy `cursy.css` to your project
   - Or link directly: `<link rel="stylesheet" href="path/to/cursy.css" />`

2. **Include Google Fonts:**
   ```html
   <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;800&family=Inter:wght@300;400;600&display=swap" rel="stylesheet" />
   ```

3. **Add scanlines effect (optional):**
   ```html
   <body class="scanlines">
   ```

## Basic Template

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My CURSY Project</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;800&family=Inter:wght@300;400;600&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="cursy.css">
</head>
<body class="scanlines">
  <div class="page">
    <header>
      <div class="nav-inner">
        <div class="brand">
          <div class="brand-mark">
            <span>MC</span>
          </div>
          <div class="brand-text">
            <div class="brand-title">My Project</div>
            <div class="brand-sub">Synthwave vibes</div>
          </div>
        </div>
        <nav>
          <ul>
            <li><a href="#about">About</a></li>
            <li><a href="#features">Features</a></li>
            <li><a href="#contact" class="btn-primary">Contact</a></li>
          </ul>
        </nav>
      </div>
    </header>

    <main>
      <section class="hero">
        <div class="hero-copy">
          <h1>Welcome to CURSY</h1>
          <p class="lede">Build beautiful synthwave interfaces</p>
          <div class="hero-actions">
            <a href="#get-started" class="btn-primary">Get Started</a>
            <a href="#learn-more" class="btn-ghost">Learn More</a>
          </div>
        </div>
      </section>

      <section>
        <div class="section-label">01 · Features</div>
        <h2 class="section-title">What Makes CURSY Special</h2>
        <div class="grid grid-3">
          <div class="card">
            <h3>Hand-Crafted</h3>
            <p>Not another AI-generated template</p>
          </div>
          <div class="card">
            <h3>Unique Colors</h3>
            <p>Green-cyan-purple-orange palette</p>
          </div>
          <div class="card">
            <h3>Animations</h3>
            <p>Custom orbit glows and light sweeps</p>
          </div>
        </div>
      </section>
    </main>

    <footer>
      Built with CURSY Framework · FutureVision Labs
    </footer>
  </div>
</body>
</html>
```

## Common Patterns

### Navigation Bar
```html
<header>
  <div class="nav-inner">
    <div class="brand">
      <div class="brand-mark"><span>LOGO</span></div>
      <div class="brand-text">
        <div class="brand-title">Site Name</div>
        <div class="brand-sub">Tagline</div>
      </div>
    </div>
    <nav>
      <ul>
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
      </ul>
    </nav>
  </div>
</header>
```

### Feature Cards
```html
<div class="grid grid-3">
  <div class="card">
    <h3>Feature One</h3>
    <p>Description here</p>
    <span class="badge">New</span>
  </div>
  <div class="card">
    <h3>Feature Two</h3>
    <p>Description here</p>
  </div>
  <div class="card">
    <h3>Feature Three</h3>
    <p>Description here</p>
  </div>
</div>
```

### Hero Section
```html
<section class="hero">
  <div class="hero-copy">
    <h1>Main Title</h1>
    <p class="lede">Subtitle or description</p>
    <div class="hero-badges">
      <div class="badge">Badge 1</div>
      <div class="badge">Badge 2</div>
    </div>
    <div class="hero-actions">
      <a href="#" class="btn-primary">Primary Action</a>
      <a href="#" class="btn-ghost">Secondary Action</a>
    </div>
  </div>
</section>
```

## Customization

### CSS Variables

Override colors in your own CSS:

```css
:root {
  --cursy-green: #22c55e;
  --cursy-cyan: #22d3ee;
  --cursy-purple: #a855f7;
  --cursy-orange: #f97316;
}
```

### Extending Components

Add your own classes that build on CURSY:

```css
.btn-custom {
  /* Extend btn-primary */
  background: linear-gradient(135deg, var(--cursy-purple), var(--cursy-orange));
}
```

## Browser Support

- Modern browsers (Chrome, Firefox, Safari, Edge)
- CSS Grid and Flexbox required
- CSS Custom Properties (variables) required

## Need Help?

- Check `docs/COMPONENTS.md` for component reference
- See `index.html` for live examples
- Open an issue on GitHub (if public)

---

**Built for FutureVision Labs / Team DC projects** 🚗💖✨

