# 快速开始

本指南帮助你在本地运行文档站点。

## 1. 创建 Python 虚拟环境

```bash
python3 -m venv .venv
source .venv/bin/activate
```

## 2. 安装依赖

```bash
pip install -U pip
pip install -r requirements.txt
```

## 3. 启动本地服务

```bash
mkdocs serve
```

在浏览器中打开 `http://127.0.0.1:8000`。

## 4. 构建静态文件

```bash
mkdocs build
```

生成的静态站点位于 `site/` 目录。
