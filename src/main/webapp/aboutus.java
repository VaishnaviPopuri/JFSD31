<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PortfolioHub - About Us</title>
    <link rel="stylesheet" href="style/about.css">
</head>
<body>
<header>
   <div class="navbar-container">
      <img class="logo-img" src="images/logo.png" alt="Project Management">
      <button class="toggle-btn" onclick="toggleNavbar()">☰</button>
      <div class="navbar">
         <div class="nav-buttons">
            <a href="home.jsp"><button class="home">Home</button></a>
            <a href="aboutus.jsp"><button class="aboutus">About Us</button></a>
            <a href="faqs.jsp"><button class="faqs">FAQs</button></a>
         </div>
      </div>
   </div>
   <div class="auth-buttons">
      <a href="studentlogin.jsp"><button class="studentlogin">StudentLogin</button></a>
      <a href="facultylogin.jsp"><button class="facultylogin">FacultyLogin</button></a>
   </div>
</header>	

    <main>
        <section class="about-section">
          <h1>About Us </h1>

            <div class="about-content">
                <div class="circle">
                    <p>Welcome to PortfolioHub!<br>
                    At PortfolioHub, we're dedicated to helping students manage and showcase their projects in a way that stands out. 
                    Our platform empowers students to track progress, upload media, and display their best work, while admins review 
                    and provide feedback to support their growth.</p>
                </div>

                <div class="circle">
                    <p>Our Mission:<br>
                    Our mission is to streamline project management and presentation for students, while equipping teachers and institutions with tools to provide comprehensive feedback and guidance. We believe in nurturing creativity and innovation through technology, making learning and development more accessible.</p>
                </div>

                <div class="team-section">
                    <a href="team.jsp">
                      <h2 class="blinking-underline">Team</h2>


                    </a>
                    <div class="mentor">
                        <h3>Mentor</h3>
                        <p>
                            <h4>Surya Kiran Jonnalagadda</h4><br>
                            <h6>Professor of CSE (Honors)<br>K L E F (Deemed to be University).</h6>
                        </p>
                    </div>

                    <div class="team-lead">
                        <br><h3>Team Members</h3>
                        <p>Jakira Begum - 2200032588<br>
                        Kurra Yasasri - 2200030137<br>
                        Popuri Geeta Venkata Vaishnavi - 2200030569</p>
                    </div>
                </div>

                <div class="circle">
                    <p>Our Vision for the Future:<br>
                    As we grow, we aim to introduce more advanced analytics, collaboration features, and personalized experiences. 
                    Our goal is to create a space where students and teachers can interact seamlessly, fostering continuous growth and achievement.</p>
                </div>

                <div class="circle">
                    <p>Why PortfolioHub?<br>
                    User-Centered Design: Easy navigation for students to upload and organize projects.<br>
                    Progress Tracking: Stay on top of deadlines and milestones with intuitive progress tracking.<br>
                    Feedback System: Our platform allows real-time feedback from educators, making sure you never miss an opportunity to improve.<br>
                    Showcase Ready: Present your best work in a clean, professional format designed to impress.</p>
                </div>
            </div>
        </section>
    </main>
     <script>
      function toggleNavbar() {
         const navbar = document.querySelector('.navbar');
         navbar.classList.toggle('active');
      }
   </script>
</body>
</html>
