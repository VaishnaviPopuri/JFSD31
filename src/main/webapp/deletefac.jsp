<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Faculty</title>
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

        /* Centered Heading Styling */
        h3 {
            text-align: center;
            color: #2a4d69; /* Dark blue */
            margin-top: 20px;
            font-size: 24px;
            text-transform: uppercase;
            font-weight: bold;
            letter-spacing: 1px;
        }

        h3 u {
            text-decoration: underline;
            text-underline-offset: 5px;
            text-decoration-thickness: 2px;
        }

        /* Table Styling */
        table {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff; /* White background */
            border: 1px solid #d9d9d9; /* Light gray border */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            border-radius: 8px; /* Rounded corners */
        }

        table, th, td {
            border: 1px solid #d9d9d9;
        }

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

        /* Delete Link Styling */
        a {
            text-decoration: none;
            color: white;
            background-color: #d9534f; /* Red button color */
            padding: 8px 12px;
            border-radius: 4px;
            font-size: 14px;
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

            h3 {
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
        <h3 style="text-align: center;"><u>Delete Faculty</u></h3>
        <table>
            <tr>
                <th>ID</th>
                <th>USERNAME</th>
                <th>GENDER</th>
                <th>EMAIL</th>
                <th>DEPARTMENT</th>
                <th>CONTACT</th>
                <th>ACTION</th>
            </tr>
            <c:forEach items="${faclist}" var="fac">
                <tr>
                    <td><c:out value="${fac.id}"/></td>
                    <td><c:out value="${fac.username}"/></td>
                    <td><c:out value="${fac.gender}"/></td>
                    <td><c:out value="${fac.email}"/></td>
                    <td><c:out value="${fac.department}"/></td>
                    <td><c:out value="${fac.contact}"/></td>
                    <td>
                        <a href='<c:url value="delete?id=${fac.id}"/>'>Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
