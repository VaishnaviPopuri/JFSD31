<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Login and Registration | PortfolioHub</title>
    <link rel="stylesheet" href="style/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        // Function to validate form inputs
        function validateForm(event) {
            let isValid = true;

            // Clear previous error messages
            const errorMessages = document.querySelectorAll('.error-message');
            errorMessages.forEach(msg => msg.textContent = '');

            // Validate Name
            const studentName = document.getElementById('studentname').value.trim();
            const nameRegex = /^[a-zA-Z\s]+$/; // Only alphabets and spaces
            if (studentName === "" || !nameRegex.test(studentName)) {
                document.getElementById('nameError').textContent = "Name must only contain alphabets and spaces.";
                isValid = false;
            }

            // Validate Email
            const studentEmail = document.getElementById('studentemail').value.trim();
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // Basic email validation
            if (studentEmail === "" || !emailRegex.test(studentEmail)) {
                document.getElementById('emailError').textContent = "Enter a valid email address.";
                isValid = false;
            }

            // Validate Password
            const studentPassword = document.getElementById('studentpassword').value.trim();
            const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
            if (studentPassword === "" || !passwordRegex.test(studentPassword)) {
                document.getElementById('passwordError').textContent = 
                "Password must be at least 8 characters, include uppercase, lowercase, a digit, and a special character.";
                isValid = false;
            }

            if (!isValid) {
                event.preventDefault(); // Prevent form submission if invalid
            }
        }
    </script>
</head>
<body>
    <div class="navbar">
        <div class="logo">
            <a href="/home">
                <img src="images/logo.png" alt="Project Management">
            </a>
        </div>
        <div class="nav-buttons">
            <a href="/"><button class="home"><i class="fa-solid fa-house"></i>&nbsp; Home</button></a>
            <a href="aboutus"><button class="aboutus"><i class="fa-solid fa-circle-info"></i>&nbsp; About Us</button></a>
            <a href="faqs"><button class="faqs"><i class="fa-solid fa-question-circle"></i> FAQs</button></a>
        </div>
    </div>
    <div class="container">
        <input type="checkbox" id="flip">
        <div class="cover">
            <div class="front">
                <img src="images/user1.png" alt="">
                <div class="text">
                    <span class="text-1">Every new friend is a <br> new adventure</span>
                    <span class="text-2">Let's get connected</span>
                </div>
            </div>
            <div class="back">
                <img src="images/signup.png" alt="">
                <div class="text">
                    <span class="text-1">Complete miles of journey <br> with one step</span>
                    <span class="text-2">Let's get started</span>
                </div>
            </div>
        </div>
        <div class="forms">
            <div class="form-content">
                <!-- Login Form -->
                <div class="login-form">
                    <div class="title">Login</div>
                    <form action="checkstudentlogin" method="POST">
                        <div class="input-boxes">
                            <div class="input-box">
                                <i class="fas fa-envelope"></i>
                                <input type="email" name="studentemail" placeholder="Enter your email" required>
                            </div>
                            <div class="input-box">
                                <i class="fas fa-lock"></i>
                                <input type="password" name="studentpassword" placeholder="Enter your password" required>
                            </div>
                            <div class="text"><a href="#">Forgot password?</a></div>
                            <div class="button input-box">
                                <input type="submit" value="Submit">
                            </div>
                            <div class="text sign-up-text">Don't have an account? <label for="flip">Signup now</label></div>
                        </div>
                    </form>
                </div>

                <!-- Signup Form with Validations -->
                <div class="signup-form">
                    <div class="title">Signup</div>
                    <form method="post" action="addstudent" onsubmit="validateForm(event)">
                        <div class="input-boxes">
                            <div class="input-box">
                                <i class="fas fa-id-badge"></i>
                                <input type="number" name="studentid" placeholder="Enter Student ID" required>
                            </div>
                            <div class="input-box">
                                <i class="fas fa-user"></i>
                                <input type="text" id="studentname" name="studentname" placeholder="Enter your name" required>
                                <span class="error-message" id="nameError" style="color:red;"></span>
                            </div>
                            <div class="input-box">
                                <i class="fas fa-envelope"></i>
                                <input type="email" id="studentemail" name="studentemail" placeholder="Enter your email" required>
                                <span class="error-message" id="emailError" style="color:red;"></span>
                            </div>
                            <div class="input-box">
                                <i class="fas fa-building"></i>
                                <select name="studentdept" required>
                                    <option value="">---Select Department---</option>
                                    <option value="CSE">CSE</option>
                                    <option value="CSIT">CSIT</option>
                                    <option value="ECE">ECE</option>
                                    <option value="MECH">MECH</option>
                                </select>
                            </div>
                            <div class="input-box">
                                <i class="fas fa-calendar"></i>
                                <select name="studentyear" required>
                                    <option value="">---Select Year---</option>
                                    <option value="1">First Year</option>
                                    <option value="2">Second Year</option>
                                    <option value="3">Third Year</option>
                                    <option value="4">Fourth Year</option>
                                </select>
                            </div>
                            <div class="input-box">
                                <i class="fas fa-lock"></i>
                                <input type="password" id="studentpassword" name="studentpassword" placeholder="Enter your password" required>
                                <span class="error-message" id="passwordError" style="color:red;"></span>
                            </div>
                            <div class="button input-box">
                                <input type="submit" value="Submit">
                            </div>
                            <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
