<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<title>View All Students</title>
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
        margin-left: 250px; /* Adjust content margin when sidebar is visible */
    }

    /* Centered Heading Styling */
    h3 {
        text-align: center;
        color: #2a4d69; /* Dark blue for heading */
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
        background-color: #ffffff; /* White table background */
        border: 1px solid #d9d9d9;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Light shadow for the table */
        border-radius: 8px; /* Slightly rounded corners */
        overflow: hidden;
    }

    table, th, td {
        border: 1px solid #d9d9d9; /* Light gray border for table */
    }

    th, td {
        padding: 12px;
        text-align: center;
        font-size: 14px;
        word-wrap: break-word;
    }

    /* Table Header Styling */
    th {
        background-color: #2a4d69; /* Dark blue header */
        color: #ffffff; /* White text for header */
        text-transform: uppercase;
        font-weight: bold;
    }

    /* Alternating Row Colors */
    tr:nth-child(even) {
        background-color: #f9f9f9; /* Light gray for even rows */
    }

    tr:nth-child(odd) {
        background-color: #ffffff; /* White for odd rows */
    }

    /* Highlight Row on Hover */
    tr:hover {
        background-color: #e0f7fa; /* Light teal hover effect */
        transition: background-color 0.3s ease-in-out;
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
<!--             <li><a href="#">Home</a></li> -->
<!--             <li><a href="#">Profile</a></li> -->
<!--             <li><a href="#">Settings</a></li> -->
<!--         </ul> -->
<!--     </div> -->

    <div class="content">
        <%@ include file="adminhome.jsp" %>
        <h3 style="text-align: center;"><u>View All Students</u></h3>
        <table>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>EMAIL</th>
                <th>DEPARTMENT</th>
                <th>YEAR</th>
                <th>STATUS</th>
            </tr>
            <c:forEach items="${studentlist}" var="stu">
                <tr>
                    <td><c:out value="${stu.studentid}"/></td>
                    <td><c:out value="${stu.studentname}"/></td>
                    <td><c:out value="${stu.studentemail}"/></td>
                    <td><c:out value="${stu.department}"/></td>
                    <td><c:out value="${stu.studentyear}"/></td>
                    <td><c:out value="${stu.status}"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
