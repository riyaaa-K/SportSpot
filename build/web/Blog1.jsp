<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>10 Tips for a Healthy Lifestyle</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>

/* ===== NAVBAR (Same as your site) ===== */
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family: Arial, sans-serif;
    background:#f0f4f8;
}

/* Navbar */
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
    position:relative;
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

/* ===== BLOG HERO ===== */
.blog-hero{
    height:60vh;
    background:linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
               url("images/b_1.jpg");
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

/* ===== BLOG CONTENT ===== */
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
    <h1>10 Tips for a Healthy Lifestyle</h1>
</section>

<!-- CONTENT -->
<div class="blog-container">

<p>
Living a healthy lifestyle doesn’t require drastic changes. Small daily habits
can improve your physical health, mental well-being, and overall quality of life.
Here are 10 simple tips to help you stay fit and active.
</p>

<div class="tip">
<h3>1. Stay Hydrated 💧</h3>
<p>Drink enough water daily to keep your body energized and refreshed.</p>
</div>

<div class="tip">
<h3>2. Eat Balanced Diet 🥗</h3>
<p>Include fruits, vegetables, proteins, and whole grains in your meals.</p>
</div>

<div class="tip">
<h3>3. Exercise Regularly 🏃</h3>
<p>At least 30 minutes of physical activity daily improves fitness.</p>
</div>

<div class="tip">
<h3>4. Get Enough Sleep 😴</h3>
<p>7–8 hours of sleep helps your body recover and function properly.</p>
</div>

<div class="tip">
<h3>5. Avoid Junk Food 🍔</h3>
<p>Limit processed and fast food for better health.</p>
</div>

<div class="tip">
<h3>6. Manage Stress 🧘</h3>
<p>Practice meditation, yoga, or hobbies to stay mentally healthy.</p>
</div>

<div class="tip">
<h3>7. Stay Active 🚴</h3>
<p>Take stairs, walk more, and avoid sitting for long hours.</p>
</div>

<div class="tip">
<h3>8. Maintain Hygiene 🧼</h3>
<p>Keep yourself and surroundings clean to prevent diseases.</p>
</div>

<div class="tip">
<h3>9. Regular Checkups 🏥</h3>
<p>Visit doctors regularly for preventive healthcare.</p>
</div>

<div class="tip">
<h3>10. Stay Positive 😊</h3>
<p>A positive mindset improves both mental and physical health.</p>
</div>

<a href="index.jsp" class="back-btn">← Back to Home</a>

</div>

</body>
</html>