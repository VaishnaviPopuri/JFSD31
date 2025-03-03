<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f9fc;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }
        form {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h3 {
            color: #555;
            border-bottom: 2px solid #007bff;
            padding-bottom: 5px;
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin: 15px 0 5px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        input[type="number"],
        input[type="file"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }
        textarea {
            resize: vertical;
            height: 80px;
        }
        button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }
        button:hover {
            background-color: #0056b3;
        }
        .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h1>Create Portfolio</h1>
    <form:form modelAttribute="portfolio" action="insertportfolio" method="post" enctype="multipart/form-data">
        <!-- Personal Information -->
        <h3>Personal Information</h3>
        <div class="form-group">
            <label>Username:</label>
            <input type="text" name="username" required>
        </div>
        <div class="form-group">
            <label>Name:</label>
            <input type="text" name="name" required>
        </div>
        <div class="form-group">
            <label>Job Title:</label>
            <input type="text" name="jobTitle" required>
        </div>
        <div class="form-group">
            <label>Location:</label>
            <input type="text" name="location" required>
        </div>
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" required>
        </div>
        <div class="form-group">
            <label>Phone:</label>
            <input type="text" name="phone" required>
        </div>

        <!-- Profile Picture -->
        <h3>Profile Picture</h3>
        <div class="form-group">
            <label>Upload Profile Picture:</label>
            <input type="file" name="portfolio_image" accept="image/*" required>
        </div>

        <!-- Skills -->
        <h3>Skills</h3>
        <div class="form-group">
            <label>Skill 1:</label>
            <input type="text" name="skill1">
        </div>
        <div class="form-group">
            <label>Skill 1 Percentage:</label>
            <input type="number" name="skill1Percentage" min="0" max="100">
        </div>
        <div class="form-group">
            <label>Skill 2:</label>
            <input type="text" name="skill2">
        </div>
        <div class="form-group">
            <label>Skill 2 Percentage:</label>
            <input type="number" name="skill2Percentage" min="0" max="100">
        </div>
        <div class="form-group">
            <label>Skill 3:</label>
            <input type="text" name="skill3">
        </div>
        <div class="form-group">
            <label>Skill 3 Percentage:</label>
            <input type="number" name="skill3Percentage" min="0" max="100">
        </div>

        <!-- Languages -->
        <h3>Languages</h3>
        <div class="form-group">
            <label>Language 1:</label>
            <input type="text" name="language1">
        </div>
        <div class="form-group">
            <label>Language 1 Level:</label>
            <input type="number" name="language1Level" min="0" max="10">
        </div>
        <div class="form-group">
            <label>Language 2:</label>
            <input type="text" name="language2">
        </div>
        <div class="form-group">
            <label>Language 2 Level:</label>
            <input type="number" name="language2Level" min="0" max="10">
        </div>
        <div class="form-group">
            <label>Language 3:</label>
            <input type="text" name="language3">
        </div>
        <div class="form-group">
            <label>Language 3 Level:</label>
            <input type="number" name="language3Level" min="0" max="10">
        </div>

        <!-- Work Experience -->
        <h3>Work Experience</h3>
        <div class="form-group">
            <label>Work Experience 1:</label>
            <input type="text" name="workExperience1">
        </div>
        <div class="form-group">
            <label>Work Experience 1 Duration:</label>
            <input type="text" name="workExperience1Duration">
        </div>
        <div class="form-group">
            <label>Work Experience 1 Description:</label>
            <textarea name="workExperience1Description"></textarea>
        </div>
        <div class="form-group">
            <label>Work Experience 2:</label>
            <input type="text" name="workExperience2">
        </div>
        <div class="form-group">
            <label>Work Experience 2 Duration:</label>
            <input type="text" name="workExperience2Duration">
        </div>
        <div class="form-group">
            <label>Work Experience 2 Description:</label>
            <textarea name="workExperience2Description"></textarea>
        </div>

        <!-- Education -->
        <h3>Education</h3>
        <div class="form-group">
            <label>Education 1:</label>
            <input type="text" name="education1">
        </div>
        <div class="form-group">
            <label>Education 1 Duration:</label>
            <input type="text" name="education1Duration">
        </div>
        <div class="form-group">
            <label>Education 1 Description:</label>
            <textarea name="education1Description"></textarea>
        </div>
        <div class="form-group">
            <label>Education 2:</label>
            <input type="text" name="education2">
        </div>
        <div class="form-group">
            <label>Education 2 Duration:</label>
            <input type="text" name="education2Duration">
        </div>
        <div class="form-group">
            <label>Education 2 Description:</label>
            <textarea name="education2Description"></textarea>
        </div>

        <!-- Achievements -->
        <h3>Achievements</h3>
        <div class="form-group">
            <label>Achievement 1:</label>
            <input type="text" name="achievement1">
        </div>
        <div class="form-group">
            <label>Achievement 2:</label>
            <input type="text" name="achievement2">
        </div>

        <!-- Projects -->
        <h3>Projects</h3>
        <div class="form-group">
            <label>Project 1:</label>
            <input type="text" name="project1">
        </div>
        <div class="form-group">
            <label>Project 1 Description:</label>
            <textarea name="project1Description"></textarea>
        </div>
        <div class="form-group">
            <label>Project 2:</label>
            <input type="text" name="project2">
        </div>
        <div class="form-group">
            <label>Project 2 Description:</label>
            <textarea name="project2Description"></textarea>
        </div>

        <button type="submit">Submit</button>
    </form:form>
</body>
</html>
