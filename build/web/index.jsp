<%@ page import="java.net.URLEncoder" %>
<%
    String contactMsg = request.getParameter("contactMsg");
    String errorMsg = request.getParameter("errorMsg");
%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    // Get the logged-in user from session
    String user = (String) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="Style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"><!-- comment -->
<title>Sports Ground Management</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"><!-- comment -->
<style>
#confirmation-msg {
    width: 90%;
    margin: 20px auto;
    text-align: center;
    font-weight: bold;
    padding: 12px;
    border-radius: 6px;
    opacity: 1;
    transition: opacity 1s ease;
}
#confirmation-msg.success { background: #d4edda; color: #155724; }
#confirmation-msg.error   { background: #f8d7da; color: #721c24; }
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
</head>

<body>
<section class="header">
    <nav class="navbar">
        <div class="logo">
            <a href="index.jsp">
                <img src="images/9.png" alt="logo">
            </a>
        </div>

        <div class="nav-links">
            <ul>
                <li><a href="#sports">Grounds</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="#blog">Blog</a></li>
                <li><a href="#about-us">About</a></li>

                <% if(user != null){ %>
                <li class="user-welcome" style="color: white !important; font-size: 20px; font-weight: 600; text-shadow: 0 0 8px rgba(0,0,0,0.9); margin-left:auto;"> 
                    Welcome, 
                    <span class="username" style="color: white !important; font-weight: bold; font-size: 22px;">
                      <%= user %>
                   </span>
                </li>
                <li><a href="logout.jsp">Logout</a></li>
                <% } else { %>
                <li><a href="#" onclick="showLogin(); return false;">Login</a></li>
                    <% } %>
            </ul>
        </div>
    </nav>
          
    <div class="text-box">
        <h1>Sports Ground</h1>
        <p style="font-size:20px;">
        This platform helps players and organizers manage sports activities,
        explore grounds, and stay updated with sports events easily.
        </p>
        <a href="#sports" class="hero-btn">Explore Grounds</a>
    </div>
</section>
<!-- LOGIN MODAL -->
<div id="loginModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeLogin()">&times;</span>
        <h2>Login</h2>

        <!-- ✅ CONNECTED TO JSP -->
        <form action="login.jsp" method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit" class="btn">Login</button>
        </form>

        <p>Don't have an account? 
            <a href="#" onclick="openSignupFromLogin()">Sign Up</a>
        </p>
    </div>
</div>

<!-- SIGNUP MODAL -->
<div id="signupModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeSignup()">&times;</span>
        <h2>Sign Up</h2>
        <form action="signup.jsp" method="post">
            <input type="text" name="name" placeholder="Full Name" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit" class="btn">Sign Up</button>
        </form>

        <p>Already have an account? 
            <a href="#" onclick="openLoginFromSignup()">Login</a>
        </p>
    </div>
</div>
<section class="ground">
    <h1>Facilities & Support</h1>
    <p>Covers both ground/equipment and training support.</p>

    <div class="row">
        <div class="ground-col">
            <h3>Ground Booking + Equipment Rental</h3>
            <p>Reserve your ground and get all the gear you need for a seamless game.</p>
        </div>

        <div class="ground-col">
            <h3>Fitness & Nutrition Support</h3>
            <p>Track your fitness, boost your performance, and follow the right nutrition plan.</p>
        </div>

        <div class="ground-col">
            <h3>Coaching & Referee Training</h3>
            <p>Learn from experts, improve your skills, and gain certification in coaching or refereeing.</p>
        </div>
    </div>
