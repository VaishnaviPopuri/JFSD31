<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PortfolioHub</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
   <header>
   <div class="navbar-container">
      <img class="logo-img" src="images/logo.png" alt="Project Management">
      <button class="toggle-btn" onclick="toggleNavbar()">☰</button>
      <div class="navbar">
         <div class="nav-buttons">
            <a href="home"><button class="home">Home</button></a>
            <a href="aboutus"><button class="aboutus">About Us</button></a>
            <a href="faqs"><button class="faqs">FAQs</button></a>
         </div>
      </div>
   </div>
   <div class="auth-buttons">
      <a href="studentlogin"><button class="studentlogin">StudentLogin</button></a>
      <a href="facultylogin"><button class="facultylogin">FacultyLogin</button></a>
   </div>
</header>	

   <main>
      <section class="welcome-section">
         <h2><u>Welcome to PortfolioHub</u></h2>
         <p class="description">
            The ultimate platform for students to showcase their projects and track their progress.
            Upload project descriptions, media, and milestones to build a portfolio that highlights your achievements. 
            Teachers can manage submissions, provide feedback, and monitor progress in real-time. Stay organized, 
            meet deadlines, and present your best work with ease. Join us today and take your projects to the next level!
         </p>
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