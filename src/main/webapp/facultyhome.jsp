<%@ page import="com.klef.jfsd.springboot.model.Faculty" %>
<% 
    Faculty faculty = (Faculty) session.getAttribute("faculty");
    if(faculty == null) {
        response.sendRedirect("facultysessionexpiry");
        return;
    }
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty Home</title>
    <link rel="stylesheet" href="facultyhome.css"> 
    <style>
      
        .profile-container {
            display: flex;
            align-items: center;
            justify-content: center; /* Centers the content horizontally */
            margin: 70px;
            text-align: center; /* Ensures the welcome message is centered below the image */
        }

        .profile-container img {
            width: 400px; /* Increased size for the image */
            height: 400px; /* Increased size for the image */
            border-radius: 50%; /* Makes the image round */
            object-fit: cover; /* Ensures the image fits inside the circle without distortion */
            margin-right: 50px; /* Adds space between the image and text */
        }

        .profile-container h2 {
            font-size: 32px;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <%@ include file="facultynavbar.jsp" %>
    </div>

    <div class="main-content">
        <div class="profile-container">
            
            <img src="displayfacultyimage?id=${faculty.id}" alt="${faculty.username} Image"/>
      
            <h2>Welcome, ${faculty.username}</h2>
        </div>
    </div>
</body>
</html>