</section> 
<section class="sports" id="sports">
  <h1>Grounds Available</h1>
  <p>Browse available sports grounds and choose the perfect place to play.</p>

  <div class="slider-wrapper">
    <button class="slide-btn left">&#10094;</button>

    <div class="slider" id="slider">
      <div class="sports-col">
    <% if(user != null){ %>
    <a href="cricket.jsp">
<% } else { %>
    <a href="#" onclick="showLogin(); return false;">
<% } %>
      <img src="images/C.jpg" alt="Cricket">
      <div class="layer">
        <h3>Cricket</h3>
      </div>
    </a>
  </div>
      <div class="sports-col">
          <% if(user != null){ %>
    <a href="hockey.jsp">
<% } else { %>
    <a href="#" onclick="showLogin(); return false;">
<% } %>
        <img src="images/ho.jpg" alt="Hockey">
        <div class="layer"><h3>Hockey</h3></div>
          </a>
      </div>
      <div class="sports-col">
          <% if(user != null){ %>
    <a href="football.jsp">
<% } else { %>
    <a href="#" onclick="showLogin(); return false;">
<% } %>
        <img src="images/F.jpg" alt="Football">
        <div class="layer"><h3>Football</h3></div>
          </a>
      </div>
      <div class="sports-col">
              <% if(user != null){ %>
    <a href="basketball.jsp">
<% } else { %>
    <a href="#" onclick="showLogin(); return false;">
<% } %>
        <img src="images/b.jpg" alt="Basketball">
        <div class="layer"><h3>Basketball</h3></div>
          </a>
      </div>
      <div class="sports-col">
<% if(user != null){ %>
    <a href="tennis.jsp">
<% } else { %>
    <a href="#" onclick="showLogin(); return false;">
<% } %>        <img src="images/Tennis Poster Background.jpg" alt="Tennis">
        <div class="layer"><h3>Tennis</h3></div>
          </a>
      </div>
      <div class="sports-col">
<% if(user != null){ %>
    <a href="volleyball.jsp">
<% } else { %>
    <a href="#" onclick="showLogin(); return false;">
<% } %>        <img src="images/v.jpg" alt="Volleyball">
        <div class="layer"><h3>Volleyball</h3></div>
          </a>
      </div>
    </div>

    <button class="slide-btn right">&#10095;</button>
  </div>
</section>
<section class="facilities">
    <h1> Our Facilities</h1>
    <p>We offer six well-maintained sports grounds with equipment rental, referees, lighting, water, and parking to ensure a comfortable and enjoyable experience.</p><!-- comment -->
    <div class="row">
        <div class="facilities-col">
            <img src="images/7.jpg">
            <h3> 1️⃣ Grounds for All Sports</h3><!-- comment -->
            <p>Suitable for practice, matches, and tournaments.</p><!-- comment -->
        </div>
        <div class="facilities-col">
            <img src="images/8.jpg">
            <h3> 2️⃣ Equipment & Referee Support</h3><!-- comment -->
            <p>All necessary equipment provided for each sport (balls, nets, bats, racquets, kits, cones).</p><!-- comment -->
        </div>
        <div class="facilities-col">
            <img src="images/5.jpg">
            <h3>3️⃣ Amenities & Comfort</h3>
            <p>Drinking water stations, washrooms, and clean changing rooms.</p><!-- comment -->
        </div>
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
function showLogin() {
    document.getElementById("loginModal").style.display = "block";
}

function closeLogin() {
    document.getElementById("loginModal").style.display = "none";
}

function closeSignup() {
    document.getElementById("signupModal").style.display = "none";
}

function openSignupFromLogin() {
    closeLogin();
    document.getElementById("signupModal").style.display = "block";
}

function openLoginFromSignup() {
    closeSignup();
    showLogin();
}
</script> 
<!-- About Us Section -->
<section id="about-us" class="about-us">
  <div class="about-wrapper">
    <!-- Image Side -->
    <div class="about-image">
      <img src="images/a.jpg" alt="About Us">
    </div>

    <!-- Text Side -->
    <div class="about-content">
      <h2>About Us</h2>
      <p>We provide top-quality sports facilities and services for enthusiasts of all levels. From professionally maintained grounds to equipment rentals and referees, we ensure a complete and enjoyable sporting experience.</p>

      <div class="about-cards">
        <div class="card">
          <h3>Our Mission</h3>
          <p>Promote health, teamwork, and community engagement through excellent sports services.</p>
        </div>
        <div class="card">
          <h3>Our Vision</h3>
          <p>Be the preferred destination for sports enthusiasts with quality, convenience, and exceptional service.</p>
        </div>
      </div>
    </div>
  </div>
