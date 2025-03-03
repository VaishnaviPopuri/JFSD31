<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Login | PortfolioHub</title>
    <link rel="stylesheet" href="style/facultylogin.css">
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">
            <a href="home.jsp">
                <img src="images/logo.png" alt="Project Management">
            </a>
        </div>
        <div class="nav-buttons">
            <a href="home.jsp"><button class="home">Home</button></a>
            <a href="aboutus.jsp"><button class="aboutus">About Us</button></a>
            <a href="faqs.jsp"><button class="faqs">FAQs</button></a>
        </div>
    </div>

    <!-- Main Content -->
    <main>
        <div class="login-container">
            <h2>Faculty Login</h2>
            <h4 align="center" style="color:red">
                <c:out value="${message}"></c:out>
            </h4>
            <form method="post" action="checkfacultylogin">
                <div class="input-box">
                    <label for="femail">Email</label>
                    <input type="email" id="femail" name="femail" required>
                </div>
                <div class="input-box">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="fpwd" required>
                </div>
                <div class="options">
                    <label class="remember-me">
                        <input type="checkbox"> Remember me
                    </label>
                    <a href="#" class="forgot-password">Forgot Password?</a>
                </div>
                <button type="submit" class="button login-btn">Login</button><br></br>
               <!--  <p class="signup-link">Don't have an account? <a href="facultyreg">Register</a></p> -->
            </form>
        </div>
    </main>
</body>
</html>
