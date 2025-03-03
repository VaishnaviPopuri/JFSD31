<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Faculty Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        /* Styles as provided earlier */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: rgba(230, 230, 250, 0.8); 
        }
        h3 {
            margin-top: 42px;
            text-align: center;
            font-size: 30px;
            color: #333;
        }
        .sidebar {
            position: fixed;
            top: 0;
            left: -250px;
            width: 250px;
            height: 100%;
            background-color: #2f3e4d;
            color: white;
            padding: 20px 10px;
            transition: left 0.3s ease-in-out;
            z-index: 1000;
        }
        .sidebar.active {
            left: 0;
        }
        .sidebar h4 {
            margin-top: 42px;
            margin-bottom: 30px;
            font-size: 1.5rem; 
        }
        .sidebar .nav {
            list-style: none;
            padding: 0;
        }
        .sidebar .nav-item {
            margin-bottom: 15px;
        }
        .sidebar .nav-link {
            color: #c1c1c1;
            font-size: 16px;
            display: flex;
            align-items: center;
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 4px;
            transition: background 0.2s, color 0.2s;
        }
        .sidebar .nav-link:hover,
        .sidebar .nav-link.active {
            background-color: #b892f5;
            color: white;
        }
        .toggle-btn {
            position: fixed;
            top: 15px;
            left: 15px;
            background-color: #2f3e4d;
            color: white;
            border: none;
            font-size: 18px;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            z-index: 1100;
            transition: background-color 0.3s;
        }
        .toggle-btn:hover {
            background-color: #b892f5;
        }
        .main-content {
            margin-left: 260px;
            padding: 40px;
            transition: margin-left 0.3s;
        }
        .main-content.hidden {
            margin-left: 10px;
        }
        .form-container {
            max-width: 800px;
            margin: 0 auto;
        }
        table {
            width: 100%;
            border-spacing: 10px;
        }
        td {
            padding: 10px;
        }
        input[type="text"], input[type="number"], input[type="email"], input[type="password"], select, input[type="file"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1rem;
        }
        .button-container {
            text-align: center;
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .btn {
            height: 50px;
            margin: 5px;
            width: 120px;
            background: #333;
            display: flex;
            justify-content: center;
            cursor: pointer;
            align-items: center;
            font-family: Tahoma, sans-serif;
            font-weight: bold;
            border: solid #404c5d 1px;
            font-size: 16px;
            color: rgb(161, 161, 161);
            transition: 500ms;
            border-radius: 5px;
            background: linear-gradient(145deg, #2e2d2d, #212121);
        }
        .btn:hover {
            color: #d6d6d6;
            transition: 500ms;
        }
        .btn:active {
            color: #d6d6d6;
            transition: 100ms;
        }
        .error {
            color: red;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <!-- Toggle Button -->
    <button class="toggle-btn" onclick="toggleSidebar()">
        <i class="fas fa-bars"></i>
    </button>

    <!-- Sidebar Navigation -->
    <div class="sidebar" id="sidebar">
        <h4>Admin Dashboard</h4>
        <ul class="nav flex-column">
            <li class="nav-item"><a class="nav-link active" href="adminhome"><i class="fas fa-home"></i> Home</a></li>
            <li class="nav-item"><a class="nav-link" href="facultyreg"><i class="fas fa-user-plus"></i> Add Faculty</a></li>
            <li class="nav-item"><a class="nav-link" href="updatestudentstatus"><i class="fas fa-user-plus"></i> Update Student Status</a></li>
            <li class="nav-item"><a class="nav-link" href="viewallfaculty"><i class="fas fa-users"></i> View All Faculty</a></li>
            <li class="nav-item"><a class="nav-link" href="viewallstudents"><i class="fas fa-users"></i> View All Students</a></li>
            <li class="nav-item"><a class="nav-link" href="viewallprojects"><i class="fas fa-users"></i> View All Submissions</a></li>
            <li class="nav-item"><a class="nav-link" href="deletefac"><i class="fas fa-user-minus"></i> Delete Faculty</a></li>
            <li class="nav-item"><a class="nav-link" href="deletestudent"><i class="fas fa-user-minus"></i> Delete Student</a></li>
            <li class="nav-item"><a class="nav-link" href="adminlogin"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

    <!-- Main Content Area -->
    <div class="main-content">
        <h3 class="form-heading"><u>Faculty Registration</u></h3>
        <div class="form-container">
            <form method="post" action="insertfaculty" enctype="multipart/form-data" onsubmit="return validateForm()">
                <table>
                    <tr>
                        <td><label for="fid">Enter ID</label></td>
                        <td><input type="number" id="fid" name="fid" required /></td>
                        <span id="fidError" class="error"></span>
                    </tr>
                    <tr>
                        <td><label for="fname">Enter Name</label></td>
                        <td><input type="text" id="fname" name="fname" required /></td>
                        <span id="fnameError" class="error"></span>
                    </tr>
                    <tr>
                        <td><label>Select Gender</label></td>
                        <td>
                            <input type="radio" id="male" name="fgender" value="MALE" required />
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="fgender" value="FEMALE" required />
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="fgender" value="OTHERS" required />
                            <label for="others">Others</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="femail">Enter Email ID</label></td>
                        <td><input type="email" id="femail" name="femail" required /></td>
                        <span id="femailError" class="error"></span>
                    </tr>
                    <tr>
                        <td><label for="fdept">Select Department</label></td>
                        <td>
                            <select id="fdept" name="fdept" required>
                                <option value="">---Select---</option>
                                <option value="CSE">CSE</option>
                                <option value="CS&IT">CS&IT</option>
                                <option value="ECE">ECE</option>
                                <option value="MECH">MECH</option>
                            </select>
                            <span id="fdeptError" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="fcontact">Enter Contact</label></td>
                        <td><input type="text" id="fcontact" name="fcontact" required /></td>
                        <span id="fcontactError" class="error"></span>
                    </tr>
                    <tr>
                        <td><label for="fpwd">Enter Password</label></td>
                        <td><input type="password" id="fpwd" name="fpwd" required /></td>
                        <span id="fpwdError" class="error"></span>
                    </tr>
                    <tr>
                        <td><label for="facultyimage">Upload Image</label></td>
                        <td><input type="file" id="facultyimage" name="facultyimage" required /></td>
                        <span id="facultyimageError" class="error"></span>
                    </tr>
                </table>
                <div class="button-container">
                    <input type="submit" value="Register" class="btn">
                    <input type="reset" value="Clear" class="btn" />
                </div>
            </form>
        </div>
    </div>

    <!-- Script for Form Validation -->
    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById("sidebar");
            sidebar.classList.toggle("active");

            const content = document.querySelector(".main-content");
            content.classList.toggle("hidden");
        }

        function validateForm() {
            let isValid = true;

            // Error message elements
            const fidError = document.getElementById('fidError');
            const fnameError = document.getElementById('fnameError');
            const femailError = document.getElementById('femailError');
            const fdeptError = document.getElementById('fdeptError');
            const fcontactError = document.getElementById('fcontactError');
            const fpwdError = document.getElementById('fpwdError');
            const facultyimageError = document.getElementById('facultyimageError');

            // Reset error messages
            fidError.textContent = '';
            fnameError.textContent = '';
            femailError.textContent = '';
            fdeptError.textContent = '';
            fcontactError.textContent = '';
            fpwdError.textContent = '';
            facultyimageError.textContent = '';

            // Validate Faculty ID (should be a positive number)
            const fid = document.getElementById("fid").value;
            if (isNaN(fid) || fid <= 0) {
                fidError.textContent = "Faculty ID must be a positive number.";
                isValid = false;
            }

            // Validate Name (non-empty and should not start with a number)
            const fname = document.getElementById("fname").value.trim();
            const nameRegex = /^[^\d].*$/; // Regular expression to ensure the name doesn't start with a digit
            if (fname === "" || !nameRegex.test(fname)) {
                fnameError.textContent = "Name cannot be empty or start with a number.";
                isValid = false;
            }

            // Validate Email (non-empty and valid format)
            const femail = document.getElementById("femail").value.trim();
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // Basic email validation
            if (femail === "" || !emailRegex.test(femail)) {
                femailError.textContent = "Enter a valid email address.";
                isValid = false;
            }

            // Validate Department Selection
            const fdept = document.getElementById("fdept").value;
            if (fdept === "") {
                fdeptError.textContent = "Please select a department.";
                isValid = false;
            }

            // Validate Contact Number (10-digit number)
            const fcontact = document.getElementById("fcontact").value.trim();
            const contactRegex = /^[0-9]{10}$/; // Validates exactly 10 digits
            if (!contactRegex.test(fcontact)) {
                fcontactError.textContent = "Contact number must be 10 digits.";
                isValid = false;
            }

            // Validate Password (non-empty)
            const fpwd = document.getElementById("fpwd").value.trim();
            if (fpwd === "") {
                fpwdError.textContent = "Password cannot be empty.";
                isValid = false;
            }

            // Validate File Upload
            const facultyimage = document.getElementById("facultyimage").value;
            if (facultyimage === "") {
                facultyimageError.textContent = "Please upload an image.";
                isValid = false;
            }

            return isValid;
        }
    </script>
</body>
</html>
