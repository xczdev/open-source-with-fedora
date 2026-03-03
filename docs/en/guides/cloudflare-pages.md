# Deploy on Cloudflare Pages

Cloudflare Pages works well with MkDocs because MkDocs outputs a static site.

## Option A: Connect GitHub repository directly (recommended)

1. In Cloudflare Dashboard, go to `Workers & Pages` and create a new Pages project.
2. Connect this GitHub repository.
3. Use these build settings:

- Framework preset: `None`
- Build command:

```bash
pip install -r requirements.txt && mkdocs build
```

- Build output directory: `site`
- Environment variable: `PYTHON_VERSION=3.12`

The project includes `.python-version` (`3.12`) so local and CI builds stay aligned.

4. Save and deploy.

## Option B: Deploy manually with Wrangler

Build locally:

```bash
mkdocs build
```

Deploy:

```bash
npx wrangler pages deploy site --project-name <your-project-name>
```

## Notes

- If your site is deployed under a subpath, configure `site_url` in `mkdocs.yml`.
- Keep docs in `docs/` and commit changes to trigger automatic deploys.
