# CURSY Framework – Component Reference

## Buttons

### `.btn-primary`
Main call-to-action button with green-cyan gradient.

```html
<a href="#" class="btn-primary">Get Started</a>
```

**Features:**
- Green-cyan gradient background
- Glow effect on hover
- Uppercase text with generous letter-spacing
- Smooth hover animations

### `.btn-ghost`
Subtle secondary button with border.

```html
<a href="#" class="btn-ghost">Learn More</a>
```

**Features:**
- Transparent background
- Border that changes color on hover
- Perfect for secondary actions

## Cards

### `.card`
Standard content card with hover effects.

```html
<div class="card">
  <h3>Card Title</h3>
  <p>Card content goes here</p>
</div>
```

**Features:**
- Subtle radial gradient background
- Green glow overlay on hover
- Rounded corners (1.1rem)
- Shadow for depth

## Badges & Pills

### `.badge`
Small tag or label badge.

```html
<span class="badge">New</span>
```

**Features:**
- Uppercase text
- Rounded pill shape
- Subtle border and background

### `.pill`
Tech stack or tag pill.

```html
<span class="pill">React</span>
<span class="pill">CSS</span>
```

**Features:**
- Smaller than badges
- Dark background
- Inline display

## Navigation

### `.brand-mark`
Circular logo/brand mark with conic gradient.

```html
<div class="brand-mark">
  <span>MC</span>
</div>
```

**Features:**
- Conic gradient (green → cyan → purple → orange)
- Glow effect
- Perfect circle (40px)

### `.brand-text`
Brand title and subtitle container.

```html
<div class="brand-text">
  <div class="brand-title">Mini-Cursy</div>
  <div class="brand-sub">CML-powered</div>
</div>
```

## Hero Sections

### `.hero`
Two-column hero layout.

```html
<section class="hero">
  <div class="hero-copy">
    <h1>Title</h1>
    <p class="lede">Subtitle</p>
  </div>
  <div class="hero-car">
    <!-- Visual element -->
  </div>
</section>
```

**Features:**
- Responsive grid layout
- Gradient text on h1
- Badge and action button support

## Grid System

### `.grid`
Basic grid container.

```html
<div class="grid grid-3">
  <div class="card">...</div>
  <div class="card">...</div>
  <div class="card">...</div>
</div>
```

**Grid Variants:**
- `.grid-3` — 3 columns (auto-fit, min 220px)
- `.grid-2` — 2 columns (auto-fit, min 300px)

## Animations

### `.scanlines`
CRT scanline effect (apply to body).

```html
<body class="scanlines">
```

### `.car-orbit`
Rotating conic gradient glow.

```html
<div class="car-orbit"></div>
```

**Animation:** 18s linear infinite rotation

### `.light-sweep`
Animated light strip.

```html
<div class="light-sweep"></div>
```

**Animation:** 4s linear infinite sweep

## Utilities

### `.section-label`
Small uppercase label for sections.

```html
<div class="section-label">01 · Section</div>
```

### `.section-title`
Section heading.

```html
<h2 class="section-title">Section Title</h2>
```

### `.lede`
Large introductory paragraph.

```html
<p class="lede">Introduction text</p>
```

