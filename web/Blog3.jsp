<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Choosing the Right Sports Gear</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>

/* ===== NAVBAR ===== */
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family: Arial, sans-serif;
    background:#f0f4f8;
}

.navbar{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:0 40px;
    height:80px;
    background: linear-gradient(90deg, #020024, #001f3f, #003366);
}

.logo img{
    width:120px;
    height:80px;
}

.navbar ul{
    display:flex;
    gap:30px;
    list-style:none;
}

.navbar ul li a{
    color:white;
    text-decoration:none;
    font-size:16px;
}

.navbar ul li::after{
    content:'';
    width:0%;
    height:2px;
    background:#00d4ff;
    display:block;
    margin:auto;
    transition:0.4s;
}

.navbar ul li:hover::after{
    width:100%;
}

/* ===== HERO ===== */
.blog-hero{
    height:60vh;
    background:linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
               url("images/b23.jpg");
    background-size:cover;
    background-position:center;
    display:flex;
    justify-content:center;
    align-items:center;
    color:white;
    text-align:center;
}

.blog-hero h1{
    font-size:45px;
}

/* ===== CONTENT ===== */
.blog-container{
    max-width:1000px;
    margin:50px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 5px 20px rgba(0,0,0,0.1);
}

.blog-container p{
    font-size:18px;
    line-height:1.8;
    color:#444;
}

/* Tips */
.tip{
    margin:25px 0;
    padding:20px;
    border-left:5px solid #003366;
    background:#f9f9f9;
    border-radius:8px;
    transition:0.3s;
}

.tip:hover{
    transform:translateY(-3px);
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
}

.tip h3{
    margin-bottom:10px;
    color:#001f3f;
}

/* Back button */
.back-btn{
    display:inline-block;
    margin-top:20px;
    padding:10px 20px;
    border:2px solid #003366;
    color:#003366;
    text-decoration:none;
    border-radius:5px;
    transition:0.3s;
}

.back-btn:hover{
    background:#003366;
    color:white;
}

</style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar">
    <div class="logo">
        <a href="index.jsp">
            <img src="images/9.png">
        </a>
    </div>

    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="index.jsp#sports">Grounds</a></li>
        <li><a href="index.jsp#blog">Blog</a></li>
        <li><a href="index.jsp#contact">Contact</a></li>
    </ul>
</nav>

<!-- HERO -->
<section class="blog-hero">
    <h1>Choosing the Right Sports Gear</h1>
</section>

<!-- CONTENT -->
<div class="blog-container">

<p>
Choosing the right sports gear is essential for performance, comfort, and safety.
The right equipment not only improves your game but also helps prevent injuries
and enhances your overall experience.
</p>

<div class="tip">
<h3>1. Choose According to Your Sport 🎯</h3>
<p>Different sports require different gear. Always select equipment designed specifically for your sport.</p>
</div>

<div class="tip">
<h3>2. Focus on Comfort & Fit 👟</h3>
<p>Proper fit is crucial. Ill-fitting gear can cause discomfort and reduce performance. :contentReference[oaicite:0]{index=0}</p>
</div>

<div class="tip">
<h3>3. Prioritize Safety 🛡️</h3>
<p>Use protective equipment like helmets, pads, and guards to avoid injuries during play. :contentReference[oaicite:1]{index=1}</p>
</div>

<div class="tip">
<h3>4. Check Quality & Durability 🏆</h3>
<p>High-quality gear lasts longer and performs better, making it a smart investment. :contentReference[oaicite:2]{index=2}</p>
</div>

<div class="tip">
<h3>5. Select Proper Material 🧵</h3>
<p>Choose breathable and moisture-wicking fabrics for comfort during intense activities. :contentReference[oaicite:3]{index=3}</p>
</div>

<div class="tip">
<h3>6. Consider Your Skill Level 📊</h3>
<p>Beginners should start with basic gear, while professionals can invest in advanced equipment.</p>
</div>

<div class="tip">
<h3>7. Read Reviews & Expert Advice ⭐</h3>
<p>Check online reviews or ask coaches before buying to avoid poor-quality products. :contentReference[oaicite:4]{index=4}</p>
</div>

<div class="tip">
<h3>8. Set Your Budget 💰</h3>
<p>Balance quality and price—don’t go too cheap or unnecessarily expensive. :contentReference[oaicite:5]{index=5}</p>
</div>

<div class="tip">
<h3>9. Try Before Buying 🛒</h3>
<p>If possible, test equipment to ensure comfort, size, and usability.</p>
</div>

<div class="tip">
<h3>10. Maintain Your Gear 🔧</h3>
<p>Regular cleaning and checking for damage keeps your equipment safe and long-lasting.</p>
</div>

<a href="index.jsp" class="back-btn">← Back to Home</a>

</div>

</body>
</html>