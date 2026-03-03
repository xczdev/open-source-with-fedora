---
title: 部署到 Cloudflare Pages
weight: 2
---

Hugo 输出纯静态站点，部署到 Cloudflare Pages 非常简单。

## 方案 A：直接连接 GitHub 仓库（推荐）

1. 在 Cloudflare 控制台进入 `Workers & Pages`，创建新的 Pages 项目。
2. 连接当前 GitHub 仓库。
3. 使用以下构建设置：

- **Framework preset**: `None`
- **Build command**: `hugo --minify`
- **Build output directory**: `public`
- Environment variables：无需设置

4. 保存并部署。

完成！Cloudflare Pages 会在每次推送时自动构建和部署。

## 方案 B：使用 Wrangler 手动部署

本地构建：

```bash
hugo --minify
```

部署：

```bash
npx wrangler pages deploy public --project-name <your-project-name>
```

## 优势

- ⚡ 构建速度快：~2-5 秒（vs MkDocs 的 30-60 秒）
- 📦 无依赖：Hugo 是单个二进制文件
- 🎨 Dark 模式：hugo-book 主题内置深色模式切换
- 📝 纯 Markdown：所有内容都是 Markdown 文件

## 常见问题

**Q: 如何自定义颜色？**

编辑 `config.toml` 中的 `[params]` 部分，或在 `static/custom.css` 中添加自定义 CSS。

**Q: 如何添加新页面？**

运行 `hugo new content/docs/my-page/_index.md`，然后编辑该文件。
