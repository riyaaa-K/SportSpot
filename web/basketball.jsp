<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String user = (String) session.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Basketball Booking</title>

<link rel="stylesheet" href="Style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>
    /* NAVBAR */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 60px;
    height: 85px;
    background: linear-gradient(90deg, #020024, #001f3f, #003366);
    box-shadow: 0 2px 10px rgba(0,0,0,0.4);
}

.nav-links ul {
    display: flex;
    gap: 35px;
    align-items: center;
    list-style: none;
}

/* HERO */
.Basketball-hero {
    height: 260px;
    background: linear-gradient(rgba(4,9,30,0.7), rgba(4,9,30,0.7)),
                url('images/C.jpg') center/cover no-repeat;
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
}

.Basketball-hero h1 {
    font-size: 40px;
}

/* MAIN SECTION */
.booking-wrapper {
    background: #f0f4f8;
    padding: 50px 20px;
    text-align: center;
    padding-top: 15px;

}

.booking-wrapper h4 {
    color: #c89b3c;
    letter-spacing: 2px;
}

.booking-wrapper h2 {
    margin: 10px 0 40px;
}

/* CONTAINER (FIXED LAYOUT) */
.booking-container {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 50px;
    flex-wrap: wrap;
    flex-direction: row-reverse !important; /* 🔥 FORCE RIGHT IMAGE */
}

/* IMAGE LEFT */
.side-card {
    flex-shrink: 0;
}

.side-card img {
    width: 320px;
    margin-left: 20px;
    border-radius: 12px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.2);
}

/* FORM RIGHT */
.booking-form {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 40px;
    background: #f7f7f7;
    padding: 50px;
    border-radius: 20px;
    width: 500px;         
    box-shadow: 0 5px 25px rgba(0,0,0,0.1);
}

/* INPUTS */
.booking-form input,
.booking-form select {
    width: 100%;
    padding: 12px 14px;
    border-radius: 10px;
    border: 1px solid #ddd;
    font-size: 14px;
    background: #fff;
    box-sizing: border-box;
}

/* SELECT FIRST OPTION */
.booking-form select option:first-child {
    color: #999;
}

/* BUTTON */
.booking-form button {
    grid-column: span 2;
    background: #001f3f;
    color: #fff;
    padding: 14px;
    border-radius: 40px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.booking-form button:hover {
    background: #003366;
}

/* MESSAGE BOX */
#booking-msg {
    width: 90%;
    margin: 20px auto;
    text-align: center;
    font-weight: bold;
    padding: 12px;
    border-radius: 6px;
    display: none;
}

.success {
    background: #d4edda;
    color: #155724;
}

.error {
    background: #f8d7da;
    color: #721c24;
}

/* MOBILE RESPONSIVE */
@media(max-width: 768px){
    
    .booking-container {
        flex-direction: column;   /* stack vertically */
    }

    .booking-form {
        width: 90%;
        grid-template-columns: 1fr;
    }

    .booking-form button {
        grid-column: span 1;
    }

    .side-card img {
        width: 100%;
        max-width: 350px;
    }
}   
.footer {
  background-color: #003366;  /* Navi blue color */
  color: white;
  padding: 8px 0;             /* minimal vertical padding */
  text-align: center;
  font-family: Arial, sans-serif;
  font-size: 12px;            /* smaller base font */
}

.footer-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 8px;                   /* smaller spacing between elements */
}

.footer-logo h2 {
  margin: 0;
  font-size: 18px;            /* reduced logo size */
  font-weight: bold;
}

.footer-logo h2 a {
  color: white;               /* logo link color */
  text-decoration: none;      /* remove underline */
  transition: color 0.3s;     /* smooth hover effect */
}

.footer-logo h2 a:hover {
  color: #00d4ff;             /* optional hover color */
}

.footer-links a {
  margin: 0 6px;              /* smaller margin between links */
  color: white;
  text-decoration: none;
  font-size: 12px;            /* smaller links */
  transition: color 0.3s;
}

