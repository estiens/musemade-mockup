# Muse Made Coaching — musemadecoaching.com

Direction **C “Gilt”** was chosen. The two live pages are at the repo root; the six original
exploration mockups are in `mockups/`.

| File | What it is |
|---|---|
| `index.html` | Landing page — dark gilt, the archway/portal + key marks from the business card |
| `workbook.html` | Product page — light gilt, the Modern Mantras Workbook (print edition) |
| `mockups/` | The six original direction mockups, plus the gallery that compared them |

Both root pages are self-contained: fonts and images are embedded as base64, so they open
offline, from `file://`, or over email with nothing to fetch.

## Building

The root pages are generated. Edit the templates, not the HTML.

```bash
python3 build.py        # src/*.tpl + src/assets/  ->  index.html, workbook.html
```

- `src/index.tpl`, `src/workbook.tpl` — the pages, with two tokens: `/*FONTS*/` and `/*IMG*/`
- `src/assets/fonts.css` — Cinzel + Cormorant Garamond as base64 woff2
- `src/assets/*.webp` — the workbook imagery, cropped from `book_screenshots/`

To regenerate imagery from the source PDF pages, see the crop recipes in “Imagery” below.

## The marks

The business card carries two symbols, and they are the fixed points of the design —
they matter more than the palette:

- **The lit archway / portal**, from the back of the card. It appears on dark grounds:
  the centre of the landing hero, and the closing panel of the workbook page. The landing
  hero also stands *inside* a vast, faint version of the same arch.
- **The skeleton key**, echoing the front of the card. It appears on light grounds, and as
  the section divider on the landing page.

Dark ground gets the arch, light ground gets the key — the same split the card makes.

## Imagery

`book_screenshots/ModernMantrasWorkbook_5.28_Final.pdf/` holds 58 page images from the
workbook PDF. Each is a two-page spread: the **left half** is an illustrated mantra, the
**right half** is its worksheet. Spreads 4–55 are the 52 mantras; 56–57 are the blank pages.

```bash
SRC="book_screenshots/ModernMantrasWorkbook_5.28_Final.pdf"
magick "$SRC/33.png" -crop 50%x100%+0+0   +repage -resize 760x -quality 84 src/assets/hero.webp
magick "$SRC/5.png"  -crop 50%x100%+588+0 +repage -resize 780x -quality 82 src/assets/sheet.webp
magick "$SRC/26.png" -crop 50%x100%+0+0   +repage -resize 760x -quality 82 src/assets/cut.webp
```

The mosaic is all 52 mantra pages tiled small enough to read as texture rather than as a
substitute for the book:

```bash
for i in $(seq 4 55); do
  magick "$SRC/$i.png" -crop 50%x100%+0+0 +repage -resize 150x /tmp/mos/$(printf '%02d' $i).png
done
magick montage /tmp/mos/*.png -tile 13x4 -geometry 150x227+4+4 -background '#F5F0E8' \
  -quality 80 src/assets/mosaic.webp
```

## Squarespace

These pages are the visual specification. The site itself lands in Squarespace, so two
things here are deliberately **not** functional, and are marked in-page with a dashed
“Squarespace” box:

- **The inquiry form** on `index.html` becomes a Squarespace **Form Block**. The styling is
  the deliverable; the block handles delivery, storage and spam.
- **Add to Cart** on `workbook.html` becomes the product’s **Add to Cart block**. Real
  inventory, tax and shipping flow through Squarespace Commerce at checkout.

The price ledger on the workbook page ($25.00 + $1.84 tax + $5.00 shipping = $31.84) is shown
for reference. Once live, those numbers come from the shop’s own tax and shipping settings —
do not hard-code them.

Porting notes:

- Cinzel and Cormorant Garamond are both in Squarespace’s font library. Drop the embedded
  base64 `@font-face` block; select the fonts in the style editor instead.
- Images upload to Squarespace’s CDN. Drop the base64 data URIs and the small `IMG` script.
- Everything else is plain CSS and inline SVG, which goes into Design → Custom CSS and
  Code Blocks.

## Still open

- **About copy.** `index.html` has a built and styled About section with a `Copy pending`
  placeholder. Two or three short paragraphs drop straight in.
- **Page count.** The product copy says “52 mantras · twelve themes” because that is what the
  PDF shows. The printed page count is not asserted anywhere — confirm it before launch.

## Publishing

`.nojekyll` is present so GitHub never runs these through Jekyll. Serve the repo root from
GitHub Pages (Settings → Pages → Source), or just open the files directly.
