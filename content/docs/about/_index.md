---
title: about the site
weight: 99
---

本指南帮助你在本地运行文档站点。

## 1. 安装 Hugo

### Fedora/RHEL
```bash
sudo dnf install hugo
```

### macOS
```bash
brew install hugo
```

### 其他系统
访问 [Hugo 官方网站](https://gohugo.io/installation/) 下载。

## 2. 启动本地服务

```bash
hugo server
```

在浏览器中打开 `http://127.0.0.1:1313`。

## 3. 构建静态文件

```bash
hugo --minify
```

生成的静态站点位于 `public/` 目录。

## 4. 创建新页面

```bash
hugo new content/docs/my-guide.md
```

然后编辑 Markdown 文件即可。