.footer-links a:hover {
  color: #003366;
}

.footer-social a {
  margin: 0 5px;              /* smaller margin between icons */
  color: white;
  font-size: 18px;            /* smaller icons */
  transition: color 0.3s;
}

.footer-social a:hover {
  color: #000;
}

.footer-copy {
  margin-top: 6px;            
  font-size: 11px;           
}
.time-range-box {
    grid-column: span 2;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 15px;
    text-align: left;
}

.time-range-box label {
    grid-column: span 2;
    font-size: 14px;
    color: #555;
    margin-top: 5px;
}
.ground{
    width: 100%;
    background: #f0f4f8;
    margin: auto;
    text-align: center;
    padding-top:100px; 
}
h1{
    font-size: 36px;
    font-weight: 600;
}
p{
    color:#777;
    font-size: 14px;
    font-weight: 300;
    line-height: 22px;
    padding: 10px;
}
.row{
    margin-top: 5%;
    display: flex;
    justify-content: space-between;
    gap: 30px;
    max-width: 1200px;
    margin-left: auto;
    margin-right: auto;


}
.ground-col{
    flex-basis: 31%;
    background: #99b3d9;
    border-radius: 10px;
    margin-bottom: 5%;
    padding: 20px 12px;
    box-sizing: border-box;
}
h3{
    text-align: center;
    font-weight: 600;
    margin: 10px 0;
}
.ground-col:hover{
    box-shadow: 0 0 20px 0px rgba(0,0,0,0.2);
}
.testimonials {
  text-align: center;
  background: #f0f4f8;
  padding: 60px 20px;
}

/* Container */
.testimonial-container {
  position: relative;
  height: 320px;
}

/* Cards */
.testimonial {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%) scale(0.8);
  opacity: 0;
  transition: all 0.5s ease;
  text-align: center;
}
.testimonial h2{
    font-size: 26px;
}
/* Active center */
.testimonial.active {
  transform: translate(-50%, -50%) scale(1.1);
  opacity: 1;
  z-index: 3;
}

/* Left */
.testimonial.left {
  transform: translate(calc(-50% - 220px), -50%) scale(0.9);
  opacity: 0.6;
  z-index: 2;
}

/* Right */
.testimonial.right {
  transform: translate(calc(-50% + 220px), -50%) scale(0.9);
  opacity: 0.6;
  z-index: 2;
}

/* Image */
.testimonial img {
  width: 120px;
  height: 120px;
  border-radius: 50%;
  object-fit: cover;
}

/* Text */
.testimonial h3 {
  margin-top: 15px;
  font-weight: bold;
}

.testimonial p {
  max-width: 250px;
  margin: 10px auto;
  font-size: 14px;
  color: #555;
}

/* Arrows */
.prev, .next {
  position: absolute;
  transform: translateY(-50%);
  background: transparent;
  border: none;
  font-size: 30px;
  cursor: pointer;
}
.close {
    position: absolute;
    top: 20px;
    right: 30px;
    font-size: 30px;
    color: white;
    cursor: pointer;
}
.prev { left: 20%; }
.next { right: 20%; }
.prev, .next {
    z-index: 1001;
}

.close {
    z-index: 1002; /* higher than arrows */
}
.gallery {
    width: 100%;
    background: #f0f4f8;
    text-align: center;
    padding: 10px 20px;
}

.gallery h1 {
    font-size: 36px;
    font-weight: 600;
}

.gallery p {
    color: #777;
    font-size: 14px;
    padding: 10px;
}

/* Grid Layout */
.gallery-row {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
    max-width: 1200px;
    margin: auto;
    margin-top: 40px;
}

/* Images */
.gallery-col {
    overflow: hidden;
    border-radius: 10px;
}

.gallery-col img {
    width: 100%;
    height: 220px;
    object-fit: cover;
    transition: 0.4s;
}

/* Hover Effect */
.gallery-col:hover img {
    transform: scale(1.1);
}
/* Lightbox background */
#lightbox {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0,0,0,0.9);
    display: none;
    justify-content: center;
    align-items: center;
    z-index: 1000;
}

