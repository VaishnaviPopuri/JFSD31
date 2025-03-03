<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>File Upload</title>
    <style>
        /* Add some basic styling */
        .form-container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        table {
            width: 100%;
        }
        td {
            padding: 8px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>

<h3 align="center"><u>Upload File</u></h3>

<br>

<form action="insertfile" method="post" enctype="multipart/form-data" class="form-container">

<table align="center">

<tr>
    <td><label for="projectid">Project ID</label></td>
    <td><input type="number" name="projectid" id="projectid" required="required" /></td>
</tr>

<tr><td></td></tr>

<tr>
    <td><label for="projecttitle">Project Title</label></td>
    <td><input type="text" name="projecttitle" id="projecttitle" required="required" /></td>
</tr>

<tr><td></td></tr>

<tr>
    <td><label for="projectdescription">Project Description</label></td>
    <td><textarea name="projectdescription" id="projectdescription" required="required"></textarea></td>
</tr>

<tr><td></td></tr>

<tr>
    <td><label for="file">Upload File</label></td>
    <td><input type="file" name="file" id="file" required="required" /></td>
</tr>

<tr><td></td></tr>

<tr align="center">
    <td colspan="2"><input type="submit" value="Upload" class="button"></td>
</tr>

</table>

</form>

</body>
</html>
