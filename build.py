#!/usr/bin/env python3
"""Assemble the self-contained pages from src/ templates + src/assets.

Each template has two tokens:
    /*FONTS*/   the @font-face block (Cinzel + Cormorant Garamond, base64 woff2)
    /*IMG*/     a `const IMG = {...}` line of base64 data URIs

Run:  python3 build.py
"""
import base64, json, pathlib

ROOT = pathlib.Path(__file__).parent
ASSETS = ROOT / "src" / "assets"

# which images each page needs: {template: {js key: asset file}}
PAGES = {
    "index":    {"p33L": "hero.webp"},
    "workbook": {"hero": "hero.webp", "sheet": "sheet.webp",
                 "mosaic": "mosaic.webp", "cut": "cut.webp"},
}

MIME = {".webp": "image/webp", ".png": "image/png", ".jpg": "image/jpeg"}


def data_uri(name):
    path = ASSETS / name
    mime = MIME[path.suffix]
    return f"data:{mime};base64," + base64.b64encode(path.read_bytes()).decode()


def build(page, images):
    template = (ROOT / "src" / f"{page}.tpl").read_text()
    fonts = (ASSETS / "fonts.css").read_text().strip()
    uris = {key: data_uri(file) for key, file in images.items()}
    js = "const IMG=" + json.dumps(uris, separators=(",", ":")) + ";"

    html = template.replace("/*FONTS*/", fonts).replace("/*IMG*/", js)
    assert "/*FONTS*/" not in html and "/*IMG*/" not in html, f"{page}: token left unreplaced"

    out = ROOT / f"{page}.html"
    out.write_text(html)
    print(f"{out.name:16} {len(html)//1024:>5} KB")


if __name__ == "__main__":
    for page, images in PAGES.items():
        build(page, images)