/* Image inside lightbox */
#lightbox img {
    max-width: 80%;
    max-height: 80%;
    border-radius: 10px;
}

/* Close button */
#lightbox span {
    position: absolute;
    top: 20px;
    right: 30px;
    font-size: 30px;
    color: white;
    cursor: pointer;
}

/* Cursor pointer for images */
.gallery-col img {
    cursor: pointer;
}
/* Hide extra images */
.hidden {
    display: none;
}

/* Button styling */
.show-btn {
    margin-top: 30px;
    padding: 10px 25px;
    background: #003366;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 14px;
}

.show-btn:hover {
    background: #0055aa;
}
.details {
    width: 100%;
    padding-bottom: 40px;
    background: #f0f4f8;
    text-align: center;
    padding-top: 7%;
}

.details-row {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 25px;
    max-width: 1200px;
    margin: 40px auto;
}

.details-col {
    background: #99b3d9;
    padding: 20px;
    border-radius: 10px;
    transition: 0.3s;
}

.details-col h3 {
    margin-bottom: 10px;
    font-weight: 600;
}

.details-col p {
    color: #777;
    font-size: 14px;
}

.details-col:hover {
    box-shadow: 0 0 20px rgba(0,0,0,0.2);
    transform: translateY(-5px);
}
</style>
<script>
document.addEventListener("DOMContentLoaded", () => {
  const testimonials = document.querySelectorAll('.testimonial');
  const nextBtn = document.querySelector('.next');
  const prevBtn = document.querySelector('.prev');

  let index = 0;

  function updateTestimonials() {
    testimonials.forEach((item, i) => {
      item.classList.remove('active', 'left', 'right');

      if (i === index) {
        item.classList.add('active');
      } 
      else if (i === (index - 1 + testimonials.length) % testimonials.length) {
        item.classList.add('left');
      } 
      else if (i === (index + 1) % testimonials.length) {
        item.classList.add('right');
      }
    });
  }

  // Next button
  if (nextBtn) {
    nextBtn.addEventListener('click', () => {
      index = (index + 1) % testimonials.length;
      updateTestimonials();
    });
  }

  // Prev button
  if (prevBtn) {
    prevBtn.addEventListener('click', () => {
      index = (index - 1 + testimonials.length) % testimonials.length;
      updateTestimonials();
    });
  }

  // Auto slide
  setInterval(() => {
    index = (index + 1) % testimonials.length;
    updateTestimonials();
  }, 3000);

  updateTestimonials();
});

</script>
<script>
    function toggleGallery() {
    let hiddenImages = document.querySelectorAll(".gallery-col.hidden");
    let btn = document.querySelector(".show-btn");

    let isHidden = hiddenImages[0].style.display === "" || hiddenImages[0].style.display === "none";

    hiddenImages.forEach(img => {
        img.style.display = isHidden ? "block" : "none";
    });

    btn.innerText = isHidden ? "Show Less" : "Show More";
}
let currentIndex = 0;
let images = [];

window.onload = function() {
    images = document.querySelectorAll(".gallery-col img");
};

function openLightbox(src) {
    images = document.querySelectorAll(".gallery-col img");

    images.forEach((img, index) => {
        if (img.src === src) {
            currentIndex = index;
        }
    });

    document.getElementById("lightbox").style.display = "flex";
    document.getElementById("lightbox-img").src = src;
}

function closeLightbox(e) {
    e.stopPropagation();
    document.getElementById("lightbox").style.display = "none";
}

function changeImage(direction) {
    currentIndex += direction;

    if (currentIndex < 0) {
        currentIndex = images.length - 1;
    }
    if (currentIndex >= images.length) {
        currentIndex = 0;
    }

    document.getElementById("lightbox-img").src = images[currentIndex].src;
}
</script>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar">
    <div class="logo">
        <a href="index.jsp"><img src="images/9.png"></a>
    </div>

    <div class="nav-links">
        <ul>
            <li><a href="index.jsp">Home</a></li>

            <% if(user != null){ %>
            <li style="color:white;">Welcome, <%= user %></li>
            <li><a href="logout.jsp">Logout</a></li>
            <% } else { %>
            <li><a href="#">Login</a></li>
            <% } %>

        </ul>
    </div>
