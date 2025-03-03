<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PortfolioHub - View File Details</title>

    <style>
        .file-details-container {
            width: 50%;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            background-color: #f9f9f9;
        }

        .file-details-container h2 {
            text-align: center;
            color: #333;
        }

        .file-details-container table {
            width: 100%;
            margin-top: 20px;
        }

        .file-details-container td {
            padding: 10px;
            font-size: 16px;
        }

        .file-details-container .button {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 25%;
            text-align: center;
            display: inline-block;
            margin-top: 20px;
        }

        .file-details-container .button:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>



<div class="file-details-container">
    <h2>File Details</h2>

    <table align="center">
        <tr>
            <td><strong>ID:</strong></td>
            <td><c:out value="${file.id}" /></td>
        </tr>
        <tr>
            <td><strong>Title:</strong></td>
            <td><c:out value="${file.title}" /></td>
        </tr>
        <tr>
            <td><strong>Description:</strong></td>
            <td><c:out value="${file.description}" /></td>
        </tr>
        <tr>
            <td><strong>Upload Date:</strong></td>
            <td><c:out value="${file.uploadDate}" /></td>
        </tr>
        <tr>
            <td><strong>Download Link:</strong></td>
            <td>
                <a href="<c:url value='${file.fileUrl}' />" class="button" target="_blank">Download File</a>
            </td>
        </tr>
    </table>
</div>

</body>
</html>
