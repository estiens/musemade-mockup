#!/usr/bin/env python3
"""Assemble the self-contained pages from src/ templates + src/assets.

Each template carries tokens the build replaces:
    /*FONTS*/    the @font-face block (Cinzel + Cormorant Garamond, base64 woff2)
    /*TOKENS*/   a `const TOKENS = {...}` line of the palettes, read out of the
                 :root blocks of the real page templates (styleguide.tpl only)

Images are handled separately: every `<img data-img="key">` gets its base64 data
URI written straight into a `src` attribute. They used to be applied by script
from a lookup object, which meant no script, no imagery -- on the page whose job
is selling the book. Each image is used exactly once, so the object bought
nothing anyway.

The styleguide reads its swatches from TOKENS rather than hard-coding them, so a
color can never be right on the site and stale on the page that documents it.

Run:  python3 build.py
"""
import base64, json, pathlib, re

ROOT = pathlib.Path(__file__).parent
ASSETS = ROOT / "src" / "assets"

# which images each page needs: {template: {js key: asset file}}
PAGES = {
    "index":      {"p33L": "hero.webp"},
    "workbook":   {"hero": "hero.webp", "sheet": "sheet.webp",
                   "mosaic": "mosaic.webp", "cut": "cut.webp"},
    "styleguide": {},
}

# which template's palette each styleguide theme documents
THEMES = {"dark": "index", "light": "workbook"}

MIME = {".webp": "image/webp", ".png": "image/png", ".jpg": "image/jpeg"}


def data_uri(name):
    path = ASSETS / name
    mime = MIME[path.suffix]
    return f"data:{mime};base64," + base64.b64encode(path.read_bytes()).decode()


def palette(page):
    """The custom properties declared in a template's :root block."""
    css = (ROOT / "src" / f"{page}.tpl").read_text()
    match = re.search(r":root\s*\{(.*?)\}", css, re.S)
    assert match, f"{page}: no :root block to read the palette from"
    body = re.sub(r"/\*.*?\*/", "", match.group(1), flags=re.S)   # drop inline comments
    return dict(re.findall(r"--([\w-]+)\s*:\s*([^;]+);", body))


def build(page, images):
    template = (ROOT / "src" / f"{page}.tpl").read_text()
    fonts = (ASSETS / "fonts.css").read_text().strip()

    html = template.replace("/*FONTS*/", fonts)

    for key, file in images.items():
        marker = f'data-img="{key}"'
        assert html.count(marker) == 1, f"{page}: {marker} appears {html.count(marker)}x, want 1"
        html = html.replace(marker, f'src="{data_uri(file)}"')

    unresolved = re.findall(r'data-img="([^"]+)"', html)
    assert not unresolved, f"{page}: no asset mapped for {', '.join(unresolved)}"

    if "/*TOKENS*/" in html:
        tokens = {theme: {k: v.strip() for k, v in palette(src).items()}
                  for theme, src in THEMES.items()}
        html = html.replace("/*TOKENS*/",
                            "const TOKENS=" + json.dumps(tokens, separators=(",", ":")) + ";")

    left = [t for t in ("/*FONTS*/", "/*TOKENS*/") if t in html]
    assert not left, f"{page}: token left unreplaced: {', '.join(left)}"

    out = ROOT / f"{page}.html"
    out.write_text(html)
    print(f"{out.name:16} {len(html)//1024:>5} KB")


if __name__ == "__main__":
    for page, images in PAGES.items():
        build(page, images)
