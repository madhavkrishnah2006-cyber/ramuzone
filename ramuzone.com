<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Ramuzone — Online Shopping</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root{
      --primary:#1A73E8;
      --accent:#FFB300;
      --bg:#F5F7FA;
      --card:#ffffff;
      --text:#1F1F1F;
      --muted:#6B7280;
      --radius:14px;
      font-family: 'Inter', sans-serif;
    }
    *{box-sizing:border-box}
    body{
      margin:0;background:var(--bg);color:var(--text);
    }
    .wrap{max-width:1200px;margin:24px auto;padding:0 20px}
    header{display:flex;align-items:center;gap:16px;padding:12px 0}
    .logo{display:flex;align-items:center;gap:8px;font-weight:800;color:var(--primary);font-size:22px}
    .logo .mark{background:linear-gradient(135deg,var(--primary),#164fca);color:white;padding:6px 12px;border-radius:10px}
    .searchbar{flex:1;display:flex;align-items:center;background:var(--card);padding:8px;border-radius:999px;box-shadow:0 4px 14px rgba(0,0,0,0.06)}
    .searchbar input{border:0;outline:none;padding:8px 12px;font-size:15px;border-radius:999px;flex:1}
    .searchbar button{border:0;background:var(--primary);color:white;padding:10px 14px;border-radius:999px;margin-right:4px;cursor:pointer}
    .icons{display:flex;gap:12px;align-items:center}
    .icon-btn{background:transparent;border:0;padding:8px 10px;border-radius:10px;cursor:pointer}

    .cats{display:flex;gap:12px;overflow:auto;padding:12px 0;margin:6px 0}
    .cat{min-width:98px;background:var(--card);border-radius:12px;padding:10px;display:flex;flex-direction:column;align-items:center;justify-content:center;box-shadow:0 8px 18px rgba(0,0,0,0.05)}
    .cat .emoji{font-size:22px}
    .cat p{margin:8px 0 0;font-size:13px;color:var(--muted)}

    .hero{margin:18px 0;border-radius:18px;overflow:hidden;position:relative}
    .slides{display:flex;transition:transform 600ms}
    .slide{min-width:100%;height:260px;display:flex;align-items:center;padding:28px;background:linear-gradient(90deg, rgba(26,115,232,0.12), rgba(255,179,0,0.06));gap:20px}
    .slide img{width:320px;max-width:40%;border-radius:12px}

    .dots{position:absolute;bottom:12px;left:50%;transform:translateX(-50%);display:flex;gap:8px}
    .dot{width:10px;height:10px;border-radius:999px;background:#ccc;cursor:pointer}
    .dot.active{background:var(--primary)}

    .grid{display:grid;grid-template-columns:repeat(3,1fr);gap:18px;margin-top:22px}
    .card{background:var(--card);border-radius:14px;padding:14px;box-shadow:0 8px 20px rgba(0,0,0,0.05)}
    .card img{width:100%;height:180px;object-fit:contain;border-radius:8px}
    .title{font-weight:600;margin:8px 0;font-size:15px}
    .price{font-size:16px;font-weight:700}
    .star{display:flex;align-items:center;gap:6px;color:#F59E0B}
    .add-btn{background:var(--primary);color:white;border:0;padding:9px 12px;border-radius:10px;cursor:pointer}

    footer{margin-top:32px;padding:28px 0;border-top:1px solid #ddd;color:var(--muted);display:flex;justify-content:space-between}
  </style>
</head>
<body>
  <div class="wrap">
    <header>
      <div class="logo"><div class="mark">R</div> Ramuzone</div>

      <div class="searchbar">
        <input id="searchInput" placeholder="Search products...">
        <button id="searchBtn">Search</button>
      </div>

      <div class="icons">
        <button class="icon-btn">Orders</button>
        <button class="icon-btn">Cart</button>
        <button class="icon-btn">Profile</button>
      </div>
    </header>

    <div class="cats">
      <div class="cat"><div class="emoji">📱</div><p>Mobiles</p></div>
      <div class="cat"><div class="emoji">👗</div><p>Fashion</p></div>
      <div class="cat"><div class="emoji">🏠</div><p>Home</p></div>
      <div class="cat"><div class="emoji">💻</div><p>Electronics</p></div>
      <div class="cat"><div class="emoji">🍽</div><p>Kitchen</p></div>
      <div class="cat"><div class="emoji">🎮</div><p>Gaming</p></div>
    </div>

    <section class="hero">
      <div class="slides" id="slides">
        <div class="slide">
          <div>
            <h2>Deals — Up to 70% OFF</h2>
            <p>Electronics, fashion & more.</p>
          </div>
          <img src="https://via.placeholder.com/300x200?text=Deals">
        </div>
        <div class="slide">
          <div>
            <h2>Smart Home Offers</h2>
            <p>Make l
