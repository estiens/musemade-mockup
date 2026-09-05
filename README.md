# Muse Made Coaching — musemadecoaching.com

A **minimal MVP**. Its one job is to give existing coaching clients a link where they can
actually buy the Modern Mantras Workbook. A fuller site comes later — scope everything
against that.

Direction **C "Gilt"** was chosen. The live pages are at the repo root; the six original
exploration mockups are archived in `data/deprecated/`.

| Path | What it is |
|---|---|
| `index.html` | Landing page — dark gilt, the archway/portal + key marks from the business card |
| `workbook.html` | Product page — light gilt, the Modern Mantras Workbook (print edition) |
| `styleguide.html` | Style reference — every color, font, size and component in both themes, with hex codes to copy |
| `src/` | Templates and assets. **Edit here, not the root HTML.** |
| `build.py` | Inlines fonts + images into the root pages |
| `data/` | Not shipped. Source imagery and archived design directions. |

All three root pages are self-contained: fonts and images are embedded as base64, so they
open offline, from `file://`, or over email with nothing to fetch. Neither client page needs
JavaScript to render — the imagery is written straight into `src`, not applied by script.

## Building

The root pages are generated. **Edit the templates, not the HTML** — a hand edit to
`index.html` is destroyed by the next build.

```bash
python3 build.py        # src/*.tpl + src/assets/  ->  index.html, workbook.html, styleguide.html
```

- `src/*.tpl` — the pages, with two tokens: `/*FONTS*/` and `/*IMG*/`
- `src/assets/fonts.css` — Cinzel + Cormorant Garamond as base64 woff2
- `src/assets/*.webp` — the workbook imagery, cropped from `data/book_screenshots/`

## The marks

The business card carries two symbols, and they are the fixed points of the design —
they matter more than the palette:

- **The lit archway / portal**, from the back of the card. It appears on dark grounds:
  the centre of the landing hero, and the closing panel of the workbook page. The landing
  hero also stands *inside* a vast, faint version of the same arch.
- **The skeleton key**, echoing the front of the card. It appears on light grounds, and as
  the section divider on the landing page.

Dark ground gets the arch, light ground gets the key — the same split the card makes.

One amendment, so the next page doesn't guess wrong: that split governs the **large** marks.
The key *additionally* serves as the running section divider on any ground, which is why it
appears on the dark About section of the landing page. The arch can't be a horizontal rule;
the key can.

## Imagery

`data/book_screenshots/ModernMantrasWorkbook_5.28_Final.pdf/` holds 58 page images from the
workbook PDF. Each is a two-page spread: the **left half** is an illustrated mantra, the
**right half** is its worksheet. Spreads 4–55 are the 52 mantras; 56–57 are the blank pages.