</nav>

<!-- HERO -->
<section class="Basketball-hero">
    <h1>Make a Reservation For Basketball</h1>
</section>
<section class="ground">
    <h1>Our Features</h1>
    <p>Everything you need for a seamless Basketball booking experience.</p>

    <div class="row">
        <div class="ground-col">
            <h3>Rental Equipment 🏏</h3>
            <p>Make your game hassle-free with our equipment rental service.
            Get bats, balls, pads, and gloves easily while booking your ground.</p>
        </div>

        <div class="ground-col">
            <h3>Online Payment Integration 💳</h3>
            <p>Pay securely using UPI, cards, or net banking. 
             Click “Pay Now” for instant booking confirmation.</p>
        </div>

        <div class="ground-col">
            <h3>Ground Booking 📅 </h3>
            <p>Choose your preferred date and time slot with real-time availability and get instant confirmation for your booking.</p>
        </div>
    </div>
</section>
<section class="gallery">
    <h1>Our Gallery</h1>
    <p>Explore our Basketball grounds and facilities.</p>
    <div class="gallery-row">

        <!-- Visible Images -->
        <div class="gallery-col"><img src="images/B34.jpg" onclick="openLightbox(this.src)"></div>
        <div class="gallery-col"><img src="images/8.jpg" onclick="openLightbox(this.src)"></div>
        <div class="gallery-col"><img src="images/b12.jpg" onclick="openLightbox(this.src)"></div>

        <!-- Hidden Images -->
        <div class="gallery-col hidden"><img src="images/4.jpg" onclick="openLightbox(this.src)"></div>
        <div class="gallery-col hidden"><img src="images/5.jpg" onclick="openLightbox(this.src)"></div>
        <div class="gallery-col hidden"><img src="images/6.jpg" onclick="openLightbox(this.src)"></div>

    </div>
        <button class="show-btn" onclick="toggleGallery()">Show More</button>

</section>
<!-- Lightbox -->
<div id="lightbox">
<span class="close" onclick="closeLightbox(event)">✖</span>
    <span class="prev" onclick="changeImage(-1)">❮</span>
    <img id="lightbox-img">
    <span class="next" onclick="changeImage(1)">❯</span>
</div>
<section class="details">
    <h1>Ground Details</h1>
    <p>Everything you need to know about our Basketball facilities.</p>

    <div class="details-row">

        <div class="details-col">
            <h3>📍 Location</h3>
            <p>
                Located on Mumbai–Pune Highway (Gahunje) International stadium with huge capacity Used for IPL & international matches    
            </p>
        </div>

        <div class="details-col">
            <h3>🌱 Pitch Type</h3>
            <p>
                Choose between turf and mat pitches, designed for both practice sessions and competitive matches.
            </p>
        </div>

        <div class="details-col">
            <h3>💡 Facilities</h3>
            <p>
                Floodlights, seating area, changing rooms, and clean washrooms available for a comfortable experience.
            </p>
        </div>

        <div class="details-col">
            <h3>🕒 Timings</h3>
            <p>
                Open daily from early morning till late night with flexible booking slots to suit your schedule.
            </p>
        </div>

        <div class="details-col">
            <h3>🚗 Parking</h3>
            <p>
                Spacious and secure parking available for players and visitors.
            </p>
        </div>

        <div class="details-col">
            <h3>👥 Capacity</h3>
            <p>
                Suitable for small matches to full team games with enough space for spectators.
            </p>
        </div>

    </div>
</section>
<!-- BOOKING -->
<section class="booking-wrapper">

<h4>MAKE A RESERVATION</h4>
    <h2>Book Your Basketball Ground Easily</h2>

