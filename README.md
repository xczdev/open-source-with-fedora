# open-source-with-fedora

Documentation website scaffolded with MkDocs and Material for MkDocs.

Supports two languages:

- English docs: `docs/en/`
- Chinese docs: `docs/cn/`

## Deployment target

Primary deployment target is Cloudflare Pages.

## Cloudflare Pages

Use these settings when connecting this repository in Cloudflare Pages:

- Framework preset: `None`
- Build command: `pip install -r requirements.txt && mkdocs build`
- Build output directory: `site`
- Environment variable: `PYTHON_VERSION=3.12`

Python runtime is pinned in `.python-version` to keep local and CI builds consistent.

## Public repository safety

- Never commit API tokens, passwords, or private keys.
- Cloudflare tokens should be set only in Cloudflare dashboard environment variables.
- Secret-like files are ignored by `.gitignore` (for example `.env*`, `*.pem`, `*.key`).

More details:

- English: `docs/en/guides/cloudflare-pages.md`
- 中文: `docs/cn/guides/cloudflare-pages.md`
