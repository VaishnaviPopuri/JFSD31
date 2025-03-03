<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Faculty</title>
    <style>
        /* General Body Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e6f7ff; /* Solid light blue background */
            color: #333;
            display: flex; /* Added flex layout for sidebar and content */
        }

        /* Sidebar Styling */
        .sidebar {
            width: 250px;
            background-color: #005f99; /* Deep blue for sidebar */
            color: white;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            transform: translateX(-250px); /* Initially hidden */
            transition: transform 0.3s ease-in-out;
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1); /* Subtle shadow for sidebar */
        }

        .sidebar.active {
            transform: translateX(0); /* Slide in */
        }

        .sidebar-toggle {
            position: fixed;
            top: 15px;
            left: 15px;
            background-color: #005f99;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            z-index: 1000;
        }

        /* Main Content Styling */
        .content {
            margin-left: 0;
            transition: margin-left 0.3s ease-in-out;
            flex: 1;
            padding: 20px;
        }

        .content.active {
            margin-left: 250px; /* Adjust margin when sidebar is visible */
        }

        /* Centered Heading Styling */
        h3 {
            text-align: center;
            color: #005f99; /* Deep blue for heading */
            margin-top: 20px;
            text-transform: uppercase;
            font-weight: bold;
            letter-spacing: 1px;
        }

        /* Underline for Heading */
        h3 u {
            text-decoration: underline;
        }

        /* Table Styling */
        table {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff; /* White background for table */
            border: 1px solid #ddd;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            border-radius: 8px; /* Rounded corners */
            overflow: hidden;
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
            background-color: #005f99; /* Deep blue for header row */
            color: white;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Alternating Row Colors */
        tr:nth-child(even) {
            background-color: #f2f9fc; /* Very light blue tint for even rows */
        }

        tr:nth-child(odd) {
            background-color: #ffffff; /* White for odd rows */
        }

        /* Highlight Row on Hover */
        tr:hover {
            background-color: #d9f0ff; /* Soft light blue on hover */
            transition: background-color 0.3s ease-in-out;
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
<!--     <div class="sidebar"> -->
<!--         <h3>Sidebar</h3> -->
<!--         <ul> -->
<!--             <li><a href="#" style="color: white;">Home</a></li> -->
<!--             <li><a href="#" style="color: white;">Profile</a></li> -->
<!--             <li><a href="#" style="color: white;">Settings</a></li> -->
<!--         </ul> -->
<!--     </div> -->
    <div class="content">
        <%@ include file="adminhome.jsp" %>
        <h3 style="text-align: center;"><u>View All Faculty</u></h3>
        <table>
            <tr>
                <th>ID</th>
                <th>USERNAME</th>
                <th>GENDER</th>
                <th>DEPARTMENT</th>
                <th>EMAIL</th>
                <th>CONTACT</th>
            </tr>
            <c:forEach items="${faclist}" var="fac">
                <tr>
                    <td><c:out value="${fac.id}"/></td>
                    <td><c:out value="${fac.username}"/></td>
                    <td><c:out value="${fac.gender}"/></td>
                    <td><c:out value="${fac.department}"/></td>
                    <td><c:out value="${fac.email}"/></td>
                    <td><c:out value="${fac.contact}"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
