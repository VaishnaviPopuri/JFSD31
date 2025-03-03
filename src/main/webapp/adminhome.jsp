<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <!-- Add Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="style/adminhome.css">
    
    <!-- Inline Custom CSS for General Styling -->
     <style>
        /* General Body Styling */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9; /* Light gray background */
            color: #333; /* Dark gray text */
            background-image: url("images/adminhomebg.jpg");
        }

        /* Main Content Styling */
        .content {
            margin-top: 60px;
            margin: 40px auto; /* Center the content vertically */
            padding: 30px;
            width: 80%;
            max-width: 800px;
            background-color: #fff; /* White background for content */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow effect */
        }

        .content h2 {
            color: #1f618d; /* Rich blue for the heading */
            font-size: 2.5rem;
            margin-bottom: 20px;
            text-align: center;
        }

        .content p {
            font-size: 1.2rem;
            line-height: 1.6;
            color: #555; /* Subtle gray text */
            text-align: center;
        }

        /* Button Styling */
        .content .btn {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #1f618d; /* Rich blue */
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .content .btn:hover {
            background-color: #145a7b; /* Darker blue */
        }

        /* Sidebar Styling */
        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #343a40; /* Dark sidebar background */
            color: #fff;
            position: fixed;
            padding: 20px 20px; /* Reduced padding */
        }

        .sidebar h4 {
            text-align: center;
            margin-bottom: 50px; /* Reduced margin */
        }

        .sidebar .nav-item {
            margin-bottom: 15px; /* Reduced the bottom margin between nav items */
        }

        .sidebar .nav-link {
            color: #ccc;
            padding: 8px 10px; /* Reduced padding for links */
            font-size: 0.9rem; /* Slightly smaller font size */
        }

        .sidebar .nav-link.active {
            color: #fff;
            font-weight: bold;
        }

        .sidebar .nav-link i {
            margin-right: 10px; /* Adjust icon spacing */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .content {
                width: 90%;
                padding: 20px;
            }

            .content h2 {
                font-size: 2rem;
            }

            .content p {
                font-size: 1rem;
            }
        }
    </style>

</head>
<body>
    <!-- Side Navbar -->
    <div class="sidebar" id="sidebar">
        <h4>Admin Dashboard</h4>
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link active" href="adminhome">
                    <i class="fas fa-home"></i> <span>Home</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="facultyreg">
                    <i class="fas fa-user-plus"></i> <span>Add Faculty</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="updatestudentstatus">
                    <i class="fas fa-user-plus"></i> <span>Update Student Status</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="viewallfaculty">
                    <i class="fas fa-users"></i> <span>View All Faculty</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="viewallstudents">
                    <i class="fas fa-users"></i> <span>View All Students</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="viewallprojects">
                    <i class="fas fa-users"></i> <span>View All Submissions</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="deletefac">
                    <i class="fas fa-user-minus"></i> <span>Delete Faculty</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="deletestudent">
                    <i class="fas fa-user-minus"></i> <span>Delete Student</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="viewAllFeedback">
                    <i class="fas fa-user-minus"></i> <span>View FeedBack</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="adminlogin">
                    <i class="fas fa-sign-out-alt"></i> <span>Logout</span>
                </a>
            </li>
        </ul>
    </div>

    <!-- Toggle Button -->
    <button class="toggle-btn" id="toggle-btn">
        <i class="fas fa-bars"></i>
    </button>

<!--     Main Content -->
     <div class="content"> 
       <h2>Welcome to Admin Dashboard</h2> 
       <p> 
             This is the admin home page where you can manage faculty, view statistics, and monitor activity. 
            Please navigate using the options provided in the menu. 
        </p> 
    </div> 

    <!-- Add Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>

    <!-- Custom JavaScript -->
    <script>
        document.getElementById('toggle-btn').addEventListener('click', function () {
            const sidebar = document.getElementById('sidebar');
            sidebar.classList.toggle('active'); // Add 'active' class to toggle sidebar visibility
        });
    </script>
</body>
</html>