```bash
SRC="data/book_screenshots/ModernMantrasWorkbook_5.28_Final.pdf"
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

---

# Porting to Squarespace

These pages are the **visual specification**. The live site lands in Squarespace, and the
port is expected to be driven by an agent through Chrome. This section is written for that
agent.

## Read this first

- **`styleguide.html` is the source of truth for values.** Every hex code, font stack, size,
  letter-spacing and component state is on that page, in copyable form. Don't re-derive them
  from the templates.
- **Squarespace's admin UI changes.** The navigation paths below were accurate when written,
  but do not trust them blindly. Navigate by visible label and on-page search; if a path
  doesn't exist, find the equivalent rather than guessing at a URL.
- **Verify after every step.** Squarespace saves are explicit — an unsaved panel silently
  discards work when you navigate away. Click Save, then reload and confirm the change stuck.
- **Work in a non-live state where possible.** Build the store page and the product while the
  page is unpublished, and only publish once checkout has been test-ordered end to end.

## What carries over, and what gets replaced

Two things in these templates are **deliberately non-functional**, and are marked in-page
with a dashed "Squarespace" box. Do not try to make them work as-written — replace them:

| In the template | Becomes in Squarespace |
|---|---|
| The inquiry `<form>` on `index.html` | A **Form Block** |
| The "Add to Cart" `<a>` on `workbook.html` | The product's real **Add to Cart** block |
| The `$25.00 / $1.84 / $5.00 / $31.84` ledger | Commerce tax + shipping rules, calculated at checkout |

Everything else — layout, type, color, the inline SVG marks — is plain CSS and ports directly.

## 1. Fonts

Cinzel and Cormorant Garamond are both in Squarespace's own font library.

- **Drop the base64 `@font-face` block entirely.** Do not paste it into Custom CSS; it is
  hundreds of KB and Squarespace has its own font pipeline.
- Set the fonts in **Design → Fonts** (assign Cinzel to headings, Cormorant Garamond to body).
- If a weight you need is missing from the library, upload the woff2 via
  **Design → Custom CSS → Manage Custom Files**, which gives you a token URL to reference in
  an `@font-face` rule. Prefer the library where it covers you.

Exact stacks and weights are in `styleguide.html`.

## 2. CSS

- Site-wide styling goes in **Design → Custom CSS**. That is the right home for the palette,
  the type scale, and the component styles.
- Squarespace wraps blocks in its own containers with generated class names. Expect to scope
  rules to a page or section rather than to bare element selectors — a bare `h2 {}` in
  Custom CSS will hit blocks you did not intend.
- Give the landing and product pages distinct page-level classes or IDs
  (**Page Settings → Advanced → Page Header Code Injection**, or the body class Squarespace
  already emits per-page) so the dark theme and light theme can't leak into each other. This
  is the single most likely source of visual breakage in the port.
- Inline SVG (the arch and the key) goes into **Code Blocks**. Keep the `viewBox`; do not
  hard-code pixel dimensions.
- **Carry the focus styles over.** Squarespace supplies its own and it will not match. The
  ring rule, the skip link and the nav tap-target trick are all specified with copyable values
  in `styleguide.html` under *Focus & targets*. One ordering gotcha: the focus rule must be
  declared **last**, because the form fields set `outline:none` on `:focus` to keep their
  underline treatment — a focus rule placed earlier loses the specificity tie and the ring
  silently never renders.
- SVG `id` attributes on gradients and filters are **global once several blocks are on one
  page**. If the arch appears twice, its `id`s will collide and one instance will render
  wrong. The templates already prefix them (`pArchF`, `cArchF` etc.) — preserve that, and
  add a new prefix for any third instance.

## 3. Images

- **Drop the base64 data URIs.** Upload the `.webp` files from `src/assets/` to Squarespace's
  CDN through the normal image blocks or the asset manager.
- Keep the `width` and `height` attributes on each `<img>` — they reserve the aspect ratio and
  stop the page from jumping as images load. They only work alongside `img{height:auto}`;
  without it the pixel height wins and the image stretches.
- Keep the existing `alt` text verbatim — it's written, not auto-generated.
- Squarespace serves responsive derivatives; don't hand-roll `srcset`.

## 4. E-commerce — the workbook product

This is the point of the whole site. Get this right before anything cosmetic.

**Create the product**

1. **Commerce → Store / Inventory → Add Product → Physical**.
2. Title: `Modern Mantras Workbook`. Set the price to **$25.00**.
3. Fill the description from the copy on `workbook.html` — the blurb, "What's inside", and
   "The four prompts on every page". That copy is final; use it verbatim.
4. Upload the product images from `src/assets/`.
5. Set **stock quantity**, or mark it unlimited if the client prints on demand. A product that
   silently reads as out-of-stock is the classic way this launch fails quietly.
6. Set **weight and dimensions** — carrier-calculated shipping needs them, and a flat rate
   still wants them recorded.
7. Set the URL slug deliberately; it becomes the permanent product link sent to clients.

**Tax and shipping**

- **Commerce → Shipping**: add a US rate. The template shows **$5.00 flat**; confirm this
  against what the client actually pays to ship from Minneapolis before committing.
- **Commerce → Taxes**: enable the Minnesota rule. The template's `$1.84` implies roughly
  7.375% on $25 — **do not hard-code it**. Squarespace calculates tax at checkout from the
  shop's own settings and the buyer's address, and that number will legitimately differ per
  customer.
- Because of the above, the ledger on `workbook.html` is **reference only**. When porting,
  either drop the itemized rows and keep the `$25.00` price with a "tax and shipping
  calculated at checkout" line, or keep the ledger clearly labeled as an example. Do not
  present a computed total as a promise.

**Checkout**

1. Connect a payment processor — **Commerce → Payments** (Stripe and/or PayPal). This
   requires the client's own account credentials; the agent should not attempt it alone.
2. **Commerce → Checkout**: set the confirmation message and the customer email receipts.
3. Confirm the **Add to Cart** block on the product page is the real one, not a styled link.
4. **Place a real test order end to end** — add to cart, checkout, pay, and confirm the
   receipt email arrives and the order appears in **Commerce → Orders**. Refund the test
   order afterward. An untested checkout is not a finished port.

## 5. Forms — the inquiry form

The landing page form is styling only; JS just swaps in a "Message Received" panel.

1. Add a **Form Block** to the inquiry section on the landing page.
2. Recreate the fields exactly as the template has them:
   - `Your Name` — text, required
   - `Email Address` — email, required
   - `What brings you here?` — dropdown, with these five options in this order:
     *Life Satisfaction Coaching · Intimacy Coaching · Hypnotherapy · Speaking Engagement ·
     Something else*
   - `Tell me more` — textarea
3. Set the submit button text to **Send Inquiry**.
4. **Storage** is the step that's easy to miss. Under the Form Block's storage settings,
   connect at least one destination — email notification to the client's address, and/or
   Squarespace **Form Submissions**. A form with no storage configured accepts submissions
   and drops them. Verify by submitting a test inquiry and confirming it arrives.
5. Set the post-submit message to match the template's confirmation copy: *"Thank you for
   reaching out. I'll be in touch soon to begin our conversation."*
6. Style the block in Custom CSS to match the template — underline-only inputs, Cinzel
   uppercase labels, gold focus state. The exact values are in `styleguide.html`.
7. Squarespace supplies spam protection on Form Blocks; don't add a third-party captcha.

## 6. Before launch

- [ ] Test order placed, received, refunded
- [ ] Test inquiry submitted and received
- [ ] Dark and light page themes confirmed not leaking into each other
- [ ] Checked at 320px, 375px, 768px and 1440px
- [ ] Keyboard tab order reaches every link, field and button with a visible focus state
- [ ] The `.sqs` and `.todo` dashed spec boxes are **removed** — they are notes to the porter,
      not client-facing content
- [ ] About copy dropped in (see below)
- [ ] Phone and email verified as current

## Still open

- **About copy.** `index.html` has a built and styled About section with a `Copy pending`
  placeholder. Two or three short paragraphs drop straight in.
- **Page count.** The product copy says "52 mantras · twelve themes" because that is what the
  PDF shows. The printed page count is not asserted anywhere — confirm it before launch.
- **Shipping and tax figures.** `$5.00` and `$1.84` are illustrative. Confirm real numbers.

## Design review — open recommendations

These came out of an external design review. They are **not applied**, because each one
either rewrites client copy or changes a deliberate design decision — both the client's call,
not the porter's. Listed strongest first.

- **The hero lede duplicates the inquiry section verbatim.** "Begin the journey. Share a
  little about yourself and I'll be in touch." is the hero lede *and* the inquiry section's
  heading + subhead, word for word. Both are real copy lifted from the live site, so the fix
  is a decision about which slot keeps the line — and what the other one says instead. Now
  that the hero's primary button points at the workbook, a forward-facing lede that names the
  book would serve better.
- **Drop the price ledger, keep the delivered price.** Leading with "$25.00 / $31.84
  delivered" is right for a warm audience — no checkout surprises. But itemizing it a second
  time at `$1.84` precision invites a visible mismatch the moment Squarespace computes real
  tax against a real address. Suggested: delete the ledger rows, keep the two-line price, and
  move the target math into the Squarespace spec box as a sentence. If the ledger goes, add
  "in the US" to the delivered line — it currently carries the only shipping-region
  disclosure.
- **The landing `h1` is a sentence set as a label.** "Welcome to your most satisfied self" is
  34 characters of Cinzel caps at .19em tracking — the hardest thing on the site to read, and
  the warmest line on it. Setting it in Cormorant Garamond, sentence case, would fix that. It
  is also the brand's signature line, so this is a client decision, not a code one. The
  underlying rule worth adopting either way: **Cinzel for labels, Cormorant for sentences.**
- **Copy repeats across slots on the product page.** "Fifty-two … twelve themes" appears four
  times (`.pmeta`, `.blurb`, the `What's inside` list, the mosaic caption) and "print edition"
  twice. Each slot should carry information the others don't.

Two further suggestions were **considered and declined**:

- *Reordering the workbook section above About.* The argument was that the money section
  shouldn't sit behind a `Copy pending` box. But the landing page alternates grounds —
  hero, `bg-2` services band, `bg` about, `bg-2` workbook, `bg` inquiry — and moving the
  workbook up puts two `bg-2` bands and then two `bg` sections adjacent, collapsing that
  rhythm. Swapping the backgrounds to compensate would move the visual emphasis *off* the
  product, which is backwards. With the hero's primary CTA now pointing at the workbook, and
  a workbook link in the nav, no visitor has to scroll past About to buy.
- *Unifying the button hover targets.* On dark, gold fills to cream; on paper, ink fills to
  gold. Different targets, but the same gesture — each moves toward its ground's accent.
  Consistent in intent, and correct per-ground.

## Publishing (the interim static site)

`.nojekyll` is present so GitHub never runs these through Jekyll. Serve the repo root from
GitHub Pages (Settings → Pages → Source), or just open the files directly.
