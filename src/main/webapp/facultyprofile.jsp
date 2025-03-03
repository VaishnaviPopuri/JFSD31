<%@page import="com.klef.jfsd.springboot.model.Faculty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Faculty faculty = (Faculty)session.getAttribute("faculty");
if (faculty == null) {
    response.sendRedirect("facultysessionexpiry");
    return;
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Profile</title>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
<style>
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f2d1f2; /* Light pink background */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .card {
            background-color: #fff;
            max-width: 400px;
            width: 90%;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
            border: 1px solid #e0e0e0;
        }

        .profile-image {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #e0e0e0;
            margin-bottom: 15px; /* Space between image and details */
        }

        .card h3 {
            color: #333;
            margin-bottom: 10px;
            font-size: 22px;
            font-weight: 700;
            text-decoration: underline;
        }

        .details {
            display: flex;
            flex-direction: column;
            gap: 8px;
            font-size: 16px;
            color: #333;
            align-items: center; /* Center the details horizontally */
        }

        .details-item {
            display: flex;
            align-items: center; /* Align items vertically */
            gap: 10px;
            width: 100%; /* Make sure the items span across the available width */
        }

        .details-item b {
            color: #444;
            font-weight: 600;
        }

        .details-item span {
            color: #555;
        }

        .card:hover {
            transform: translateY(-5px);
            transition: 0.3s;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        }
    </style>

</head>
<body>
 <%@include file="facultynavbar.jsp" %>
    <div class="card">
     <h3>My Profile</h3>
        <!-- Centered Profile Image -->
        <img src="displayfacultyimage?id=<%= faculty.getId() %>" alt="<%= faculty.getUsername() %> Image" class="profile-image">
        <div class="details">
            <div class="details-item"><b>ID:</b> <span><%= faculty.getId() %></span></div>
            <div class="details-item"><b>NAME:</b> <span><%= faculty.getUsername() %></span></div>
            <div class="details-item"><b>GENDER:</b> <span><%= faculty.getGender() %></span></div>
            <div class="details-item"><b>EMAIL:</b> <span><%= faculty.getEmail() %></span></div>
            <div class="details-item"><b>DEPARTMENT:</b> <span><%= faculty.getDepartment() %></span></div>
            <div class="details-item"><b>CONTACT:</b> <span><%= faculty.getContact() %></span></div>
        </div>
    </div>
</body>
</html>