</section>
<script>
document.addEventListener("DOMContentLoaded", () => {
  const slider = document.getElementById("slider");
  const leftBtn = document.querySelector(".slide-btn.left");
  const rightBtn = document.querySelector(".slide-btn.right");

  const cardWidth = slider.querySelector(".sports-col").offsetWidth + 20; // card width + gap
  const visibleCards = 3;
  let scrollPosition = 0;

  function updateButtons() {
    const totalCards = slider.children.length;
    const maxScroll = cardWidth * (totalCards - visibleCards);
    leftBtn.disabled = scrollPosition <= 0;
    rightBtn.disabled = scrollPosition >= maxScroll;
  }

  function slideRight() {
    const totalCards = slider.children.length;
    const maxScroll = cardWidth * (totalCards - visibleCards);

    if (scrollPosition < maxScroll) {
      scrollPosition += cardWidth * visibleCards;
      if (scrollPosition > maxScroll) scrollPosition = maxScroll;
    }

    slider.scrollTo({ left: scrollPosition, behavior: 'smooth' });
    updateButtons();
  }

  function slideLeft() {
    if (scrollPosition > 0) {
      scrollPosition -= cardWidth * visibleCards;
      if (scrollPosition < 0) scrollPosition = 0;
    }

    slider.scrollTo({ left: scrollPosition, behavior: 'smooth' });
    updateButtons();
  }

  leftBtn.addEventListener("click", slideLeft);
  rightBtn.addEventListener("click", slideRight);

  window.addEventListener("resize", () => {
    // recalc cardWidth if window resized
    const newCardWidth = slider.querySelector(".sports-col").offsetWidth + 20;
    if (newCardWidth !== cardWidth) {
      cardWidth = newCardWidth;
      updateButtons();
    }
  });

  updateButtons();
});
</script>
<section class="blog-section" id="blog">
  <h1>Latest Blogs</h1>
  <p>Read our latest articles and tips on sports, fitness, and lifestyle.</p>
  <center>
  <div class="blog-slider">
    <div class="blog-card">
              <a href="Blog1.jsp">
      <img src="images/b1.jpg" alt="Blog 1">
      <div class="blog-overlay">
        <h3>10 Tips for a Healthy Lifestyle</h3>
        <p>Discover simple habits that can improve your daily routine.</p>
      </div>
       </a>
    </div>

    <div class="blog-card">
        <a href="Blog2.jsp">
      <img src="images/b2.jpg" alt="Blog 2">
      <div class="blog-overlay">
        <h3>Best Exercises for Cardio</h3>
        <p>Boost your endurance and energy with these effective exercises.</p>
      </div>
        </a><!-- comment -->
    </div>
    <div class="blog-card">
        <a href="Blog3.jsp">
      <img src="images/b3.jpg" alt="Blog 3">
      <div class="blog-overlay">
        <h3>Choosing the Right Sports Gear</h3>
        <p>Learn how to pick gear that enhances performance and safety.</p>
      </div>
        </a>
    </div>
    <!-- Add more cards as needed -->
  </div>
      </center>
</section>
<section class="contact" id="contact">
    <h1>Contact Us</h1>
    <p>Have questions or want to book a ground? Reach out to us!</p>
    <div id="confirmation-msg" style="display:none;"></div>
    <div id="con">
    <form id="contactForm" method="post">
        <input type="text" name="name" placeholder="Your Name" required>
        <input type="email" name="email" placeholder="Your Email" required>
        <input type="tel" name="phone" placeholder="Phone Number">
        <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
        <button type="submit">Send Message</button>
    </form>
    </div>
</section>
<script>
const contactForm = document.getElementById("contactForm");
const confirmation = document.getElementById("confirmation-msg");

