<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Best Exercises for Cardio</title>

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
               url("images/b21.jpg");
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

/* Exercise cards */
.exercise{
    margin:25px 0;
    padding:20px;
    border-left:5px solid #003366;
    background:#f9f9f9;
    border-radius:8px;
    transition:0.3s;
}

.exercise:hover{
    transform:translateY(-3px);
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
}

.exercise h3{
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
    <h1>Best Exercises for Cardio</h1>
</section>

<!-- CONTENT -->
<div class="blog-container">

<p>
Cardio exercises help improve heart health, increase stamina, and burn calories.
Incorporating these workouts into your daily routine can boost your overall fitness
and energy levels.
</p>

<div class="exercise">
<h3>1. Running 🏃</h3>
<p>One of the best cardio workouts that improves endurance and burns calories quickly.</p>
</div>

<div class="exercise">
<h3>2. Cycling 🚴</h3>
<p>Great for leg strength and cardiovascular health, suitable for all fitness levels.</p>
</div>

<div class="exercise">
<h3>3. Jump Rope 🪢</h3>
<p>A simple yet powerful workout that improves coordination and burns fat fast.</p>
</div>

<div class="exercise">
<h3>4. Swimming 🏊</h3>
<p>Full-body workout that is easy on joints and improves lung capacity.</p>
</div>

<div class="exercise">
<h3>5. Brisk Walking 🚶</h3>
<p>Perfect for beginners, helps maintain fitness and improves heart health.</p>
</div>

<div class="exercise">
<h3>6. HIIT (High Intensity Interval Training) ⚡</h3>
<p>Short bursts of intense exercise followed by rest periods for maximum fat burn.</p>
</div>

<div class="exercise">
<h3>7. Stair Climbing 🏢</h3>
<p>Strengthens legs and boosts cardiovascular endurance.</p>
</div>

<div class="exercise">
<h3>8. Dancing 💃</h3>
<p>A fun way to stay fit while improving coordination and stamina.</p>
</div>

<div class="exercise">
<h3>9. Rowing 🚣</h3>
<p>Engages multiple muscle groups and improves overall endurance.</p>
</div>

<div class="exercise">
<h3>10. Aerobics 🤸</h3>
<p>Structured workouts that improve flexibility, strength, and heart health.</p>
</div>

<a href="index.jsp" class="back-btn">← Back to Home</a>

</div>

</body>
</html>