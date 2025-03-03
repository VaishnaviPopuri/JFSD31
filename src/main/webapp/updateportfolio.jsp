<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Portfolio</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        form {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        label {
            font-weight: bold;
            display: block;
            margin: 10px 0 5px;
        }
        input, textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        textarea {
            height: 100px;
        }
        button {
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Update Portfolio</h1>
    
    <form:form modelAttribute="portfolio" action="updateportfolio" method="post" enctype="multipart/form-data">
        
        <!-- Personal Information -->
        <label>Username:</label>
        <input type="text" name="username" value="${portfolio.username}" required readonly><br>
        
        <label>Name:</label>
        <input type="text" name="name" value="${portfolio.name}" required><br>
        
        <label>Job Title:</label>
        <input type="text" name="jobTitle" value="${portfolio.jobTitle}" required><br>
        
        <label>Location:</label>
        <input type="text" name="location" value="${portfolio.location}" required><br>
        
        <label>Email:</label>
        <input type="email" name="email" value="${portfolio.email}" required><br>
        
        <label>Phone:</label>
        <input type="text" name="phone" value="${portfolio.phone}" required><br>
        
        <!-- Profile Picture -->
        <label>Update Profile Picture:</label>
        <input type="file" name="portfolio_image" accept="image/*"><br>
        <label>Current Profile Picture:</label>
        <img src="displayPortfolioImage?username=${portfolio.username}" alt="Profile Image" width="150"><br>

        <!-- Skills -->
        <label>Skill 1:</label>
        <input type="text" name="skill1" value="${portfolio.skill1}"><br>
        
        <label>Skill 1 Percentage:</label>
        <input type="number" name="skill1Percentage" value="${portfolio.skill1Percentage}" min="0" max="100"><br>
        
        <label>Skill 2:</label>
        <input type="text" name="skill2" value="${portfolio.skill2}"><br>
        
        <label>Skill 2 Percentage:</label>
        <input type="number" name="skill2Percentage" value="${portfolio.skill2Percentage}" min="0" max="100"><br>
        
        <label>Skill 3:</label>
        <input type="text" name="skill3" value="${portfolio.skill3}"><br>
        
        <label>Skill 3 Percentage:</label>
        <input type="number" name="skill3Percentage" value="${portfolio.skill3Percentage}" min="0" max="100"><br>

        <!-- Languages -->
        <label>Language 1:</label>
        <input type="text" name="language1" value="${portfolio.language1}"><br>
        
        <label>Language 1 Level:</label>
        <input type="number" name="language1Level" value="${portfolio.language1Level}" min="0" max="10"><br>
        
        <label>Language 2:</label>
        <input type="text" name="language2" value="${portfolio.language2}"><br>
        
        <label>Language 2 Level:</label>
        <input type="number" name="language2Level" value="${portfolio.language2Level}" min="0" max="10"><br>
        
        <label>Language 3:</label>
        <input type="text" name="language3" value="${portfolio.language3}"><br>
        
        <label>Language 3 Level:</label>
        <input type="number" name="language3Level" value="${portfolio.language3Level}" min="0" max="10"><br>

        <!-- Work Experience -->
        <label>Work Experience 1:</label>
        <input type="text" name="workExperience1" value="${portfolio.workExperience1}"><br>
        
        <label>Work Experience 1 Duration:</label>
        <input type="text" name="workExperience1Duration" value="${portfolio.workExperience1Duration}"><br>
        
        <label>Work Experience 1 Description:</label>
        <textarea name="workExperience1Description">${portfolio.workExperience1Description}</textarea><br>
        
        <label>Work Experience 2:</label>
        <input type="text" name="workExperience2" value="${portfolio.workExperience2}"><br>
        
        <label>Work Experience 2 Duration:</label>
        <input type="text" name="workExperience2Duration" value="${portfolio.workExperience2Duration}"><br>
        
        <label>Work Experience 2 Description:</label>
        <textarea name="workExperience2Description">${portfolio.workExperience2Description}</textarea><br>

        <!-- Education -->
        <label>Education 1:</label>
        <input type="text" name="education1" value="${portfolio.education1}"><br>
        
        <label>Education 1 Duration:</label>
        <input type="text" name="education1Duration" value="${portfolio.education1Duration}"><br>
        
        <label>Education 1 Description:</label>
        <textarea name="education1Description">${portfolio.education1Description}</textarea><br>
        
        <label>Education 2:</label>
        <input type="text" name="education2" value="${portfolio.education2}"><br>
        
        <label>Education 2 Duration:</label>
        <input type="text" name="education2Duration" value="${portfolio.education2Duration}"><br>
        
        <label>Education 2 Description:</label>
        <textarea name="education2Description">${portfolio.education2Description}</textarea><br>

        <!-- Achievements -->
        <label>Achievement 1:</label>
        <input type="text" name="achievement1" value="${portfolio.achievement1}"><br>
        
        <label>Achievement 2:</label>
        <input type="text" name="achievement2" value="${portfolio.achievement2}"><br>

        <!-- Projects -->
        <label>Project 1:</label>
        <input type="text" name="project1" value="${portfolio.project1}"><br>
        
        <label>Project 1 Description:</label>
        <textarea name="project1Description">${portfolio.project1Description}</textarea><br>
        
        <label>Project 2:</label>
        <input type="text" name="project2" value="${portfolio.project2}"><br>
        
        <label>Project 2 Description:</label>
        <textarea name="project2Description">${portfolio.project2Description}</textarea><br>

        <button type="submit">Update Portfolio</button>
    </form:form>

    <br>
    <a href="myportfolio">Go to My Portfolio</a>
</body>
</html>