contactForm.addEventListener("submit", async function(e) {
    e.preventDefault(); // prevent default form submission

    const formData = new FormData(contactForm);
    const params = new URLSearchParams();
    formData.forEach((value, key) => params.append(key, value));

    try {
        const response = await fetch("contact.jsp", {
            method: "POST",
            body: params,
            headers: { "Content-Type": "application/x-www-form-urlencoded" }
        });
        const result = await response.text();

        if(result.trim() === "success"){
            confirmation.textContent = "Thank you! Your message has been sent successfully.";
            confirmation.className = "success";
            contactForm.reset();
        } else {
            confirmation.textContent = "Error sending message: " + result;
            confirmation.className = "error";
        }
        confirmation.style.display = "block";

        setTimeout(() => {
            confirmation.style.opacity = '0';
            setTimeout(() => confirmation.style.display = 'none', 1000);
        }, 4000);

    } catch(err) {
        confirmation.textContent = "Unexpected error: " + err;
        confirmation.className = "error";
        confirmation.style.display = "block";
    }
});
</script>
<script>
function toggleChat() {
    let body = document.getElementById("chatBody");
    let input = document.querySelector(".chat-input");

    if (body.style.display === "block") {
        body.style.display = "none";
        input.style.display = "none";
    } else {
        body.style.display = "block";
        input.style.display = "block";
    }
}
function sendMessage() {
    let input = document.getElementById("userInput");
    let chatBody = document.getElementById("chatBody");

    if (!input || !chatBody) return;

    let msg = input.value.trim();
    if (msg === "") return;

    // User message
    let userMsg = document.createElement("div");
    userMsg.className = "chat-message user";
    userMsg.innerText = msg;
    chatBody.appendChild(userMsg);

    input.value = "";

    // Typing indicator
    let typing = document.createElement("div");
    typing.className = "chat-message bot typing";
    typing.innerText = "Typing...";
    chatBody.appendChild(typing);

    chatBody.scrollTop = chatBody.scrollHeight;

    // Delay bot reply (simulate thinking)
    setTimeout(() => {
        typing.remove();

        let reply = "Sorry, I didn't understand.";

msg = msg.toLowerCase();

if (msg.includes("book")) {
    reply = "You can book a ground from the Grounds section.";
}
else if (msg.includes("price") || msg.includes("cost")) {
    reply = "Prices depend on the time slot.";
}
else if (msg.includes("time") || msg.includes("open")) {
    reply = "We are open from morning to night.";
}
else if (msg.includes("location")) {
    reply = "Check the contact section for our location.";
}
else if (msg.includes("equipment")) {
    reply = "We provide bats, balls, pads, and more.";
}
else if (msg.includes("payment")) {
    reply = "We accept UPI, cards, and net banking.";
}
else if (msg.includes("sports")) {
    reply = "We have Cricket, Football, Hockey, Basketball, Tennis, and Volleyball.";
}
else if (msg.includes("contact")) {
    reply = "You can reach us through the contact section.";
}
else if (msg.includes("cancel")) {
    reply = "Please contact support for cancellation.";
}
if (msg.includes("hi") || msg.includes("hello")) {
    reply = "Hello! 😊 How can I help you today?";
}
else if (msg.includes("book")) {
    reply = "Go to booking section to reserve ground.";
}

        let botMsg = document.createElement("div");
        botMsg.className = "chat-message bot";
        botMsg.innerText = reply;
        chatBody.appendChild(botMsg);

        chatBody.scrollTop = chatBody.scrollHeight;
    }, 1200); // delay = 1.2 sec
}

// Enter key support (safe way)
document.addEventListener("DOMContentLoaded", function () {
    let input = document.getElementById("userInput");
    if (input) {
        input.addEventListener("keypress", function(e) {
            if (e.key === "Enter") {
                sendMessage();
            }
        });
    }
});
window.addEventListener("load", function() {
    setTimeout(() => {
        let body = document.getElementById("chatBody");
        let input = document.querySelector(".chat-input");

        body.style.display = "block";
        input.style.display = "block";
    }, 3000); // 3 seconds
});
</script>
<div class="chatbot">
    <div class="chat-header" onclick="toggleChat()">
        💬 Chat with us
    </div>

    <div class="chat-body" id="chatBody">
        <div class="chat-message bot">Hello! How can I help you?</div>
    </div>

    <div class="chat-input">
        <input type="text" id="userInput" placeholder="Type a message...">
        <button onclick="sendMessage()">Send</button>
    </div>
</div>
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