<!-- ✅ MESSAGE -->
<div id="booking-msg"></div>
<div class="booking-container">
    <div class="side-card">
        <img src="images/B34.jpg">
    </div>
<form id="bookingForm" class="booking-form">

    <input type="hidden" name="sport" value="Basketball">
    <input type="text" name="name" placeholder="Your Name" required>
    <input type="text" name="phone" placeholder="Phone Number" required>
    <input type="text" id="price" name="price" placeholder="Total Price" readonly>

    <input type="date" name="date" required>

    <div class="time-range-box">
    <div class="time-field">
        <label for="start_time">Start Time</label>
        <input type="time" id="start_time" name="start_time" required>
    </div>
    <div class="time-field">
        <label for="end_time">End Time</label>
        <input type="time" id="end_time" name="end_time" required>
    </div>
</div>

    <select name="players" required>
        <option value="">Players</option>
        <option>10</option>
        <option>12</option>
        <option>16</option>
    </select>
    <input type="text" name="team_name" placeholder="Team Name" required>

    <select name="ground" required>
        <option value="">Ground Type</option>
        <option>Turf</option>
        <option>Grass</option>
    </select>
    <select name="payment" required>
    <option value="">Payment Method</option>
    <option>UPI</option>
    <option>Card</option>
    <option>Cash on Ground</option>
</select>
    <!-- Booking Summary -->
<div id="booking-summary-box" style="grid-column: span 2; padding: 12px; border: 1px solid #ddd; border-radius: 10px; background: #f0f0f0; display: none;">
    <h4>Booking Summary</h4>
    <p id="summary-ground">Ground: </p>
    <p id="summary-date">Date: </p>
    <p id="summary-time">Time: </p>
    <p id="summary-players">Players: </p>
    <p id="summary-price">Price: </p>
</div>
<button type="submit">Proceed to Payment</button>
</form>
</div>
 </section>
<section class="testimonials">
  <h1>Reviews</h1>
  <div class="testimonial-container">

    <button class="prev">&#10094;</button>

    <div class="testimonial">
      <img src="images/r1.jpg" alt="">
      <h3>Anthony Thompson</h3>
      <p>"Best decaf I've tried! Smooth and flavorful."</p>
    </div>

    <div class="testimonial">
      <img src="images/r2.jpg" alt="">
      <h3>Sarah Johnson</h3>
      <p>"Loved the French roast. Perfectly balanced and rich."</p>
    </div>

    <div class="testimonial">
      <img src="images/r3.jpg" alt="">
      <h3>James Wilson</h3>
      <p>"Great espresso blend! Smooth and bold flavor."</p>
    </div>
    
    <div class="testimonial">
      <img src="images/r4.jpg" alt="">
      <h3>James Wilson</h3>
      <p>"Great espresso blend! Smooth and bold flavor."</p>
    </div>
    
    <div class="testimonial">
      <img src="images/r5.jpg" alt="">
      <h3>James Wilson</h3>
      <p>"Great espresso blend! Smooth and bold flavor."</p>
    </div>

    <button class="next">&#10095;</button>

  </div>
</section>

<script>
const form = document.getElementById("bookingForm");
const msg = document.getElementById("booking-msg");

// Form elements
const ground = document.querySelector('select[name="ground"]');
const players = document.querySelector('select[name="players"]');
const startTime = document.querySelector('input[name="start_time"]');
const endTime = document.querySelector('input[name="end_time"]');
const dateInput = document.querySelector('input[name="date"]');
const teamName = document.querySelector('input[name="team_name"]');
const priceField = document.getElementById("price");

// Summary elements
const summaryBox = document.getElementById("booking-summary-box");
const summaryGround = document.getElementById("summary-ground");
const summaryDate = document.getElementById("summary-date");
const summaryTime = document.getElementById("summary-time");
const summaryPlayers = document.getElementById("summary-players");
const summaryPrice = document.getElementById("summary-price");
const summaryTeam = document.createElement("p"); // optional extra for team
summaryBox.appendChild(summaryTeam);

