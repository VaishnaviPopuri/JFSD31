<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Submissions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            text-align: left;
            padding: 12px;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f7f7f7;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>My Project Submissions</h2>
        <table>
            <thead>
                <tr>
                    <th>Description</th>
                    <th>Milestones</th>
                    <th>Modules</th>
                    <th>Resources</th>
                    <th>URL</th>
                    <th>Feedback</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${projects}" var="project">
                    <tr>
                        <td>${project.description}</td>
                        <td>${project.milestones}</td>
                        <td>${project.modules}</td>
                        <td>${project.resources}</td>
                        <td><a href="${project.url}" target="_blank">View</a></td>
                        <td>
                            <c:if test="${project.feedback != null}">
                                ${project.feedback} / 100
                            </c:if>
                            <c:if test="${project.feedback == null}">
                                Pending
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
