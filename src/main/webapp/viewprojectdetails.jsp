<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PortfolioHub - Project Details</title>
    <link rel="stylesheet" href="style/projectdetails.css">
</head>
<body>
<header>
    <div class="navbar">
        <div class="logo">
            <img src="images/logo.png" alt="PortfolioHub Logo">
        </div>
        <nav>
            <ul>
                <li><a href="studenthome.jsp">Dashboard</a></li>
                <li><a href="upload.jsp">Upload Project</a></li>
                <li><a href="submissions.jsp">Submissions</a></li>
                <li><a href="feedback.jsp">Feedback</a></li>
            </ul>
        </nav>
        <div class="profile">
            <a href="logout.jsp">
                <button class="logout-btn">Logout</button>
            </a>
        </div>
    </div>
</header>

<main>
    <div class="container">
        <h1>Project Details</h1>

        <!-- Check if the project data exists -->
        <c:if test="${not empty project}">
            <p><strong>Project ID:</strong> ${project.projectid}</p>
            <p><strong>Title:</strong> ${project.projecttitle}</p>
            <p><strong>Description:</strong> ${project.projectdescription}</p>
            
            <!-- Display the uploaded project file -->
            <c:if test="${not empty project.projectfile}">
                <p><strong>Project File:</strong> 
                    <a href="uploads/${project.projectfile}" target="_blank" download>
                        ${project.projectfile}
                    </a>
                </p>
            </c:if>
            
            <!-- If no project file is uploaded -->
            <c:if test="${empty project.projectfile}">
                <p><strong>Project File:</strong> No file uploaded</p>
            </c:if>
        </c:if>

        <!-- Display an error if the project is not found -->
        <c:if test="${empty project}">
            <p style="color: red; font-weight: bold;">Project not found!</p>
        </c:if>
    </div>
</main>

<footer>
    <p>&copy; 2024 PortfolioHub. All rights reserved.</p>
</footer>
</body>
</html>
