<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View all Projects</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #333;
            color: #fff;
            font-size: 1.1em;
        }

        td {
            font-size: 1em;
            color: #555;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }

        tr:hover {
            background-color: #e0e0e0; /* Light gray for hover */
        }

        p.no-projects {
            text-align: center;
            color: #888;
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    
   <%@ include file="adminhome.jsp" %> 
   <h1>Project Submissions</h1>
        <table>
            <thead>
                <tr>
                 <th>Student ID</th>
                    <th>Project ID</th>
                    
                    <th>Description</th>
                    <th>Deployment Link</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="project" items="${projectlist}">
                    <tr>
                     <td>${project.student}</td>
                        <td>${project.projectid}</td>  
                        <td>${project.description}</td>
                        <td>${project.url}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    
</body>
</html>
