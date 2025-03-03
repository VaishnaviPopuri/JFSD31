<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Project Submissions</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
            line-height: 1.6;
        }

        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #444;
            font-size: 24px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table th, table td {
            padding: 15px;
            border: 1px solid #ddd;
            text-align: left;
            font-size: 14px;
        }

        table th {
            background-color: #f7f7f9;
            color: #555;
            font-weight: bold;
        }

        table tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tbody tr:hover {
            background-color: #f1f1f1;
        }

        .btn {
            display: inline-block;
            padding: 8px 12px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #45a049;
        }

        input[type="number"] {
            width: 60px;
            padding: 5px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        form {
            display: inline;
        }

        a {
            color: #0066cc;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        @media (max-width: 768px) {
            table th, table td {
                font-size: 12px;
                padding: 10px;
            }

            h2 {
                font-size: 20px;
            }

            input[type="number"] {
                width: 50px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Submissions for Faculty ID: ${facultyId}</h2>
        <table>
            <thead>
                <tr>
                    <!-- <th>Student ID</th> -->
                    <th>Description</th>
                    <th>Milestones</th>
                    <th>Modules</th>
                    <th>Resources</th>
                    <th>URL</th>
                    <th>Feedback</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${projects}" var="project">
                    <tr>
                        <%-- <td>${project.student}</td> --%>
                        <td>${project.description}</td>
                        <td>${project.milestones}</td>
                        <td>${project.modules}</td>
                        <td>${project.resources}</td>
                        <td><a href="${project.url}" target="_blank">${project.url}</a></td>
                        <td>
                            <c:if test="${project.feedback != null}">
                                ${project.feedback}
                            </c:if>
                            <c:if test="${project.feedback == null}">
                                Not Rated
                            </c:if>
                        </td>
                        <td>
                            <form action="submitFeedback" method="post">
                                <input type="hidden" name="projectId" value="${project.projectid}" />
                                <input type="number" name="feedback" min="1" max="100" required />
                                <button type="submit" class="btn">Submit Feedback</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
