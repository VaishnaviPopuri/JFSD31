<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.klef.jfsd.springboot.model.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PortfolioHub - Project Submissions</title>
    <link rel="stylesheet" href="style/submissions.css">
</head>
<body>
<header>
    <div class="navbar">
        <div class="logo">
            <img src="images/logo.png" alt="Project Management">
        </div>
        
        <nav>
            <ul class="vertical-menu">
                <li><a href="studenthome"><img src="images/dashboard.png" alt="Dashboard Icon"> DashBoard</a></li>
                <li><a href="upload"><img src="images/submission.png" alt="Upload Icon"> Upload Project</a></li>
                <li><a href="submissions"><img src="images/upload.png" alt="Submissions Icon"> Submissions</a></li>
                <li><a href="feedback"><img src="images/feedback.png" alt="Feedback Icon"> Feedback</a></li>
            </ul>
        </nav>
        <div class="profile">
            <img src="images/studentavatar.png" alt="Profile Avatar">
            <a href="home.html">
                <button class="logout-btn">Logout</button>
            </a>
        </div>
    </div>
</header>

<main>
    <div class="container">
        <h1>Project Submissions</h1>

        <!-- Display success/error message -->
        <c:if test="${not empty message}">
            <div class="message success">
                <p>${message}</p>
            </div>
        </c:if>

        <!-- Search by Project ID -->
        <form action="searchByProjectId" method="get" class="search-form">
            <label for="projectId">Search by Project ID:</label>
            <input type="number" id="projectId" name="projectId" placeholder="Enter Project ID" required>
            <button type="submit">Search</button>
        </form>

        <!-- Search Results -->
        <c:if test="${not empty searchResult}">
            <h2>Search Results</h2>
            <table>
                <thead>
                    <tr>
                        <th>Project ID</th>
                        <th>Project Title</th>
                        <th>Project Description</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="student" items="${searchResult}">
                        <tr>
                            <td>${student.projectid}</td>
                            <td>${student.projectTitle}</td>
                            <td>${student.projectDescription}</td>
                            <td><a href="viewProjectDetails.jsp?projectid=${student.projectid}">View</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

        <!-- Display all submissions -->
        <h2>All Submissions</h2>
        <c:if test="${not empty studentlist}">
            <table>
                <thead>
                    <tr>
                        <th>Project ID</th>
                        <th>Project Title</th>
                        <th>Project Description</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="student" items="${studentlist}">
                        <tr>
                            <td>${student.projectid}</td>
                            <td>${student.projectTitle}</td>
                            <td>${student.projectDescription}</td>
                            <td><a href="viewProjectDetails.jsp?projectid=${student.projectid}">View</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </div>
</main>

<script src="script.js"></script>
</body>
</html>
