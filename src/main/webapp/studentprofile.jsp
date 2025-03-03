<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Student student = (Student) session.getAttribute("student");
if(student == null) {
    response.sendRedirect("studentsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Profile | PortfolioHub</title>
    <link rel="stylesheet" href="style/profile.css">
</head>
<body>


    <h3 style="text-align: center;"><u>My Profile</u></h3>

    <div class="profile-card">
        <h3><u>My Profile</u></h3>
        <p><b>Student ID:</b> <span><%= student.getStudentid() %></span></p>
        <p><b>Name:</b> <span><%= student.getStudentname() %></span></p>
        <p><b>Email:</b> <span><%= student.getStudentemail() %></span></p>
        <p><b>Year:</b> <span><%= student.getStudentyear() %></span></p>
        <p><b>Contact:</b> <span><%= student.getProjectDescription() %></span></p>
        <!-- Add more fields as needed -->
    </div>
</body>
</html>
