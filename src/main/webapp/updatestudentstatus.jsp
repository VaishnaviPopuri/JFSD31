<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student Status</title>
    <style>
        /* General Body Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, #e9f7fe, #e3f2fd); /* Light blue gradient */
            color: #333;
            line-height: 1.6;
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

        /* Centered Page Title */
        h2 {
            text-align: center;
            color: #0073e6;
            margin-top: 20px;
            text-transform: uppercase;
            font-weight: bold;
            letter-spacing: 1px;
        }

        /* Table Styling */
        table {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: transparent; /* No white background */
            border: 1px solid #ddd;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05); /* Very subtle shadow */
            border-radius: 8px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
            word-wrap: break-word;
        }

        /* Header Row Styling */
        th {
            background-color: #0073e6;
            color: white;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Alternating Row Colors */
        tr:nth-child(even) {
            background-color: rgba(255, 255, 255, 0.8); /* Light transparent white */
        }

        tr:nth-child(odd) {
            background-color: rgba(255, 255, 255, 0.6); /* Slightly transparent white */
        }

        /* Highlight Row on Hover */
        tr:hover {
            background-color: #f1f1f1;
            transition: background-color 0.2s ease-in-out;
        }

        /* Form Button Styling */
        input[type="submit"] {
            background-color: #0073e6;
            color: white;
            border: none;
            padding: 8px 12px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 4px;
        }

        input[type="submit"]:hover {
            background-color: #005bb5;
            transition: background-color 0.2s ease-in-out;
        }

        /* Select Dropdown Styling */
        select {
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                width: 100%;
                font-size: 14px;
            }

            th, td {
                padding: 8px;
            }

            h2 {
                font-size: 18px;
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
        <h2 align="center">Update Student Status</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Department</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <c:forEach var="student" items="${studentlist}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.studentname}</td>
                    <td>${student.studentemail}</td>
                    <td>${student.department}</td>
                    <td>${student.status}</td>
                   <td>
    <form action="updatestatus" method="post" style="display: flex; align-items: center; gap: 10px;">
        <input type="hidden" name="id" value="${student.id}" />
        <select name="status" style="padding: 5px; font-size: 14px; border-radius: 4px; border: 1px solid #ccc;">
            <option value="Accepted">Accept</option>
            <option value="Rejected">Reject</option>
        </select>
        <input type="submit" value="Update" style="background-color: #0073e6; color: white; border: none; padding: 8px 12px; font-size: 14px; cursor: pointer; border-radius: 4px;">
    </form>
</td>

                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