// --------------------- Submit ---------------------
form.addEventListener("submit", function(e){
    e.preventDefault();

    if(priceField.value === ""){
        msg.textContent = "❌ Please select options first!";
        msg.className = "error";
        msg.style.display = "block";
        return;
    }

    let confirmPay = confirm("Proceed to payment of " + priceField.value + "?");
    if(confirmPay){
        sendBooking();
    }
});

async function sendBooking(){
    const formData = new FormData(form);
    const params = new URLSearchParams();
    formData.forEach((value, key) => params.append(key, value));

    try {
        const response = await fetch("booking.jsp", {
            method: "POST",
            body: params,
            headers: { "Content-Type": "application/x-www-form-urlencoded" }
        });

        const result = await response.text();

        if(result.trim() === "success"){
            msg.textContent = "✅ Payment Successful & Booking Confirmed!";
            msg.className = "success";
            form.reset();
            summaryBox.style.display = "none";
            priceField.value = "";
        } else {
            msg.textContent = "❌ " + result;
            msg.className = "error";
        }

        msg.style.display = "block";
    } catch(err){
        console.log(err);
        msg.textContent = "Error connecting to server!";
        msg.className = "error";
        msg.style.display = "block";
    }
}

// --------------------- Price & Summary ---------------------
function calculatePrice() {
    let total = 0;

    // Ground price
    if(ground.value === "Turf") total += 800;
    else if(ground.value === "Grass") total += 500;

    // Players price
    if(players.value === "10") total += 200;
    else if(players.value === "12") total += 300;
    else if(players.value === "16") total += 400;

    // Time calculation
    if(startTime.value && endTime.value){
        let startHour = parseInt(startTime.value.split(":")[0]);
        let endHour = parseInt(endTime.value.split(":")[0]);

        if(endHour <= startHour){
            alert("End time must be after start time");
            endTime.value = "";
            priceField.value = "";
            summaryBox.style.display = "none";
            return;
        }

        let hours = endHour - startHour;
        if(hours > 0) total += hours * 200;

        // Evening extra charge
        if(startHour >= 18) total += 100;
    }

    priceField.value = total > 0 ? "₹ " + total : "";

    // Update summary dynamically
    summaryGround.textContent = "Ground: " + (ground.value || "-");
    summaryDate.textContent = "Date: " + (dateInput.value || "-");
    summaryTime.textContent = "Time: " + (startTime.value && endTime.value ? startTime.value + " - " + endTime.value : "-");
    summaryPlayers.textContent = "Players: " + (players.value || "-");
    summaryTeam.textContent = "Team Name: " + (teamName.value || "-");
    summaryPrice.textContent = "Price: " + (priceField.value || "-");

    // Show summary if all required fields filled
    if(ground.value && dateInput.value && startTime.value && endTime.value && players.value){
        summaryBox.style.display = "block";
    } else {
        summaryBox.style.display = "none";
    }
}

// --------------------- Event Listeners ---------------------
ground.addEventListener("change", calculatePrice);
players.addEventListener("change", calculatePrice);
startTime.addEventListener("change", () => {
    if(startTime.value) endTime.min = startTime.value;
    else endTime.min = "";
    calculatePrice();
});
endTime.addEventListener("change", calculatePrice);
dateInput.addEventListener("change", calculatePrice);
teamName.addEventListener("input", calculatePrice);
</script>
<footer class="footer">
  <div class="footer-container">
    <div class="footer-logo">
        <h2><a href="" color="white">SportsGround</a></h2>
    </div>
    <div class="footer-social">
      <a href="#"><i class="fab fa-facebook-f"></i></a>
      <a href="#"><i class="fab fa-twitter"></i></a>
      <a href="#"><i class="fab fa-instagram"></i></a>
      <a href="#"><i class="fab fa-linkedin-in"></i></a>
    </div>
  </div>
  <p class="footer-copy">&copy; 2026 SportsGround. All rights reserved.</p>
</footer>
</body>
</html>