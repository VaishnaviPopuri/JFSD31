<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Feedbacks</title>
    <style>
        /* General Body Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f8ff; /* Light blue background */
            color: #333;
            display: flex;
        }

        /* Sidebar Styling */
        .sidebar {
            width: 250px;
            background-color: #2a4d69; /* Dark blue */
            color: #ffffff;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            transform: translateX(-250px); /* Initially hidden */
            transition: transform 0.3s ease-in-out;
        }

        .sidebar.active {
            transform: translateX(0); /* Slide in */
        }

        .sidebar-toggle {
            position: fixed;
            top: 15px;
            left: 15px;
            background-color: #2a4d69;
            color: #ffffff;
            border: none;
            padding: 10px;
            cursor: pointer;
            z-index: 1000;
        }

        /* Main Content Styling */
        .content {
            margin-left: 0;
            transition: margin-left 0.3s ease-in-out;
            flex: 1; /* Takes remaining space */
        }

        .content.active {
            margin-left: 250px;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #2a4d69;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 999;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px;
            margin-right: 15px;
        }

        .navbar a:hover {
            background-color: #4c6a8f;
        }

        /* Table Styling */
      table {
    width: 80%;
    max-width: 1200px;
    margin: 80px auto; /* Space for navbar */
    border-collapse: collapse;
    background-color: #f7f7f7; /* Light gray background */
    border: 1px solid #ddd;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
    border-radius: 8px;
}

th, td {
    padding: 10px;
    border: 1px solid #ddd;
    text-align: left;
}

/* Table Header Styling */
th {
    background-color: #2a4d69; /* Dark blue */
    color: white;
}

/* Alternating Row Colors */
tr:nth-child(even) {
    background-color: #ffffff; /* White */
}

tr:nth-child(odd) {
    background-color: #f7f7f7; /* Light gray */
}

/* Highlight Row on Hover */
tr:hover {
    background-color: #e0f7fa; /* Light teal hover effect */
}

        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                width: 100%;
                font-size: 12px;
            }

            th, td {
                padding: 8px;
            }

            h2 {
                font-size: 20px;
            }
        }
    </style>
    <script>
        function toggleSidebar() {
            const sidebar = document.querySelector('.sidebar');
            const content = document.querySelector('.content');
            sidebar.classList.toggle('active');
            content.classList.toggle('active');
        }
    </script>
</head>
<body>
    <!-- Sidebar Toggle Button -->
    <button class="sidebar-toggle" onclick="toggleSidebar()">☰</button>
    
    <!-- Sidebar -->
    <div class="sidebar">
        <h3>Sidebar</h3>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Settings</a></li>
        </ul>
    </div>

<!--     Navbar -->
<!--     <div class="navbar"> -->
<!--         <div> -->
<!--             <a href="#">Logo</a> -->
<!--             <a href="#">Dashboard</a> -->
<!--             <a href="#">Logout</a> -->
<!--         </div> -->
<!--     </div> -->

    <!-- Main Content Area -->
    <div class="content">
        <%@ include file="adminhome.jsp" %>
        <h2 style="text-align: center;">All Feedbacks</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>User Type</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Design Rating</th>
                    <th>Upload Rating</th>
                    <th>Response Rating</th>
                    <th>Additional Feedback</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="feedback" items="${feedbackList}">
                    <tr>
                        <td>${feedback.id}</td>
                        <td>${feedback.userType}</td>
                        <td>${feedback.name}</td>
                        <td>${feedback.email}</td>
                        <td>${feedback.designRating}</td>
                        <td>${feedback.uploadRating}</td>
                        <td>${feedback.responseRating}</td>
                        <td>${feedback.additionalFeedback}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
