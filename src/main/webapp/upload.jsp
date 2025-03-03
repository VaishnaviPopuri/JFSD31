<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PortfolioHub - Upload Project</title>
    <link rel="stylesheet" href="style/upload.css">
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

<!-- Main Content Section -->
<main>
    <div class="container">
        <h1>Upload Your Project</h1>

        <!-- Display message if available -->
        <c:if test="${not empty message}">
            <div class="message">
                <p>${message}</p>
            </div>
        </c:if>

        <!-- Upload Project Form -->
        <form action="insertfile" method="post" enctype="multipart/form-data">
            <div class="upload-section">
                <label for="fileid">Project ID</label>
                <input type="number" id="fileid" name="fileidd" required>

                <label for="projecttitle">Project Title</label>
                <input type="text" id="projecttitle" name="projecttitle" required>

                <label for="projectdesc">Project Description</label>
                <textarea id="projectdesc" name="projectdesc" rows="4" required></textarea>

                <label for="file">Upload Project File</label>
                <input type="file" id="file" name="file" required>

                <div class="buttons">
                    <button type="submit">Upload</button>
                    <button type="reset">Reset</button>
                </div>
            </div>
        </form>
    </div>
</main>

<script src="script.js"></script>
</body>
</html>
