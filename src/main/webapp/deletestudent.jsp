<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Student</title>
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
            margin-left: 0; /* Adjust based on sidebar state */
            transition: margin-left 0.3s ease-in-out;
            flex: 1; /* Takes remaining space */
        }

        .content.active {
            margin-left: 250px; /* Move content when sidebar is visible */
        }

        /* Centered Heading Styling */
        h2 {
            text-align: center;
            color: #2a4d69; /* Dark blue */
            margin: 20px auto; /* Adds space around the heading */
            font-size: 26px;
            text-transform: uppercase;
            font-weight: bold;
            letter-spacing: 1px;
        }

        /* Table Styling */
        table {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto; /* Center the table */
            border-collapse: collapse;
            background-color: #ffffff; /* White background */
            border: 1px solid #d9d9d9; /* Light gray border */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            border-radius: 8px; /* Rounded corners */
        }

        /* Border Styling for Table, Headers, and Cells */
        table, th, td {
            border: 1px solid #d9d9d9;
        }

        /* Cell Padding and Text Alignment */
        th, td {
            padding: 15px;
            text-align: center;
            font-size: 14px;
            word-wrap: break-word;
        }

        /* Table Header Styling */
        th {
            background-color: #2a4d69; /* Dark blue */
            color: #ffffff; /* White text */
            text-transform: uppercase;
            font-weight: bold;
        }

        /* Alternating Row Colors */
        tr:nth-child(even) {
            background-color: #f9f9f9; /* Light gray */
        }

        tr:nth-child(odd) {
            background-color: #ffffff; /* White */
        }

        /* Highlight Row on Hover */
        tr:hover {
            background-color: #e0f7fa; /* Light teal hover effect */
            transition: background-color 0.3s ease-in-out;
        }

        /* Delete Button Styling */
        a {
            text-decoration: none;
            color: white;
            background-color: #d9534f; /* Red button color */
            padding: 8px 12px;
            border-radius: 4px;
            font-size: 14px;
            display: inline-block; /* Makes it look like a button */
        }

        a:hover {
            background-color: #c9302c; /* Darker red on hover */
            transition: background-color 0.3s ease-in-out;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                width: 100%;
                font-size: 12px;
            }

            th, td {
                padding: 10px;
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
    <button class="sidebar-toggle" onclick="toggleSidebar()">☰</button>
    <div class="sidebar">
        <h3>Sidebar</h3>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Settings</a></li>
        </ul>
    </div>
    <div class="content">
        <%@ include file="adminhome.jsp" %>
        <h2>Delete Student</h2>
        <table>
            <thead>
                <tr>
                    <th>Student ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Department</th>
                    <th>Year</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="student" items="${studentlist}">
                    <tr>
                        <td><c:out value="${student.studentid}"/></td>
                        <td><c:out value="${student.studentname}"/></td>
                        <td><c:out value="${student.studentemail}"/></td>
                        <td><c:out value="${student.department}"/></td>
                        <td><c:out value="${student.studentyear}"/></td>
                        <td><a href="deleteStudentById?id=${student.id}">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
