<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot</title>
    <style>
        /* Reset and Basic Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f5cdf5; /* Light background color */
            display: flex;
            margin: 0;
        }

        /* Sidebar Navbar Styling */
        .navbar {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #F1E6FF;
            padding-top: 30px;
            height: 100vh;
            width: 250px;
            border-radius: 10px;
            position: fixed;
            left: 0;
            top: 0;
        }

        .logo img {
            width: 200px;
            margin-bottom: 30px;
        }

        nav ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 20px;
            width: 100%;
            padding-left: 0;
        }

        nav ul li {
            text-align: center;
            width: 100%;
        }

        nav ul li a {
            text-decoration: none;
            color: black;
            font-size: 14px;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 15px;
            background-color: #ffb0da; 
            border-radius: 50px; 
            position: relative;
            overflow: hidden;
            transition: all 0.3s ease-in-out;
            width: 150px;
            margin: 0 auto;
        }

        nav ul li a:hover {
            background-color: #d3bcf6; /* Hover color */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transform: scale(1.1);
        }

        
        .profile {
            margin-top: auto;
            text-align: center;
            padding-bottom: 20px;
        }

        .profile img {
            width: 50px;
            border-radius: 50%;
        }

        .logout-btn {
            padding: 10px 20px;
            background-color: #ff4c4c;
            color: white;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #e63946;
        }

        /* Main Content Styling */
        .sidebar {
            width: 20%; /* Adjust width as needed */
            background-color: #f8d7f9;
            padding: 0px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .main-content {
            flex: 2;
            padding: 20px;
            align: center;
        }

        img {
            margin-top: 20px;
            display: block;
        }

    </style>
</head>
<body>
    
    <div class="navbar">
        <div class="logo">
            <img src="images/logo.png" alt="Logo">  <br/>
        </div>
        <nav>
            <ul>
                <li><a href="facultyhome">Home</a></li>
                <li><a href="facultyprojectsubmissions">View Submissions</a></li>      
             
                <li><a href="updatefaculty">Update Profile</a></li>
                <li><a href="facultyprofile">My Profile</a></li>
            </ul>
        </nav> 
        <div class="profile">
            <img src="displayfacultyimage?id=${faculty.id}" width="15%" alt="${faculty.username} Image"/>
            <a href="facultylogout"> 
                <button class="logout-btn">Logout</button>
            </a>
        </div>
    </div>

</body>
</html>
