# 部署到 Cloudflare Pages

MkDocs 会输出纯静态站点，因此非常适合部署到 Cloudflare Pages。

## 方案 A：直接连接 GitHub 仓库（推荐）

1. 在 Cloudflare 控制台进入 `Workers & Pages`，创建新的 Pages 项目。
2. 连接当前 GitHub 仓库。
3. 使用以下构建设置：

- Framework preset: `None`
- Build command:

```bash
pip install -r requirements.txt && mkdocs build
```

- Build output directory: `site`
- Environment variable: `PYTHON_VERSION=3.12`

仓库中已添加 `.python-version`（`3.12`），用于统一本地与 CI 的 Python 版本。

4. 保存并部署。

## 方案 B：使用 Wrangler 手动部署

本地构建：

```bash
mkdocs build
```

部署命令：

```bash
npx wrangler pages deploy site --project-name <your-project-name>
```

## 说明

- 如果站点部署在子路径下，请在 `mkdocs.yml` 中设置 `site_url`。
- 建议把内容放在 `docs/`，通过 Git 提交触发自动部署。
