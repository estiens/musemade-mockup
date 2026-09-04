# Muse Made Coaching — design mockups

Six static HTML mockups for musemadecoaching.com. Every file is self-contained: fonts are
embedded as base64 woff2 and the workbook images as data URIs, so there is no build step,
no CDN, and no dependency on anything staying online.

Open `index.html` to see all six with notes, or open any file directly.

| File | What it is |
|---|---|
| `main-dark-01-ember.html` | Landing page — Direction A, warm charcoal, Anton + Poppins |
| `main-dark-02-cut.html` | Landing page — Direction B, teal-black, Oswald + Inter |
| `main-dark-03-gilt.html` | Landing page — Direction C, the current site's Cinzel + Cormorant + gold |
| `product-light-01-ember.html` | Shop + workbook page, light companion to A |
| `product-light-02-cut.html` | Shop + workbook page, light companion to B |
| `product-light-03-gilt.html` | Shop + workbook page, light companion to C |

The shop files contain both views — the shop index and the product detail page — and switch
between them in the browser. Nothing talks to a server.

## Publishing

Push to `main` and the workflow in `.github/workflows/deploy.yml` publishes the repo root to
GitHub Pages.

```bash
git remote add origin git@github.com:<you>/<repo>.git
git push -u origin main
```

Then, once: **Settings → Pages → Build and deployment → Source: GitHub Actions.** That
setting is what lets the workflow deploy; without it the run fails at the last step. The
first push after flipping it publishes to `https://<you>.github.io/<repo>/`.

A private repo needs GitHub Pro or an org plan to serve Pages publicly. If the repo is
private on a free account, either make it public or send the zip instead.

Re-run anytime from the Actions tab (`workflow_dispatch`), or just push again.

## Notes

- Landing page copy is verbatim from the live site. Shop copy and prices are placeholders.
- All text/background pairs meet WCAG AA contrast.
- `.nojekyll` is there so GitHub never tries to run these through Jekyll.
