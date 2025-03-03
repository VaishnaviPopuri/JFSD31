<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Success</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f3f0ff;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .card {
        background-color: #ffffff;
        padding: 30px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        text-align: center;
        width: 400px;
    }

    .message {
        font-size: 18px;
        color: #333;
        margin-bottom: 20px;
    }

    .back-link {
        font-size: 16px;
        color: #007BFF;
        text-decoration: none;
        font-weight: bold;
    }

    .back-link:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="card">
        <div class="message">
            <c:out value="${message}"></c:out>
        </div>
        <a class="back-link" href="adminhome">Back</a>
    </div>
</body>
</html>
