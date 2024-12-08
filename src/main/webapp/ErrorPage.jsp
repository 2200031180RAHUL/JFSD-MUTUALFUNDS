<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Login Fail</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        color: #333333;
        margin: 0;
        padding: 0;
    }
    h3 {
        color: #1E90FF; /* Medium blue */
        text-align: center;
        margin-top: 20%;
    }
    a {
        text-decoration: none;
        color: #333333;
        font-weight: bold;
        background-color: #d3d3d3; /* Light black */
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s ease, color 0.3s ease;
    }
    a:hover {
        background-color: #1E90FF; /* Medium blue */
        color: #ffffff;
    }
</style>
</head>
<body>
    <h3>
        <c:out value="${msg}"></c:out>
        <br><br>
        <a href="/">Go to Home page</a>
    </h3>
</body>
</html>
