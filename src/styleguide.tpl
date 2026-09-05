<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Style Guide — Muse Made Coaching</title>
<meta name="description" content="Colors, type and components for the Muse Made Coaching site, in both the dark gilt and light paper themes. Reference sheet for the Squarespace port.">
<link rel="icon" href="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI+PHJlY3Qgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0IiBmaWxsPSIjMUExNDEwIi8+PHBhdGggZD0iTTE0IDU2VjI4YTE4IDE4IDAgMCAxIDM2IDB2Mjh6IiBmaWxsPSIjRDRCODdBIi8+PHBhdGggZD0iTTMyIDIwYTggOCAwIDAgMC00IDE0LjlWNDZhNCA0IDAgMCAwIDggMFYzNC45QTggOCAwIDAgMCAzMiAyMHoiIGZpbGw9IiMxQTE0MTAiLz48L3N2Zz4=">
/*FONTS*/
<style>
/* ============================================================
   This page is a REFERENCE SHEET, not part of the client site.
   Its own chrome is deliberately plain so the specimens read as
   the design and the page around them does not compete.
   Color values are injected at build time from the real
   templates — see build.py. They cannot drift.
   ============================================================ */
:root{
  --doc-bg:#FFFFFF;
  --doc-ink:#1B1B1D;
  --doc-soft:#5A5A60;
  --doc-rule:#E2E2E6;
  --doc-chip:#F4F4F6;
  --dark-bg:#1A1410;
  --paper-bg:#F5F0E8;
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{margin:0;background:var(--doc-bg);color:var(--doc-ink);
  font:400 15px/1.6 -apple-system,BlinkMacSystemFont,'Segoe UI',system-ui,sans-serif;
  -webkit-font-smoothing:antialiased}
.wrap{max-width:1080px;margin:0 auto;padding:0 28px}
code,.mono{font-family:ui-monospace,SFMono-Regular,'SF Mono',Menlo,Consolas,monospace;font-size:12.5px}

/* ---------- doc chrome ---------- */
.doc-head{border-bottom:1px solid var(--doc-rule);padding:56px 0 34px}
.doc-head h1{font-size:clamp(28px,4.4vw,40px);line-height:1.15;margin:0 0 12px;letter-spacing:-.02em}
.doc-head p{color:var(--doc-soft);max-width:62ch;margin:0 0 6px}

.toc{display:flex;flex-wrap:wrap;gap:8px;margin:24px 0 0}
.toc a{text-decoration:none;color:var(--doc-ink);background:var(--doc-chip);
  border:1px solid var(--doc-rule);border-radius:999px;padding:10px 16px;font-size:13px;transition:.15s}
.toc a:hover,.toc a:focus-visible{background:var(--doc-ink);color:#fff;border-color:var(--doc-ink)}

h2.sec{font-size:12px;letter-spacing:.16em;text-transform:uppercase;color:var(--doc-soft);
  margin:64px 0 6px;padding-bottom:10px;border-bottom:1px solid var(--doc-rule)}
h3.sub{font-size:17px;margin:34px 0 4px;letter-spacing:-.01em}
.note{color:var(--doc-soft);max-width:70ch;margin:8px 0 20px;font-size:14px}

/* ---------- copyable value chips ---------- */
.val{display:inline-flex;align-items:center;gap:0;border:1px solid var(--doc-rule);border-radius:6px;
  overflow:hidden;background:var(--doc-chip);vertical-align:middle}
.val b{font-weight:500;font-size:11px;letter-spacing:.06em;text-transform:uppercase;color:var(--doc-soft);
  padding:5px 8px;border-right:1px solid var(--doc-rule);background:#fff}
.copy{font-family:ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;font-size:12.5px;
  border:0;background:transparent;color:var(--doc-ink);padding:5px 10px;cursor:pointer;
  display:inline-flex;align-items:center;gap:7px}
.copy:hover,.copy:focus-visible{background:#E8E8EC;outline:none}
.copy::after{content:"copy";font-family:inherit;font-size:9.5px;letter-spacing:.1em;text-transform:uppercase;
  color:#9A9AA2;font-family:-apple-system,system-ui,sans-serif}
.copy.done::after{content:"copied";color:#1E7A46}

/* ---------- color swatches ---------- */
.swatches{display:grid;grid-template-columns:repeat(auto-fill,minmax(232px,1fr));gap:14px;margin:18px 0 0}
.sw{border:1px solid var(--doc-rule);border-radius:10px;overflow:hidden;background:#fff}
.sw .chip{height:78px;display:block;border-bottom:1px solid var(--doc-rule)}
.sw .meta{padding:12px 13px 13px}
.sw .nm{font-weight:600;font-size:13.5px;margin:0 0 2px}
.sw .role{color:var(--doc-soft);font-size:12.5px;margin:0 0 9px;line-height:1.45}
.sw .var{display:block;color:var(--doc-soft);font-size:11.5px;margin:7px 0 0}
/* rgba() values are long enough to overhang a 232px card and clip the copy
   affordance; let them wrap inside the chip instead of shrinking the type */
.sw .val{max-width:100%}
.sw .copy{min-width:0;white-space:normal;word-break:break-word;text-align:left}

/* ---------- contrast table ---------- */
.tablewrap{overflow-x:auto;margin:16px 0 0;-webkit-overflow-scrolling:touch}
.ctab{width:100%;min-width:560px;border-collapse:collapse;font-size:13.5px}
.ctab th{text-align:left;font-size:11px;letter-spacing:.1em;text-transform:uppercase;color:var(--doc-soft);
  border-bottom:1px solid var(--doc-rule);padding:0 12px 9px 0;font-weight:600}
.ctab td{border-bottom:1px solid var(--doc-rule);padding:10px 12px 10px 0;vertical-align:middle}
.ctab tr:last-child td{border-bottom:0}
.dot{display:inline-block;width:13px;height:13px;border-radius:3px;vertical-align:-2px;margin-right:8px;
  border:1px solid rgba(0,0,0,.16)}
.ratio{font-family:ui-monospace,Menlo,monospace;font-size:13px}
.pill{display:inline-block;font-size:10.5px;letter-spacing:.07em;text-transform:uppercase;font-weight:600;
  padding:3px 8px;border-radius:999px}
.pass{background:#DFF3E6;color:#12633A}
.large{background:#FFF2D6;color:#7A5410}
.fail{background:#FCE3E3;color:#95221F}

/* ---------- live specimen panels ---------- */
.panel{border-radius:12px;overflow:hidden;border:1px solid var(--doc-rule);margin:18px 0 0}
.panel > .bar{font-size:11px;letter-spacing:.13em;text-transform:uppercase;font-weight:600;
  padding:9px 16px;background:var(--doc-chip);color:var(--doc-soft);border-bottom:1px solid var(--doc-rule)}
.stage{padding:38px 32px}
.stage.dark{background:var(--dark-bg)}
.stage.light{background:var(--paper-bg)}
@media(max-width:560px){.stage{padding:26px 18px}}

.specrow{display:flex;flex-wrap:wrap;gap:16px;align-items:center}
.specstack > * + *{margin-top:22px}
.caption{font:400 12px/1.5 ui-monospace,Menlo,monospace;color:var(--doc-soft);margin:9px 0 0}
.stage.dark .caption{color:#8C8377}
.stage.light .caption{color:#7C7365}

/* ============================================================
   SPECIMENS — these rules are copied verbatim from the real
   templates so the page shows the actual components, not
   approximations. Prefixed .sg- to keep them off the doc chrome.
   ============================================================ */

/* --- dark theme specimens (index.tpl) --- */
.sg-d{font-family:'Cormorant Garamond',Garamond,'Times New Roman',serif;
  font-size:19px;line-height:1.72;font-weight:300;letter-spacing:.02em;color:#F5F0E8}
.sg-d .mark{font-family:'Cinzel',Georgia,serif;font-weight:500;text-transform:uppercase;
  font-size:clamp(38px,7.2vw,66px);line-height:1.08;letter-spacing:.17em;margin:0 0 0 .17em;color:#F5F0E8}
.sg-d .tagline{font-size:clamp(12px,1.6vw,15px);letter-spacing:.34em;text-transform:uppercase;
  color:#D4B87A;font-weight:400;margin:0;line-height:2}
.sg-d h1{font-family:'Cinzel',Georgia,serif;font-weight:400;text-transform:uppercase;
  font-size:clamp(20px,3.1vw,29px);line-height:1.55;letter-spacing:.19em;color:#F5F0E8;margin:0;max-width:23ch}
.sg-d h2{font-family:'Cinzel',Georgia,serif;font-weight:400;text-transform:uppercase;
  font-size:clamp(22px,3vw,30px);letter-spacing:.2em;margin:0;color:#F5F0E8}
.sg-d .kicker{font-family:'Cinzel',Georgia,serif;font-size:11px;letter-spacing:.3em;
  text-transform:uppercase;color:#B89A5C;margin:0}
.sg-d .nav{display:flex;gap:38px;font-family:'Cinzel',Georgia,serif;font-size:13px;
  letter-spacing:.26em;text-transform:uppercase;flex-wrap:wrap}
.sg-d .nav a{text-decoration:none;color:#B89A5C;transition:color .2s}
.sg-d .nav a:hover,.sg-d .nav a:focus-visible{color:#D4B87A}
.sg-d .lede{margin:0;max-width:40ch;font-size:20px;color:#CFC6BA;letter-spacing:.015em}
.sg-d .price{font-family:'Cinzel',Georgia,serif;font-size:22px;letter-spacing:.1em;color:#D4B87A;margin:0}
.sg-d .price small{font-family:'Cormorant Garamond',Garamond,serif;font-size:17px;letter-spacing:.03em;
  color:#CFC6BA;text-transform:none;display:block;margin-top:8px}
.sg-d .btn{display:inline-block;font-family:'Cinzel',Georgia,serif;font-size:12px;letter-spacing:.3em;
  text-transform:uppercase;padding:16px 34px;text-decoration:none;background:#D4B87A;color:#1A1410;
  border:1px solid #D4B87A;transition:.2s;cursor:pointer}
.sg-d .btn:hover{background:#F5F0E8;border-color:#F5F0E8}
.sg-d .btn-ghost{background:transparent;color:#D4B87A;border-color:rgba(212,184,122,.26)}
.sg-d .btn-ghost:hover{background:transparent;color:#F5F0E8;border-color:#D4B87A}
.sg-d label{display:block;font-family:'Cinzel',Georgia,serif;font-size:12px;letter-spacing:.24em;
  text-transform:uppercase;color:#D4B87A;margin-bottom:10px}
.sg-d input,.sg-d select,.sg-d textarea{width:100%;background:transparent;border:0;
  border-bottom:1px solid rgba(212,184,122,.26);color:#F5F0E8;
  font-family:'Cormorant Garamond',Garamond,serif;font-size:19px;font-weight:300;letter-spacing:.02em;
  padding:9px 0;transition:border-color .2s}
.sg-d input:focus,.sg-d select:focus,.sg-d textarea:focus{outline:none;border-bottom-color:#D4B87A}
.sg-d select{appearance:none;border-radius:0;
  background-image:linear-gradient(45deg,transparent 50%,#D4B87A 50%),linear-gradient(135deg,#D4B87A 50%,transparent 50%);
  background-position:right 6px center,right 1px center;background-size:5px 5px,5px 5px;background-repeat:no-repeat}
.sg-d select option{background:#221B16;color:#F5F0E8}
.sg-d .todo,.sg-d .sqs{border:1px dashed rgba(212,184,122,.26);padding:20px 22px;max-width:58ch;
  font-size:15px;line-height:1.8;color:#9C907F;letter-spacing:.03em}
.sg-d .sqs{background:rgba(212,184,122,.04)}
.sg-d .todo b,.sg-d .sqs b{font-family:'Cinzel',Georgia,serif;display:block;font-size:10px;
  letter-spacing:.3em;text-transform:uppercase;color:#B89A5C;margin-bottom:10px;font-weight:400}
.sg-d .svcrow{display:flex;flex-wrap:wrap;background:#221B16;border-top:1px solid rgba(212,184,122,.14);
  border-bottom:1px solid rgba(212,184,122,.14)}
.sg-d .svcrow span{font-family:'Cinzel',Georgia,serif;font-size:11px;letter-spacing:.26em;
  text-transform:uppercase;color:#B89A5C;padding:22px 26px;position:relative}
.sg-d .svcrow span+span::before{content:"";position:absolute;left:0;top:50%;transform:translateY(-50%);
  width:1px;height:13px;background:rgba(212,184,122,.26)}

/* --- light theme specimens (workbook.tpl) --- */
.sg-l{font-family:'Cormorant Garamond',Garamond,'Times New Roman',serif;
  font-size:19px;line-height:1.72;font-weight:400;letter-spacing:.015em;color:#2A2520}
.sg-l h1{font-family:'Cinzel',Georgia,serif;font-weight:400;text-transform:uppercase;
  font-size:clamp(26px,4vw,40px);line-height:1.3;letter-spacing:.13em;margin:0}
.sg-l h2{font-family:'Cinzel',Georgia,serif;font-weight:400;text-transform:uppercase;
  font-size:clamp(20px,2.6vw,26px);letter-spacing:.18em;margin:0}
.sg-l .colhead{font-family:'Cinzel',Georgia,serif;font-weight:400;font-size:11px;letter-spacing:.26em;
  text-transform:uppercase;text-align:left;color:#7E6329;margin:0;padding-bottom:12px;
  border-bottom:1px solid #DED5C6}
.sg-l .kicker{font-family:'Cinzel',Georgia,serif;font-size:11px;letter-spacing:.3em;
  text-transform:uppercase;color:#7E6329;margin:0}
.sg-l .nav{display:flex;gap:38px;font-family:'Cinzel',Georgia,serif;font-size:13px;
  letter-spacing:.26em;text-transform:uppercase;flex-wrap:wrap}
.sg-l .nav a{text-decoration:none;color:#7E6329;border-bottom:1px solid transparent;
  padding-bottom:2px;transition:.2s}
.sg-l .nav a:hover,.sg-l .nav a.on{color:#2A2520;border-color:#B89A5C}
.sg-l .notice{background:#2A2520;color:#F5F0E8;text-align:center;padding:11px 20px;
  font-family:'Cinzel',Georgia,serif;font-size:12px;letter-spacing:.26em;text-transform:uppercase}
.sg-l .pmeta{font-family:'Cinzel',Georgia,serif;font-size:12px;letter-spacing:.2em;
  text-transform:uppercase;color:#5E5548;margin:0}
.sg-l .pprice{font-family:'Cinzel',Georgia,serif;font-size:30px;letter-spacing:.08em;color:#7E6329;margin:0}
.sg-l .pprice span{font-family:'Cormorant Garamond',Garamond,serif;font-size:18px;letter-spacing:.03em;
  color:#5E5548;text-transform:none;display:block;margin-top:8px}
.sg-l .blurb{color:#5E5548;margin:0}
.sg-l .btn{display:inline-block;font-family:'Cinzel',Georgia,serif;font-size:11.5px;letter-spacing:.3em;
  text-transform:uppercase;padding:17px 38px;text-decoration:none;cursor:pointer;background:#2A2520;
  color:#F5F0E8;border:1px solid #2A2520;transition:.2s}
.sg-l .btn:hover{background:#7E6329;border-color:#7E6329;color:#fff}
.sg-l .btn-gold{background:#D4B87A;border-color:#D4B87A;color:#1A1410}
.sg-l .btn-gold:hover{background:#F5F0E8;border-color:#F5F0E8;color:#1A1410}
.sg-l .ledger{border-top:1px solid #DED5C6;font-size:17.5px;max-width:420px}
.sg-l .ledger div{display:flex;justify-content:space-between;gap:20px;padding:11px 0;
  border-bottom:1px solid #E8E1D4;color:#5E5548}
.sg-l .ledger div.total{border-bottom:0;border-top:1px solid #DED5C6;color:#2A2520;
  font-family:'Cinzel',Georgia,serif;font-size:13px;letter-spacing:.16em;text-transform:uppercase;
  padding:16px 0 0;margin-top:4px}
.sg-l .ledger .note{display:block;font-size:15.5px;color:#6E6558;padding:16px 0 0;border:0;
  letter-spacing:.02em;line-height:1.6}
.sg-l .sqs{border:1px dashed #B89A5C;background:rgba(184,154,92,.06);padding:20px 22px;
  font-size:15px;line-height:1.65;color:#6E6558;letter-spacing:.02em;max-width:58ch}
.sg-l .sqs b{font-family:'Cinzel',Georgia,serif;display:block;font-size:9.5px;letter-spacing:.28em;
  text-transform:uppercase;color:#7E6329;margin-bottom:8px;font-weight:400}
.sg-l .col li{list-style:none;padding:11px 0;border-bottom:1px solid #E8E1D4;color:#5E5548}
.sg-l .col ul{margin:0;padding:0;max-width:420px}
.sg-l .credits{color:#5E5548;font-size:17px;letter-spacing:.05em;margin:0}
.sg-l .swatchrow{display:flex;gap:8px}
.sg-l .swatchrow i{display:block;width:34px;height:8px}

/* the two marks */
.marks{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:14px;margin:18px 0 0}
.markbox{border:1px solid var(--doc-rule);border-radius:10px;overflow:hidden}
.markbox .in{display:flex;align-items:center;justify-content:center;padding:30px}
.markbox .cap{border-top:1px solid var(--doc-rule);padding:11px 14px;font-size:12.5px;color:var(--doc-soft)}

footer.doc{border-top:1px solid var(--doc-rule);margin-top:80px;padding:30px 0 70px;
  color:var(--doc-soft);font-size:13.5px}

/* the specimens must actually demonstrate the focus rule they document,
   and like the real templates this has to come last to win the tie */
.sg-d a:focus-visible,.sg-d button:focus-visible,.sg-d input:focus-visible,
.sg-d select:focus-visible,.sg-d textarea:focus-visible{outline:2px solid #D4B87A;outline-offset:3px}
.sg-d .btn:focus-visible{outline-offset:4px}
.sg-l a:focus-visible,.sg-l button:focus-visible{outline:2px solid #7E6329;outline-offset:3px}
.sg-l .btn:focus-visible{outline-offset:4px}
.sg-d button.btn,.sg-l button.btn{line-height:1.72}

@media(prefers-reduced-motion:reduce){html{scroll-behavior:auto}}
@media print{.toc,.copy::after{display:none}}
</style>
</head>
<body>

<div class="doc-head">
  <div class="wrap">
    <h1>Muse Made Coaching — style guide</h1>
    <p>Every color, typeface, size and component used across the two live pages, in both
       themes. Click any value to copy it.</p>
    <p><b>This page is not part of the client site.</b> It is the reference sheet for the
       Squarespace port — see the porting section of <code>README.md</code>.</p>
    <nav class="toc">
      <a href="#colors">Colors</a>
      <a href="#contrast">Contrast</a>
      <a href="#type">Typography</a>
      <a href="#nav">Navigation</a>
      <a href="#buttons">Buttons &amp; CTAs</a>
      <a href="#forms">Forms</a>
      <a href="#commerce">Price &amp; commerce</a>
      <a href="#notes">Spec boxes</a>
      <a href="#a11y">Focus &amp; targets</a>
      <a href="#marks">The marks</a>
    </nav>
  </div>
</div>

<div class="wrap">

<!-- ==================== COLORS ==================== -->
<h2 class="sec" id="colors">Colors</h2>
<p class="note">Injected at build time from the <code>:root</code> blocks of
   <code>src/index.tpl</code> and <code>src/workbook.tpl</code>, so these values are the ones
   actually shipping. The two themes share a family but not a palette — the gold is
   <em>deliberately different</em> in each: bright <code>#D4B87A</code> reads on warm black,
   but fails on paper, so the light theme darkens it to <code>#7E6329</code>.</p>

<h3 class="sub">Dark theme — the landing page</h3>
<div class="swatches" id="sw-dark"></div>

<h3 class="sub">Light theme — the product page</h3>
<div class="swatches" id="sw-light"></div>

<h3 class="sub">Workbook accent colors</h3>
<p class="note">Taken from the book's own illustrations. Used only as the small swatch row on
   the product page — they are the book's palette, not the brand's, and should not spread.</p>
<div class="swatches" id="sw-accent"></div>

<!-- ==================== CONTRAST ==================== -->
<h2 class="sec" id="contrast">Contrast</h2>
<p class="note">Computed live in this page from the values above — WCAG 2.1 relative luminance.
   <b>AA</b> needs 4.5:1 for normal text and 3:1 for large text (18.66px+ bold, or 24px+).
   Everything shipping currently passes for its size. If you change a color during the
   Squarespace port, re-check it here.</p>
<div class="tablewrap"><table class="ctab" id="ctab">
  <thead><tr><th>Foreground</th><th>On</th><th>Ratio</th><th>Normal</th><th>Large</th><th>Where</th></tr></thead>
  <tbody></tbody>
</table></div>

<!-- ==================== TYPOGRAPHY ==================== -->
<h2 class="sec" id="type">Typography</h2>
<p class="note">Two families, no more. Both are in Squarespace's font library — assign them in
   Design → Fonts rather than pasting the base64 <code>@font-face</code> block.</p>

<div class="specrow" style="margin:18px 0 0">
  <span class="val"><b>Display</b><button class="copy">'Cinzel', Georgia, serif</button></span>
  <span class="val"><b>Body</b><button class="copy">'Cormorant Garamond', Garamond, 'Times New Roman', serif</button></span>
</div>
<p class="note" style="margin-top:14px">Cinzel carries every heading, nav item, button, label
   and kicker — always uppercase, always letter-spaced. Cormorant Garamond carries all running
   prose. Nothing else appears anywhere on the site.</p>

<div class="panel">
  <div class="bar">Dark theme scale</div>
  <div class="stage dark sg-d specstack">
    <div><p class="mark">Muse Made</p><p class="caption">.mark — Cinzel 500, clamp(38px,7.2vw,66px), tracking .17em</p></div>
    <div><p class="tagline">Intimacy &amp; Life Satisfaction</p><p class="caption">.tagline — clamp(12px,1.6vw,15px), tracking .34em, #D4B87A</p></div>
    <div><h1>Welcome to your most satisfied self</h1><p class="caption">h1 — Cinzel 400, clamp(20px,3.1vw,29px), tracking .19em, line-height 1.55</p></div>
    <div><h2>Modern Mantras Workbook</h2><p class="caption">h2 — Cinzel 400, clamp(22px,3vw,30px), tracking .2em</p></div>
    <div><p class="kicker">In the shop</p><p class="caption">.kicker — Cinzel 11px, tracking .3em, #B89A5C</p></div>
    <div><p class="lede">Begin the journey. Share a little about yourself and I&rsquo;ll be in touch.</p><p class="caption">.lede — Cormorant 20px, #CFC6BA, max-width 40ch</p></div>
    <div><p style="margin:0;max-width:52ch;color:#CFC6BA">Body copy sets in Cormorant Garamond at 19px, weight 300 on dark grounds, line-height 1.72. Measure is capped between 38 and 52 characters so the eye never has to hunt for the next line.</p><p class="caption">body — Cormorant 19px/1.72, weight 300, tracking .02em</p></div>
  </div>
</div>

<div class="panel">
  <div class="bar">Light theme scale</div>
  <div class="stage light sg-l specstack">
    <div><h1>Modern Mantras<br>Workbook</h1><p class="caption">h1 — Cinzel 400, clamp(26px,4vw,40px), tracking .13em</p></div>
    <div><h2>How a spread works</h2><p class="caption">h2 — Cinzel 400, clamp(20px,2.6vw,26px), tracking .18em, centred</p></div>
    <div><h2 class="colhead" style="max-width:420px">What&rsquo;s inside</h2><p class="caption">.col h2 — Cinzel 400, 11px, tracking .26em, #7E6329, rule beneath.<br>An h2, not an h3: it follows the page h1 directly, so an h3 would skip a level.</p></div>
    <div><p class="kicker">The Workbook</p><p class="caption">.kicker — Cinzel 11px, tracking .3em, #7E6329</p></div>
    <div><p class="pmeta">Print edition &middot; 52 mantras &middot; Twelve themes</p><p class="caption">.pmeta — Cinzel 12px, tracking .2em, #5E5548</p></div>
    <div><p class="blurb" style="max-width:52ch">Body copy sets in Cormorant Garamond at 19px, weight 400 on paper, line-height 1.72. The weight goes up one step from the dark theme because light grounds eat stroke weight.</p><p class="caption">body — Cormorant 19px/1.72, weight 400, tracking .015em</p></div>
  </div>
</div>

<!-- ==================== NAV ==================== -->
<h2 class="sec" id="nav">Navigation</h2>
<p class="note">Centred, Cinzel, 13px desktop / 11px below 520px. Gold at rest, brightening to
   cream (dark) or darkening to ink (light) on hover. The light theme also underlines the
   current page.</p>

<div class="panel">
  <div class="bar">Dark — landing</div>
  <div class="stage dark sg-d">
    <div class="nav"><a href="#nav">About</a><a href="#nav">The Workbook</a><a href="#nav">Contact</a></div>
    <p class="caption">Cinzel 13px · tracking .26em · gap 38px · #B89A5C, hover #D4B87A</p>
  </div>
</div>

<div class="panel">
  <div class="bar">Light — product</div>
  <div class="stage light sg-l">
    <div class="nav"><a href="#nav">Home</a><a href="#nav" class="on">The Workbook</a><a href="#nav">Contact</a></div>
    <p class="caption">Cinzel 13px · tracking .26em · #7E6329, current page underlined #B89A5C</p>
  </div>
</div>

<div class="panel">
  <div class="bar">Announcement bar</div>
  <div class="stage light" style="padding:0">
    <div class="sg-l"><div class="notice">Print edition &nbsp;&mdash;&nbsp; ships from Minneapolis</div></div>
  </div>
</div>

<!-- ==================== BUTTONS ==================== -->
<h2 class="sec" id="buttons">Buttons &amp; CTAs</h2>
<p class="note">Three button styles, one per ground. All Cinzel uppercase, tracking .3em,
   square corners — no radius anywhere on this site.</p>

<div class="panel">
  <div class="bar">Dark ground</div>
  <div class="stage dark sg-d">
    <div class="specrow">
      <a class="btn" href="#buttons">The Workbook</a>
      <a class="btn btn-ghost" href="#buttons">Send Inquiry</a>
    </div>
    <p class="caption">.btn — solid #D4B87A on #1A1410, 16px/34px padding, hover fills cream<br>
       .btn-ghost — transparent, 1px rgba(212,184,122,.26) border, hover border brightens</p>
  </div>
</div>

<div class="panel">
  <div class="bar">Light ground — the primary buy action</div>
  <div class="stage light sg-l">
    <div class="specrow"><a class="btn" href="#buttons">Add to Cart</a></div>
    <p class="caption">.btn — solid ink #2A2520 on paper, 17px/38px padding, hover fills gold #7E6329</p>
  </div>
</div>

<div class="panel">
  <div class="bar">Closing panel — dark band inside the light page</div>
  <div class="stage dark sg-d" style="text-align:center">
    <h2 style="color:#D4B87A;margin-bottom:14px">Unlock Your Bliss</h2>
    <p style="color:#CFC6BA;max-width:38ch;margin:0 auto 26px">The workbook is the practice
       between sessions. If you&rsquo;d like to begin the deeper work, start a conversation.</p>
    <a class="btn sg-l btn-gold" style="font-size:11.5px" href="#buttons">Send Inquiry</a>
    <p class="caption">.btn-gold — gold on the deep ground, hover fills cream</p>
  </div>
</div>

<!-- ==================== FORMS ==================== -->
<h2 class="sec" id="forms">Form styling</h2>
<p class="note">Underline-only fields — no boxes, no fills. Labels are Cinzel caps in gold; the
   rule under each field brightens to full gold on focus. This is what the Squarespace
   <b>Form Block</b> needs to be CSS'd to match.</p>

<div class="panel">
  <div class="bar">Dark — inquiry form</div>
  <div class="stage dark sg-d">
    <div style="display:grid;gap:26px;max-width:560px">
      <div style="display:grid;grid-template-columns:1fr 1fr;gap:26px">
        <div><label for="sg-n">Your Name</label><input id="sg-n" type="text"></div>
        <div><label for="sg-e">Email Address</label><input id="sg-e" type="email"></div>
      </div>
      <div>
        <label for="sg-s">What brings you here?</label>
        <select id="sg-s">
          <option>Life Satisfaction Coaching</option>
          <option>Intimacy Coaching</option>
          <option>Hypnotherapy</option>
          <option>Speaking Engagement</option>
          <option>Something else</option>
        </select>
      </div>
      <div><label for="sg-m">Tell me more</label><textarea id="sg-m" rows="3"></textarea></div>
      <div><a class="btn" href="#forms">Send Inquiry</a></div>
    </div>
    <p class="caption">label — Cinzel 12px, tracking .24em, #D4B87A<br>
       input — transparent, border-bottom 1px rgba(212,184,122,.26), Cormorant 19px, focus border #D4B87A<br>
       select — native arrow removed, replaced by two gold gradient triangles</p>
  </div>
</div>

<!-- ==================== COMMERCE ==================== -->
<h2 class="sec" id="commerce">Price &amp; commerce</h2>
<p class="note">The ledger is <b>reference only</b>. Once live, tax and shipping come from the
   shop's own settings and are calculated at checkout against the buyer's address — do not
   hard-code these numbers.</p>

<div class="panel">
  <div class="bar">Price — light</div>
  <div class="stage light sg-l specstack">
    <div>
      <p class="pprice">$25.00<span>$31.84 delivered, tax and shipping included</span></p>
      <p class="caption">.pprice — Cinzel 30px, tracking .08em, #7E6329; sub-line Cormorant 18px #5E5548</p>
    </div>
    <div>
      <div class="ledger">
        <div><span>Workbook</span><span>$25.00</span></div>
        <div><span>Sales tax</span><span>$1.84</span></div>
        <div><span>Shipping &mdash; US</span><span>$5.00</span></div>
        <div class="total"><span>Total</span><span>$31.84</span></div>
        <span class="note">Shown for reference. Once this is live in Squarespace, tax and
          shipping are calculated at checkout from the shop&rsquo;s own settings.</span>
      </div>
      <p class="caption">.ledger — rows 17.5px #5E5548, total row Cinzel 13px caps, note 15.5px #6E6558</p>
    </div>
  </div>
</div>

<div class="panel">
  <div class="bar">Price — dark</div>
  <div class="stage dark sg-d">
    <p class="price">$25.00<small>$31.84 delivered, tax and shipping included</small></p>
    <p class="caption">.price — Cinzel 22px, tracking .1em, #D4B87A; sub-line Cormorant 17px #CFC6BA</p>
  </div>
</div>

<div class="panel">
  <div class="bar">List rows &amp; workbook accents</div>
  <div class="stage light sg-l specstack">
    <div class="col"><ul>
      <li>Fifty-two mantras across twelve themes &mdash; one a week for a year</li>
      <li>A full-page illustrated mantra facing every worksheet</li>
      <li>A weekly recall tracker on each page</li>
    </ul><p class="caption">.col li — Cormorant 19px #5E5548, hairline #E8E1D4 between rows</p></div>
    <div>
      <div class="swatchrow" id="accentrow"></div>
      <p class="caption">.swatchrow — 34&times;8px blocks, the book's own colors</p>
    </div>
    <div><p class="credits">Created by Erica Jones &nbsp;&middot;&nbsp; Illustrations by Dolly Heart &nbsp;&middot;&nbsp; Designed by Erin Slayton</p>
      <p class="caption">.credits — Cormorant 17px, tracking .05em, centred</p></div>
  </div>
</div>

<!-- ==================== SPEC BOXES ==================== -->
<h2 class="sec" id="notes">Spec boxes</h2>
<p class="note">Dashed boxes marking things that are <em>not</em> real yet. They are notes to
   whoever builds the Squarespace site &mdash; <b>delete every one of them before launch.</b></p>

<div class="panel">
  <div class="bar">Dark</div>
  <div class="stage dark sg-d specstack">
    <div class="todo"><b>Copy pending</b>The About copy goes here — the section is built and
      styled, it just needs the words.</div>
    <div class="sqs"><b>Squarespace</b>This form is the visual spec, not the live one. In
      Squarespace it gets replaced by a Form Block.</div>
    <p class="caption">1px dashed rgba(212,184,122,.26) · body 15px #9C907F · label Cinzel 10px #B89A5C</p>
  </div>
</div>

<div class="panel">
  <div class="bar">Light</div>
  <div class="stage light sg-l">
    <div class="sqs"><b>Squarespace</b>This button is the visual spec, not the live one. In
      Squarespace it gets replaced by the product&rsquo;s Add to Cart block.</div>
    <p class="caption">1px dashed #B89A5C on rgba(184,154,92,.06) · body 15px #6E6558 · label Cinzel 9.5px #7E6329</p>
  </div>
</div>

<!-- ==================== A11Y ==================== -->
<h2 class="sec" id="a11y">Focus &amp; targets</h2>
<p class="note">Squarespace supplies its own focus styling, and it will not match. These are
   the rules the site uses — reproduce them in Custom CSS so keyboard users get the same
   treatment across ported blocks.</p>

<h3 class="sub">Focus ring</h3>
<p class="note">A 2px solid ring in the theme's accent, offset 3px (4px on buttons, which
   already carry a border). <b>Declare it last in the stylesheet.</b> The form fields set
   <code>outline:none</code> on <code>:focus</code> to keep the underline treatment; a focus
   rule placed earlier loses the specificity tie and the ring silently never appears.</p>
<div class="specrow" style="margin:14px 0 0">
  <span class="val"><b>rule</b><button class="copy">outline:2px solid var(--gold);outline-offset:3px</button></span>
</div>

<div class="panel">
  <div class="bar">Tab through these</div>
  <div class="stage dark sg-d">
    <div class="specrow">
      <a class="btn" href="#a11y">The Workbook</a>
      <a class="btn btn-ghost" href="#a11y">Send Inquiry</a>
      <span style="min-width:180px"><label for="sg-f">Focus me</label><input id="sg-f" type="text"></span>
    </div>
    <p class="caption">Ring #D4B87A on dark, #7E6329 on paper. Applied to a, button, input, select, textarea.</p>
  </div>
</div>

<h3 class="sub">Skip link</h3>
<p class="note">First thing a keyboard lands on; sits off-screen until focused, then drops into
   the top of the page. Squarespace has its own — check whether it needs restyling rather than
   adding a second one.</p>
<div class="panel">
  <div class="bar">Focused state</div>
  <div class="stage dark" style="padding:22px 32px">
    <a href="#a11y" style="display:inline-block;background:#D4B87A;color:#1A1410;text-decoration:none;
       font-family:'Cinzel',Georgia,serif;font-size:12px;letter-spacing:.24em;text-transform:uppercase;
       padding:14px 24px">Skip to content</a>
    <p class="caption" style="color:#8C8377">Dark page: gold on ink. Light page: ink on paper.</p>
  </div>
</div>

<h3 class="sub">Tap targets</h3>
<p class="note">Nav links are 13px type — about 19px tall, well under the 44px minimum. Rather
   than padding them (which would push the light theme's current-page underline off the text),
   an invisible pseudo-element expands the hit area with zero layout shift:</p>
<div class="specrow" style="margin:14px 0 0">
  <span class="val"><b>rule</b><button class="copy">.nav a::after{content:"";position:absolute;left:0;right:0;top:-13px;bottom:-13px}</button></span>
</div>
<p class="note" style="margin-top:14px">The nav link needs <code>position:relative</code> for
   this. Footer links use ordinary padding instead — there is no underline to protect there.</p>

<h3 class="sub">Minimum type sizes</h3>
<p class="note">Cinzel caps stay legible small, but there is a floor. Nothing user-facing sits
   below <b>11px</b>, and nothing outside a decorative label below <b>12px</b>. The only 9.5px
   type left is the label on the dashed spec boxes, which are deleted before launch.</p>
<div class="tablewrap"><table class="ctab">
  <thead><tr><th>Element</th><th>Desktop</th><th>Mobile</th><th>Tracking</th></tr></thead>
  <tbody>
    <tr><td>Nav</td><td>13px</td><td>11px</td><td>.26em / .18em</td></tr>
    <tr><td>Announcement bar</td><td>12px</td><td>11px</td><td>.26em / .16em</td></tr>
    <tr><td>Form labels</td><td>12px</td><td>12px</td><td>.24em</td></tr>
    <tr><td>Product meta</td><td>12px</td><td>12px</td><td>.2em</td></tr>
    <tr><td>Kickers, column heads, services row</td><td>11px</td><td>11px</td><td>.26–.3em</td></tr>
    <tr><td>Buttons</td><td>11.5–12px</td><td>11.5–12px</td><td>.3em</td></tr>
  </tbody>
</table></div>
<p class="note" style="margin-top:14px">One gotcha worth carrying over: a
   <code>&lt;button class="btn"&gt;</code> defaults to <code>line-height:normal</code> and
   renders 4–5px shorter than an <code>&lt;a class="btn"&gt;</code> beside it. Both templates
   set <code>button.btn{line-height:1.72}</code> to match them.</p>

<!-- ==================== MARKS ==================== -->
<h2 class="sec" id="marks">The marks</h2>
<p class="note">Both come from the client's business card, and they are the fixed points of the
   design — they matter more than the palette. The rule is absolute:
   <b>dark ground gets the arch, light ground gets the key.</b> Both are inline SVG; keep the
   <code>viewBox</code> and never hard-code pixel dimensions. When porting, watch for SVG
   <code>id</code> collisions if the arch appears more than once on a page.</p>

<div class="marks">
  <div class="markbox">
    <div class="in" style="background:#1A1410">
      <svg viewBox="0 0 118 134" width="104" fill="none" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="The lit archway mark, gold on warm black">
        <defs>
          <radialGradient id="sgFloor" cx="50%" cy="95%" r="65%">
            <stop offset="0%" stop-color="#d4b87a" stop-opacity=".26"/>
            <stop offset="55%" stop-color="#b89a5c" stop-opacity=".09"/>
            <stop offset="100%" stop-color="#b89a5c" stop-opacity="0"/>
          </radialGradient>
          <radialGradient id="sgDoor" cx="50%" cy="55%" r="58%">
            <stop offset="0%" stop-color="#2c2010"/><stop offset="100%" stop-color="#0d0b08"/>
          </radialGradient>
          <radialGradient id="sgBloom" cx="50%" cy="38%" r="55%">
            <stop offset="0%" stop-color="#ffe090" stop-opacity=".22"/>
            <stop offset="100%" stop-color="#b89a5c" stop-opacity="0"/>
          </radialGradient>
          <filter id="sgArchF" x="-25%" y="-25%" width="150%" height="150%">
            <feGaussianBlur stdDeviation="3.5" result="b"/>
            <feMerge><feMergeNode in="b"/><feMergeNode in="SourceGraphic"/></feMerge>
          </filter>
          <filter id="sgHaloF" x="-40%" y="-40%" width="180%" height="180%">
            <feGaussianBlur stdDeviation="7" result="b"/>
            <feMerge><feMergeNode in="b"/><feMergeNode in="SourceGraphic"/></feMerge>
          </filter>
          <filter id="sgKeyF" x="-70%" y="-70%" width="240%" height="240%">
            <feGaussianBlur stdDeviation="4" result="b"/>
            <feMerge><feMergeNode in="b"/><feMergeNode in="SourceGraphic"/></feMerge>
          </filter>
        </defs>
        <ellipse cx="59" cy="120" rx="54" ry="19" fill="url(#sgFloor)"/>
        <path d="M11 120 L11 55 Q11 8 59 8 Q107 8 107 55 L107 120 Z" fill="none" stroke="#c8a85e" stroke-width="6" opacity=".1" filter="url(#sgHaloF)"/>
        <path d="M14 120 L14 55 Q14 12 59 12 Q104 12 104 55 L104 120 Z" fill="url(#sgDoor)"/>
        <ellipse cx="59" cy="74" rx="30" ry="34" fill="url(#sgBloom)"/>
        <path d="M14 120 L14 55 Q14 12 59 12 Q104 12 104 55 L104 120" fill="none" stroke="#c8a85e" stroke-width="2" filter="url(#sgArchF)"/>
        <path d="M9 124 L9 55 Q9 6 59 6 Q109 6 109 55 L109 124" fill="none" stroke="#b89a5c" stroke-width=".8" opacity=".38"/>
        <line x1="9" y1="124" x2="109" y2="124" stroke="#b89a5c" stroke-width="1.3" opacity=".45"/>
        <g filter="url(#sgKeyF)">
          <circle cx="59" cy="65" r="14" fill="#f0d890" opacity=".93"/>
          <path d="M52 74 L52 98 Q52 102 59 102 Q66 102 66 98 L66 74 Z" fill="#f0d890" opacity=".93"/>
          <path d="M67.5 65 A8.5 8.5 0 0 0 50.5 65 A8.5 8.5 0 0 0 62.5 73.2 L62.5 96 Q62.5 99 59 99 Q55.5 99 55.5 96 L55.5 73.2 A8.5 8.5 0 0 0 67.5 65 Z" fill="#0d0b08"/>
        </g>
      </svg>
    </div>
    <p class="cap"><b>The archway / portal</b> — dark grounds only. Landing hero, closing panel.</p>
  </div>

  <div class="markbox">
    <div class="in" style="background:#F5F0E8">
      <svg viewBox="0 0 140 44" width="150" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="The skeleton key mark, gold on paper">
        <g fill="#B89A5C">
          <path fill-rule="evenodd" d="M18 6a14 14 0 1 0 0 28 14 14 0 1 0 0-28zm0 7a7 7 0 1 1 0 14 7 7 0 1 1 0-14z"/>
          <rect x="30" y="17.8" width="92" height="4.6" rx="2.3"/>
          <rect x="43" y="12.5" width="2.8" height="15.2" rx="1.4"/>
          <rect x="50" y="12.5" width="2.8" height="15.2" rx="1.4"/>
          <path d="M99 21.5h6.2v13H99z"/>
          <path d="M110.4 21.5h6.2v8.6h-6.2z"/>
        </g>
      </svg>
    </div>
    <p class="cap"><b>The skeleton key</b> — light grounds, and the section divider. Fill <code>#B89A5C</code> on paper, <code>#D4B87A</code> on dark.</p>
  </div>
</div>

<footer class="doc">
  <div class="wrap" style="padding:0">
    Generated by <code>build.py</code> from <code>src/styleguide.tpl</code>. Color values are
    read from the live templates at build time — edit the templates, not this page.
  </div>
</footer>

</div>

<script>

/*TOKENS*/

/* ---------- WCAG relative luminance ---------- */
function parseColor(v){
  v = String(v).trim();
  var m = v.match(/^#([0-9a-f]{6})$/i);
  if(m){var n=parseInt(m[1],16);return [n>>16&255,n>>8&255,n&255,1];}
  m = v.match(/^#([0-9a-f]{3})$/i);
  if(m){var h=m[1];return [parseInt(h[0]+h[0],16),parseInt(h[1]+h[1],16),parseInt(h[2]+h[2],16),1];}
  m = v.match(/rgba?\(([^)]+)\)/i);
  if(m){var p=m[1].split(',').map(function(s){return parseFloat(s)});
        return [p[0],p[1],p[2],p.length>3?p[3]:1];}
  return null;
}
function lum(rgb){
  var a = rgb.slice(0,3).map(function(c){
    c/=255; return c<=0.03928 ? c/12.92 : Math.pow((c+0.055)/1.055,2.4);
  });
  return 0.2126*a[0] + 0.7152*a[1] + 0.0722*a[2];
}
/* flatten a translucent color onto its ground before measuring */
function over(fg,bg){
  if(fg[3]>=1) return fg;
  return [0,1,2].map(function(i){return fg[3]*fg[i] + (1-fg[3])*bg[i]}).concat([1]);
}
function contrast(fgv,bgv){
  var fg=parseColor(fgv), bg=parseColor(bgv);
  if(!fg||!bg) return null;
  var f=lum(over(fg,bg)), b=lum(bg);
  var hi=Math.max(f,b), lo=Math.min(f,b);
  return (hi+0.05)/(lo+0.05);
}

/* ---------- swatches ---------- */
/* Roles are per-theme: `deep` and `cream` appear in both palettes and mean
   different things in each, so a single shared map would lie about one of them. */
var ROLES = {
  dark: {
    bg:'Page ground', 'bg-2':'Alternate band — services row, workbook panel',
    deep:'Deepest ground — the footer', cream:'Primary text',
    'cream-soft':'Secondary text — lede, body, captions',
    gold:'Accent — tagline, price, form labels, focus state',
    'gold-dim':'Quiet accent — nav at rest, kickers',
    muted:'Spec-box text (AA-safe on the ground)',
    rule:'Hairline rules, field underlines, dashed spec boxes',
    'rule-soft':'Faintest rules and the fixed page frame'
  },
  light: {
    paper:'Page ground', 'paper-2':'Footer ground',
    ink:'Primary text, the announcement bar, the solid button',
    'ink-soft':'Secondary text, list rows, ledger rows',
    gold:'Text accent — nav, kickers, price, section heads. Darkened for AA on paper.',
    'gold-line':'Ornament and rule gold — the marks and dashed borders. Never text.',
    muted:'Ledger note and spec-box text (AA-safe on paper)',
    rule:'Hairline rules and plate borders', 'rule-soft':'Faintest rules between list rows',
    deep:'Ground of the closing dark panel', cream:'Reversed text on that panel'
  }
};
function swatch(name, value, themeGround, roles){
  var c = contrast(value, themeGround);
  var isRule = /^rgba/.test(value);
  return '<div class="sw">' +
    '<span class="chip" style="background:' + value + (isRule ? ';background-color:' + themeGround : '') + '"></span>' +
    '<div class="meta">' +
      '<p class="nm">' + name.replace(/-/g,' ').replace(/^\w/,function(s){return s.toUpperCase()}) + '</p>' +
      '<p class="role">' + (roles[name] || '') + '</p>' +
      '<span class="val"><b>hex</b><button class="copy">' + value + '</button></span>' +
      '<span class="var mono">--' + name + (c ? '  ·  ' + c.toFixed(2) + ':1 on ground' : '') + '</span>' +
    '</div></div>';
}
function render(id, tokens, ground, roles){
  var el = document.getElementById(id); if(!el) return;
  el.innerHTML = Object.keys(tokens)
    .filter(function(k){ return k !== 'maxw'; })
    .map(function(k){ return swatch(k, tokens[k].trim(), ground, roles); }).join('');
}
render('sw-dark',  TOKENS.dark,  TOKENS.dark.bg,    ROLES.dark);
render('sw-light', TOKENS.light, TOKENS.light.paper, ROLES.light);

/* the workbook's own accent colors, lifted from the swatch row on the product page */
var ACCENTS = {'sea':'#8FAFAE','blush':'#F6A28A','sun':'#F5CC27','ember':'#E96B2B','pine':'#447570'};
document.getElementById('sw-accent').innerHTML = Object.keys(ACCENTS).map(function(k){
  return '<div class="sw"><span class="chip" style="background:' + ACCENTS[k] + '"></span>' +
    '<div class="meta"><p class="nm">' + k.replace(/^\w/,function(s){return s.toUpperCase()}) + '</p>' +
    '<p class="role">Workbook illustration accent</p>' +
    '<span class="val"><b>hex</b><button class="copy">' + ACCENTS[k] + '</button></span></div></div>';
}).join('');
document.getElementById('accentrow').innerHTML = Object.keys(ACCENTS).map(function(k){
  return '<i style="background:' + ACCENTS[k] + '"></i>';
}).join('');

/* ---------- contrast table ---------- */
var D = TOKENS.dark, L = TOKENS.light;
var PAIRS = [
  [D.cream,        D.bg,      'Body text on the landing page'],
  [D['cream-soft'],D.bg,      'Lede and secondary copy'],
  [D.gold,         D.bg,      'Tagline, price, form labels'],
  [D['gold-dim'],  D.bg,      'Nav at rest, kickers'],
  [D['gold-dim'],  D['bg-2'], 'Services row on the alternate band'],
  [D.muted,        D.bg,      'Spec-box body text'],
  [D.gold,         D.deep,    'Footer contact links'],
  [L.ink,          L.paper,   'Body text on the product page'],
  [L['ink-soft'],  L.paper,   'Secondary copy, list rows, ledger'],
  [L.gold,         L.paper,   'Nav, kickers, price, section heads'],
  [L.muted,        L.paper,   'Ledger note and spec-box text'],
  [L.paper,        L.ink,     'Announcement bar, solid button label'],
  [L.gold,         L['paper-2'],'Footer titles']
];
document.querySelector('#ctab tbody').innerHTML = PAIRS.map(function(p){
  var fg=p[0].trim(), bg=p[1].trim(), r=contrast(fg,bg);
  if(r===null) return '';
  var norm = r>=4.5 ? '<span class="pill pass">Pass</span>'
                    : '<span class="pill fail">Fail</span>';
  var lrg  = r>=3   ? '<span class="pill pass">Pass</span>'
                    : '<span class="pill fail">Fail</span>';
  return '<tr>' +
    '<td><span class="dot" style="background:'+fg+'"></span><span class="mono">'+fg+'</span></td>' +
    '<td><span class="dot" style="background:'+bg+'"></span><span class="mono">'+bg+'</span></td>' +
    '<td class="ratio">'+r.toFixed(2)+':1</td><td>'+norm+'</td><td>'+lrg+'</td>' +
    '<td style="color:var(--doc-soft)">'+p[2]+'</td></tr>';
}).join('');

/* ---------- click to copy ---------- */
document.addEventListener('click', function(e){
  var b = e.target.closest('.copy'); if(!b) return;
  var text = b.textContent.trim();
  var done = function(){ b.classList.add('done'); setTimeout(function(){b.classList.remove('done')},1200); };
  if(navigator.clipboard && navigator.clipboard.writeText){
    navigator.clipboard.writeText(text).then(done, done);
  } else {
    var t=document.createElement('textarea'); t.value=text; document.body.appendChild(t);
    t.select(); try{document.execCommand('copy')}catch(err){} document.body.removeChild(t); done();
  }
});
</script>
</body>
</html>
