# Getting Started

This guide helps you run the docs locally.

## 1. Create a Python virtual environment

```bash
python3 -m venv .venv
source .venv/bin/activate
```

## 2. Install dependencies

```bash
pip install -U pip
pip install -r requirements.txt
```

## 3. Start the local server

```bash
mkdocs serve
```

Open `http://127.0.0.1:8000` in your browser.

## 4. Build static files

```bash
mkdocs build
```

The generated static website is in the `site/` directory.
