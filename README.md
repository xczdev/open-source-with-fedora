# Open Source with Fedora

Documentation website built with Hugo and hugo-book theme, deployed on Cloudflare Pages.

## Features

- 📚 GitBook-like layout with hugo-book theme
- 🌙 Built-in dark/light mode toggle
- ⚡ Ultra-fast builds (~2-5 seconds)
- 🔍 Full-text search support
- 📝 Pure Markdown content

## Quick Start

### Install Hugo

**Fedora/RHEL:**
```bash
sudo dnf install hugo
```

**macOS:**
```bash
brew install hugo
```

### Local Development

```bash
hugo server
```

Open `http://127.0.0.1:1313` in your browser.

### Build Static Site

```bash
hugo --minify
```

Output is generated in the `public/` directory.

## Deployment on Cloudflare Pages

Use these settings when connecting this repository in Cloudflare Pages:

- **Framework preset**: `None`
- **Build command**: `hugo --minify`
- **Build output directory**: `public`

That's it! Pages will rebuild on every push.

## Public Repository Safety

- Never commit API tokens, passwords, or private keys
- Cloudflare tokens should be set only in Cloudflare dashboard environment variables
- Secret-like files are ignored by `.gitignore` (for example `.env*`, `*.pem`, `*.key`)

More details: [`content/docs/cloudflare-pages/_index.md`](content/docs/cloudflare-pages/_index.md).

## Hugo Theme

This site uses the [hugo-book](https://github.com/alex-shpak/hugo-book) theme by Alex Shpak.

## Creating New Pages

```bash
hugo new content/docs/my-guide/_index.md
```

Edit the generated Markdown file and it will automatically appear in the site navigation.
