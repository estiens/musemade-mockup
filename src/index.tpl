<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Muse Made Coaching — Intimacy &amp; Life Satisfaction</title>
<meta name="description" content="Erica Jones — intimacy and life satisfaction coaching and hypnotherapy. Welcome to your most satisfied self.">
<meta name="color-scheme" content="dark">
<meta name="theme-color" content="#1A1410">
<!-- Link-sharing card. No og:image: every image on this site is a base64 data URI,
     and Open Graph needs an absolute http(s) URL. Add og:image + og:url in Squarespace,
     which serves the imagery from a real URL. -->
<meta property="og:type" content="website">
<meta property="og:site_name" content="Muse Made Coaching">
<meta property="og:title" content="Muse Made Coaching — Intimacy &amp; Life Satisfaction">
<meta property="og:description" content="Erica Jones — intimacy and life satisfaction coaching and hypnotherapy. Welcome to your most satisfied self.">
<meta name="twitter:card" content="summary">
<link rel="icon" href="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI+PHJlY3Qgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0IiBmaWxsPSIjMUExNDEwIi8+PHBhdGggZD0iTTE0IDU2VjI4YTE4IDE4IDAgMCAxIDM2IDB2Mjh6IiBmaWxsPSIjRDRCODdBIi8+PHBhdGggZD0iTTMyIDIwYTggOCAwIDAgMC00IDE0LjlWNDZhNCA0IDAgMCAwIDggMFYzNC45QTggOCAwIDAgMCAzMiAyMHoiIGZpbGw9IiMxQTE0MTAiLz48L3N2Zz4=">
/*FONTS*/
<style>
:root{
  --bg:#1A1410;
  --bg-2:#221B16;
  --deep:#0C0906;
  --cream:#F5F0E8;
  --cream-soft:#CFC6BA;
  --gold:#D4B87A;
  --gold-dim:#B89A5C;
  --rule:rgba(212,184,122,.26);
  --rule-soft:rgba(212,184,122,.14);
  --muted:#9C907F;        /* AA-safe muted text on the dark ground */
  --maxw:760px;
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{
  margin:0;background:var(--bg);color:var(--cream);
  font-family:'Cormorant Garamond',Garamond,'Times New Roman',serif;
  font-size:19px;line-height:1.72;font-weight:300;letter-spacing:.02em;
  -webkit-font-smoothing:antialiased;
}
.wrap{max-width:var(--maxw);margin:0 auto;padding:0 30px}
a{color:inherit}
/* height:auto is required: the width/height attributes on each <img> are
   presentational hints that reserve the aspect ratio, and without this the
   pixel height wins and the image stretches */
img{max-width:100%;height:auto;display:block}
.cin{font-family:'Cinzel',Georgia,serif;text-transform:uppercase}

/* skip link — first thing a keyboard lands on */
.skip{position:absolute;left:50%;top:0;transform:translate(-50%,-140%);z-index:100;
  background:var(--gold);color:#1A1410;text-decoration:none;
  font-family:'Cinzel',Georgia,serif;font-size:12px;letter-spacing:.24em;text-transform:uppercase;
  padding:14px 24px;transition:transform .15s}
.skip:focus{transform:translate(-50%,0)}

/* gold hairline frame */
.frame{position:fixed;inset:16px;border:1px solid var(--rule-soft);pointer-events:none;z-index:60}
@media(max-width:640px){.frame{inset:9px}}

/* nav */
header{position:relative;z-index:40}
.nav{display:flex;align-items:center;justify-content:center;gap:38px;padding:34px 0 0;
  font-family:'Cinzel',Georgia,serif;font-size:13px;letter-spacing:.26em;text-transform:uppercase}
.nav a{position:relative;text-decoration:none;color:var(--gold-dim);transition:color .2s}
.nav a:hover,.nav a:focus-visible{color:var(--gold)}
/* the nav text is 13px tall; this grows the tap target to ~44px without moving anything */
.nav a::after{content:"";position:absolute;left:0;right:0;top:-13px;bottom:-13px}
@media(max-width:520px){.nav{gap:20px;font-size:11px;letter-spacing:.18em}}

/* ---------- hero ---------- */
.hero{position:relative;overflow:hidden;text-align:center;padding:54px 0 74px}
.glow{position:absolute;left:50%;top:-40px;transform:translateX(-50%);width:900px;height:640px;
  background:radial-gradient(ellipse at center,rgba(212,184,122,.13),rgba(212,184,122,0) 62%);pointer-events:none}
@media(max-width:700px){.glow{width:560px;height:460px}}

/* the whole hero sits inside a vast, faint portal */
.portal-bg{position:absolute;left:50%;bottom:0;transform:translateX(-50%);
  width:min(880px,94vw);height:100%;pointer-events:none}

.mark{position:relative;font-family:'Cinzel',Georgia,serif;font-weight:500;text-transform:uppercase;
  font-size:clamp(38px,7.2vw,66px);line-height:1.08;letter-spacing:.17em;margin:0 0 0 .17em;color:var(--cream)}
.tagline{position:relative;font-size:clamp(12px,1.6vw,15px);letter-spacing:.34em;text-transform:uppercase;
  color:var(--gold);font-weight:400;margin:22px 0 0;line-height:2}

/* the threshold — the archway from the card, at full size */
.portal{position:relative;margin:42px 0 0;display:flex;justify-content:center}
.portal svg{display:block;width:clamp(150px,22vw,196px);height:auto}
.portal-cap{position:relative;font-family:'Cinzel',Georgia,serif;font-size:clamp(13px,1.9vw,17px);
  letter-spacing:.36em;text-transform:uppercase;color:var(--gold);margin:22px 0 0;font-weight:400}

h1{position:relative;font-family:'Cinzel',Georgia,serif;font-weight:400;text-transform:uppercase;
  font-size:clamp(20px,3.1vw,29px);line-height:1.55;letter-spacing:.19em;color:var(--cream);
  margin:38px auto 0;max-width:23ch}
.lede{position:relative;margin:26px auto 0;max-width:40ch;font-size:20px;color:var(--cream-soft);letter-spacing:.015em}
.cta{position:relative;margin-top:40px;display:flex;gap:18px;justify-content:center;flex-wrap:wrap}
.btn{display:inline-block;font-family:'Cinzel',Georgia,serif;font-size:12px;letter-spacing:.3em;text-transform:uppercase;
  padding:16px 34px;text-decoration:none;background:var(--gold);color:#1A1410;border:1px solid var(--gold);transition:.2s;cursor:pointer}
.btn:hover{background:var(--cream);border-color:var(--cream)}
.btn-ghost{background:transparent;color:var(--gold);border-color:var(--rule)}
.btn-ghost:hover{background:transparent;color:var(--cream);border-color:var(--gold)}
/* <button> defaults to line-height:normal, which made it 5px shorter than an <a class="btn"> */
button.btn{line-height:1.72}

/* key ornament rule — the second mark from the card */
.keyrule{display:flex;align-items:center;justify-content:center;gap:20px;margin:0 0 30px}
.keyrule::before,.keyrule::after{content:"";width:68px;height:1px;background:var(--rule)}
.keyrule svg{display:block;width:112px;height:auto}
@media(max-width:520px){.keyrule::before,.keyrule::after{width:36px}}

/* services rule row */
.svc{border-top:1px solid var(--rule-soft);border-bottom:1px solid var(--rule-soft);background:var(--bg-2)}
.svcrow{display:flex;justify-content:center;flex-wrap:wrap;gap:0;padding:0;max-width:1080px}
.svcrow span{font-family:'Cinzel',Georgia,serif;font-size:11px;letter-spacing:.26em;text-transform:uppercase;
  color:var(--gold-dim);padding:22px 26px;position:relative}
.svcrow span+span::before{content:"";position:absolute;left:0;top:50%;transform:translateY(-50%);width:1px;height:13px;background:var(--rule)}
/* the four labels need 885px to sit on one line; below that they wrapped with an
   orphaned divider rule leading the second row, so stack them instead */
@media(max-width:900px){.svcrow{flex-direction:column;text-align:center}.svcrow span+span::before{display:none}
  .svcrow span{padding:14px 0;border-top:1px solid var(--rule-soft)}}

/* section furniture */
.kicker{font-family:'Cinzel',Georgia,serif;font-size:11px;letter-spacing:.3em;text-transform:uppercase;color:var(--gold-dim);margin:0 0 18px}
h2{font-family:'Cinzel',Georgia,serif;font-weight:400;text-transform:uppercase;font-size:clamp(22px,3vw,30px);
  letter-spacing:.2em;margin:0 0 22px;color:var(--cream)}

/* ---------- about ---------- */
.about{padding:86px 0 90px;text-align:center}
.about p{color:var(--cream-soft);max-width:52ch;margin:0 auto 22px}
.about p:last-of-type{margin-bottom:0}
.todo{border:1px dashed var(--rule);padding:30px 28px;margin:34px auto 0;max-width:58ch;
  font-size:15px;line-height:1.8;color:var(--muted);letter-spacing:.03em}
.todo b{font-family:'Cinzel',Georgia,serif;display:block;font-size:10px;letter-spacing:.3em;
  text-transform:uppercase;color:var(--gold-dim);margin-bottom:10px;font-weight:400}

/* ---------- the workbook ---------- */
.book{background:var(--bg-2);border-top:1px solid var(--rule-soft);border-bottom:1px solid var(--rule-soft);
  padding:82px 0 86px}
.bookgrid{display:grid;grid-template-columns:minmax(0,300px) minmax(0,1fr);gap:56px;align-items:center;
  max-width:940px;margin:0 auto;padding:0 30px}
@media(max-width:780px){.bookgrid{grid-template-columns:1fr;gap:38px;text-align:center;max-width:560px}}
.bookshot{border:1px solid var(--rule);padding:12px;background:var(--deep)}
.bookshot img{width:100%}
.book h2{margin-bottom:18px}
.book .kicker{margin-bottom:16px}
.book p{color:var(--cream-soft);margin:0 0 20px;max-width:44ch}
@media(max-width:780px){.book p{margin-left:auto;margin-right:auto}}
.price{font-family:'Cinzel',Georgia,serif;font-size:22px;letter-spacing:.1em;color:var(--gold);margin:0 0 6px}
.price small{font-family:'Cormorant Garamond',Garamond,serif;font-size:17px;letter-spacing:.03em;
  color:var(--cream-soft);text-transform:none;display:block;margin-top:8px}
.book .cta{justify-content:flex-start;margin-top:28px}
@media(max-width:780px){.book .cta{justify-content:center}}

/* ---------- form ---------- */
.formsec{padding:86px 0 92px;text-align:center}
.formsec .sub{max-width:38ch;margin:0 auto 46px;color:var(--cream-soft)}
form{display:grid;gap:30px;text-align:left;max-width:600px;margin:0 auto}
.row{display:grid;grid-template-columns:1fr 1fr;gap:30px}
@media(max-width:600px){.row{grid-template-columns:1fr}}
label{display:block;font-family:'Cinzel',Georgia,serif;font-size:10.5px;letter-spacing:.28em;text-transform:uppercase;
  color:var(--gold);margin-bottom:10px}
input,select,textarea{width:100%;background:transparent;border:0;border-bottom:1px solid var(--rule);
  color:var(--cream);font-family:'Cormorant Garamond',Garamond,serif;font-size:19px;font-weight:300;letter-spacing:.02em;
  padding:9px 0;transition:border-color .2s}
select{appearance:none;border-radius:0;
  background-image:linear-gradient(45deg,transparent 50%,var(--gold) 50%),linear-gradient(135deg,var(--gold) 50%,transparent 50%);
  background-position:right 6px center,right 1px center;background-size:5px 5px,5px 5px;background-repeat:no-repeat}
select option{background:#221B16;color:var(--cream)}
textarea{resize:vertical;min-height:100px}
input:focus,select:focus,textarea:focus{outline:none;border-bottom-color:var(--gold)}
.sendrow{text-align:center;margin-top:10px}
.confirm{display:none;max-width:560px;margin:0 auto;border:1px solid var(--rule);padding:52px 40px}
.confirm.on{display:block}
.confirm h3{font-family:'Cinzel',Georgia,serif;font-weight:400;text-transform:uppercase;font-size:21px;letter-spacing:.26em;
  color:var(--gold);margin:0 0 18px}
.confirm p{margin:0;color:var(--cream-soft)}

/* ---------- footer ---------- */
footer{border-top:1px solid var(--rule-soft);background:var(--deep);padding:58px 0 62px;text-align:center}
.fmark{font-family:'Cinzel',Georgia,serif;font-weight:500;text-transform:uppercase;font-size:17px;letter-spacing:.34em;
  margin:0 0 10px;color:var(--cream)}
.ftitles{font-style:italic;font-size:16px;letter-spacing:.16em;text-transform:uppercase;color:var(--gold-dim);margin:0 0 26px}
.finfo{font-size:18px;line-height:2.2;letter-spacing:.06em}
.finfo a{display:inline-block;padding:6px 2px;color:var(--gold);text-decoration:none;
  border-bottom:1px solid transparent;transition:.2s}
.finfo a:hover{border-color:var(--gold)}

.sqs{border:1px dashed var(--rule);background:rgba(212,184,122,.04);padding:20px 22px;
  margin:34px auto 0;max-width:600px;text-align:left;font-size:15px;line-height:1.7;
  color:var(--muted);letter-spacing:.03em}
.sqs b{font-family:'Cinzel',Georgia,serif;display:block;font-size:9.5px;letter-spacing:.28em;
  text-transform:uppercase;color:var(--gold-dim);margin-bottom:8px;font-weight:400}

/* the keyhole breathes */
@keyframes bliss{0%,100%{opacity:.55}50%{opacity:1}}
.kglow{animation:bliss 6s ease-in-out infinite}

/* ---------- keyboard focus ----------
   last in the sheet so it beats `input:focus{outline:none}` above */
a:focus-visible,button:focus-visible,input:focus-visible,select:focus-visible,textarea:focus-visible{
  outline:2px solid var(--gold);outline-offset:3px}
.btn:focus-visible{outline-offset:4px}

@media(prefers-reduced-motion:reduce){
  html{scroll-behavior:auto}
  .kglow{animation:none;opacity:.8}
  .skip{transition:none}
}

/* the fixed hairline frame would print on every sheet */
@media print{.frame,.glow,.portal-bg,.skip{display:none}}
</style>
</head>
<body>
<a class="skip" href="#main">Skip to content</a>
<div class="frame" aria-hidden="true"></div>

<header>
  <nav class="nav">
    <a href="#about">About</a>
    <a href="workbook.html">The Workbook</a>
    <a href="#inquiry">Contact</a>
  </nav>
</header>

<main id="main">

<!-- ==================== HERO ==================== -->
<section class="hero">
  <div class="glow" aria-hidden="true"></div>

  <!-- the hero itself stands inside the portal -->
  <svg class="portal-bg" viewBox="0 0 118 134" preserveAspectRatio="none" aria-hidden="true">
    <path d="M14 134 L14 55 Q14 12 59 12 Q104 12 104 55 L104 134"
          fill="none" stroke="#D4B87A" stroke-width=".35" opacity=".22" vector-effect="non-scaling-stroke"/>
    <path d="M6 134 L6 55 Q6 4 59 4 Q112 4 112 55 L112 134"
          fill="none" stroke="#D4B87A" stroke-width=".35" opacity=".11" vector-effect="non-scaling-stroke"/>
  </svg>

  <div class="wrap">
    <p class="mark">Muse Made</p>
    <p class="tagline">Intimacy &amp; Life Satisfaction<br>Coaching and Hypnotherapy</p>

    <!-- ARCHWAY + KEYHOLE — the mark from the business card -->
    <div class="portal" aria-hidden="true">
      <!-- purely ornamental: the wrapper is aria-hidden, so no role/aria-label here
           (a label inside an aria-hidden subtree is never announced) -->
      <svg viewBox="0 0 118 134" fill="none" xmlns="http://www.w3.org/2000/svg" focusable="false">
        <defs>
          <radialGradient id="pFloor" cx="50%" cy="95%" r="65%">
            <stop offset="0%"   stop-color="#d4b87a" stop-opacity=".26"/>
            <stop offset="55%"  stop-color="#b89a5c" stop-opacity=".09"/>
            <stop offset="100%" stop-color="#b89a5c" stop-opacity="0"/>
          </radialGradient>
          <radialGradient id="pDoor" cx="50%" cy="55%" r="58%">
            <stop offset="0%"   stop-color="#2c2010"/>
            <stop offset="100%" stop-color="#0d0b08"/>
          </radialGradient>
          <radialGradient id="pBloom" cx="50%" cy="38%" r="55%">
            <stop offset="0%"   stop-color="#ffe090" stop-opacity=".22"/>
            <stop offset="100%" stop-color="#b89a5c" stop-opacity="0"/>
          </radialGradient>
          <filter id="pArchF" x="-25%" y="-25%" width="150%" height="150%">
            <feGaussianBlur stdDeviation="3.5" result="b"/>
            <feMerge><feMergeNode in="b"/><feMergeNode in="SourceGraphic"/></feMerge>
          </filter>
          <filter id="pHaloF" x="-40%" y="-40%" width="180%" height="180%">
            <feGaussianBlur stdDeviation="7" result="b"/>
            <feMerge><feMergeNode in="b"/><feMergeNode in="SourceGraphic"/></feMerge>
          </filter>
          <filter id="pKeyF" x="-70%" y="-70%" width="240%" height="240%">
            <feGaussianBlur stdDeviation="4" result="b"/>
            <feMerge><feMergeNode in="b"/><feMergeNode in="SourceGraphic"/></feMerge>
          </filter>
        </defs>

        <ellipse cx="59" cy="120" rx="54" ry="19" fill="url(#pFloor)"/>

        <path d="M11 120 L11 55 Q11 8 59 8 Q107 8 107 55 L107 120 Z"
              fill="none" stroke="#c8a85e" stroke-width="6" opacity=".1" filter="url(#pHaloF)"/>

        <path d="M14 120 L14 55 Q14 12 59 12 Q104 12 104 55 L104 120 Z" fill="url(#pDoor)"/>

        <ellipse cx="59" cy="74" rx="30" ry="34" fill="url(#pBloom)"/>

        <path d="M14 120 L14 55 Q14 12 59 12 Q104 12 104 55 L104 120"
              fill="none" stroke="#c8a85e" stroke-width="2" filter="url(#pArchF)"/>

        <path d="M9 124 L9 55 Q9 6 59 6 Q109 6 109 55 L109 124"
              fill="none" stroke="#b89a5c" stroke-width=".8" opacity=".38"/>

        <line x1="9" y1="124" x2="109" y2="124" stroke="#b89a5c" stroke-width="1.3" opacity=".45"/>

        <circle class="kglow" cx="59" cy="67" r="22" fill="#d4b87a" opacity=".08" filter="url(#pKeyF)"/>

        <g filter="url(#pKeyF)">
          <circle cx="59" cy="65" r="14" fill="#f0d890" opacity=".93"/>
          <path d="M52 74 L52 98 Q52 102 59 102 Q66 102 66 98 L66 74 Z" fill="#f0d890" opacity=".93"/>
          <path d="M67.5 65
                   A8.5 8.5 0 0 0 50.5 65
                   A8.5 8.5 0 0 0 62.5 73.2
                   L62.5 96 Q62.5 99 59 99 Q55.5 99 55.5 96
                   L55.5 73.2
                   A8.5 8.5 0 0 0 67.5 65 Z"
                fill="#0d0b08"/>
        </g>

        <ellipse cx="59" cy="98" rx="6" ry="3" fill="#f0d890" opacity=".07" filter="url(#pHaloF)"/>
      </svg>
    </div>

    <p class="portal-cap">Unlock Your Bliss</p>

    <h1>Welcome to your most satisfied self</h1>
    <p class="lede">Begin the journey. Share a little about yourself and I&rsquo;ll be in touch.</p>
    <div class="cta">
      <a class="btn" href="#inquiry">Send Inquiry</a>
      <a class="btn btn-ghost" href="workbook.html">The Workbook</a>
    </div>
  </div>
</section>

<div class="svc">
  <div class="wrap svcrow">
    <span>Life Satisfaction Coaching</span>
    <span>Intimacy Coaching</span>
    <span>Hypnotherapy</span>
    <span>Speaking</span>
  </div>
</div>

<!-- ==================== ABOUT ====================
     TODO: replace the .todo block below with the About copy.
     Two or three short paragraphs sit best here; the layout is centred
     and capped at ~52 characters a line.
================================================== -->
<section class="about" id="about">
  <div class="wrap">
    <div class="keyrule" aria-hidden="true">
      <svg viewBox="0 0 140 44" xmlns="http://www.w3.org/2000/svg" focusable="false">
        <g fill="#D4B87A">
          <path fill-rule="evenodd" d="M18 6a14 14 0 1 0 0 28 14 14 0 1 0 0-28zm0 7a7 7 0 1 1 0 14 7 7 0 1 1 0-14z"/>
          <rect x="30" y="17.8" width="92" height="4.6" rx="2.3"/>
          <rect x="43" y="12.5" width="2.8" height="15.2" rx="1.4"/>
          <rect x="50" y="12.5" width="2.8" height="15.2" rx="1.4"/>
          <path d="M99 21.5h6.2v13H99z"/>
          <path d="M110.4 21.5h6.2v8.6h-6.2z"/>
        </g>
      </svg>
    </div>

    <p class="kicker">About</p>
    <h2>Erica Jones</h2>
    <p><em>Sensualist &nbsp;&middot;&nbsp; Hypnotist &nbsp;&middot;&nbsp; Alchemist</em></p>

    <div class="todo">
      <b>Copy pending</b>
      The About copy goes here — the section is built and styled, it just needs the words.
      Two or three short paragraphs drop in as-is; the column is capped at about 52
      characters a line.
    </div>
  </div>
</section>

<!-- ==================== THE WORKBOOK ==================== -->
<section class="book">
  <div class="bookgrid">
    <div class="bookshot"><img data-img="p33L" width="760" height="1148" alt="A page from the Modern Mantras Workbook: I&rsquo;ve survived 100% of my bad days"></div>
    <div>
      <p class="kicker">In the shop</p>
      <h2>Modern Mantras Workbook</h2>
      <p>Fifty-two illustrated mantras across twelve themes — one for every week of the
         year — each paired with prompts that turn a borrowed phrase into something that
         is actually yours.</p>
      <p class="price">$25.00
        <small>$31.84 delivered, tax and shipping included</small>
      </p>
      <div class="cta">
        <a class="btn" href="workbook.html">Order the Workbook</a>
      </div>
    </div>
  </div>
</section>

<!-- ==================== INQUIRY ==================== -->
<section class="formsec" id="inquiry">
  <div class="wrap">
    <p class="kicker">Inquiries</p>
    <h2>Begin the journey</h2>
    <p class="sub">Share a little about yourself and I&rsquo;ll be in touch.</p>

    <form id="inq">
      <div class="row">
        <div><label for="n3">Your Name</label><input id="n3" name="name" type="text" autocomplete="name" required></div>
        <div><label for="e3">Email Address</label><input id="e3" name="email" type="email" autocomplete="email" required></div>
      </div>
      <div>
        <label for="s3">What brings you here?</label>
        <select id="s3" name="interest">
          <option>Life Satisfaction Coaching</option>
          <option>Intimacy Coaching</option>
          <option>Hypnotherapy</option>
          <option>Speaking Engagement</option>
          <option>Something else</option>
        </select>
      </div>
      <div><label for="m3">Tell me more</label><textarea id="m3" name="message"></textarea></div>
      <div class="sendrow"><button class="btn" type="submit">Send Inquiry</button></div>
    </form>

    <div class="sqs">
      <b>Squarespace</b>
      This form is the visual spec, not the live one. In Squarespace it gets replaced by a
      Form Block — the styling above is what the Form Block should be CSS&rsquo;d to match, and
      the block handles delivery, storage and spam.
    </div>

    <div class="confirm" id="ok3" role="status" tabindex="-1">
      <h3>Message Received</h3>
      <p>Thank you for reaching out. I&rsquo;ll be in touch soon to begin our conversation.</p>
    </div>
  </div>
</section>

</main>

<footer>
  <div class="wrap">
    <p class="fmark">Muse Made Coaching</p>
    <p class="ftitles">Intimacy and Life Satisfaction Coach</p>
    <div class="finfo">
      <a href="tel:+16124404740">+1 612-440-4740</a><br>
      <a href="mailto:ericajones@musemadecoaching.com">ericajones@musemadecoaching.com</a>
    </div>
  </div>
</footer>

<script>
/*IMG*/
document.querySelectorAll('[data-img]').forEach(function(el){el.src=IMG[el.dataset.img]});

/* TODO: the inquiry form is front-end only. Point it at Formspree / Netlify Forms
   / an email endpoint before launch. */
document.getElementById('inq').addEventListener('submit',function(e){
  e.preventDefault();
  var ok=document.getElementById('ok3');
  this.style.display='none';
  ok.classList.add('on');
  /* the submit button just vanished — put focus on the confirmation so keyboard
     users are not dumped back at the top, and so role="status" announces it */
  ok.focus();
});
</script>
</body>
</html>
