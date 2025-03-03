<%@ page import="com.klef.jfsd.springboot.model.Student" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #333;
            font-size: 28px;
            margin-bottom: 20px;
        }

        label {
            font-size: 14px;
            font-weight: bold;
            color: #555;
            margin-bottom: 8px;
            display: block;
        }

        input[type="text"],
         input[type="number"],
        textarea,
        select {
            width: 90%;
            padding: 10px;
            margin: 10px 0 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            background-color: rgba(250, 244, 250, 0.9);
        }

        textarea {
            resize: none;
        }

        button {
            background: #E0BBE4;
            color: #fff;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            display: block;
            margin: 0 auto;
        }

        button:hover {
            background-color: #baffc9;
        }

        .form-section {
            margin-bottom: 30px;
        }

        .shadow-card {
            background-color: rgba(230, 230, 250, 0.9);
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Project Overview</h2>
        <form:form modelAttribute="project" action="insertprojectdetails" method="post">

            <!-- Student ID Entry (manual input) -->
            <div class="form-section shadow-card">
                <label for="studentId">Student ID:</label>
                <input type="number" id="studentId" name="studentId" placeholder="Enter your Student ID" required>
            </div>

            <!-- Project Description -->
            <div class="form-section shadow-card">
                <label for="description">Project Description:</label>
                <textarea id="description" name="description" rows="4" placeholder="Provide a detailed project description" required></textarea>
            </div>

            <!-- Milestones -->
            <div class="form-section shadow-card">
                <label for="milestones">Milestones:</label>
                <textarea id="milestones" name="milestones" rows="4" placeholder="List milestones (e.g., Research, Development)" required></textarea>
            </div>

            <!-- Modules -->
            <div class="form-section shadow-card">
                <label for="modules">Modules:</label>
                <textarea id="modules" name="modules" rows="4" placeholder="Describe project modules" required></textarea>
            </div>

            <!-- Resources -->
            <div class="form-section shadow-card">
                <label for="resources">Resources Used:</label>
                <textarea id="resources" name="resources" rows="4" placeholder="List resources like tools, documents, etc." required></textarea>
            </div>

            <!-- Mentor Selection -->
<div class="form-section shadow-card">
    <label for="mentor">Mentor:</label>
    <select id="mentor" name="facultyId" required>
        <option value="">-- Select Mentor --</option>
        <c:forEach items="${faclist}" var="fac">
            <option value="${fac.id}">
                ${fac.username} (${fac.id})
            </option>
        </c:forEach>
    </select>
</div>

            <div class="form-section shadow-card">
                <label for="url">Project URL:</label>
                <input type="text" id="url" name="url" placeholder="Enter the project URL ">
            </div>

            <button type="submit">Submit For Review</button>
        </form:form>
    </div>
</body>
</html>
