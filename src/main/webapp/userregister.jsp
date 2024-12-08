<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f2f2f2;
        }
        .form-container {
            width: 100%;
            max-width: 400px;
            background: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .form-container h2 {
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .form-group button:hover {
            background-color: #45a049;
        }
        .login-link {
            text-align: center;
            margin-top: 20px;
        }
        .login-link a {
            color: #4CAF50;
            text-decoration: none;
        }
        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
<%@ include file="mainnav.jsp" %>

<div class="form-container">
    <h2>Registration Form</h2>
    <form action="/insertuser" method="post">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" maxlength="50" required>
        </div>
        
        <div class="form-group">
            <label for="gender">Gender</label>
            <select id="gender" name="gender" required>
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>
        
        <div class="form-group">
            <label for="dateofbirth">Date of Birth</label>
            <input type="date" id="dateofbirth" name="dateofbirth" required>
        </div>
        
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" maxlength="30" required>
        </div>
        
        <div class="form-group">
            <label for="phonenumber">Phone Number</label>
            <input type="tel" id="phonenumber" name="phonenumber" maxlength="15" pattern="^\+?[0-9]{10,15}$" required>
        </div>
        
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" maxlength="15" required>
        </div>

        <div class="form-group">
            <button type="submit">Register</button>
        </div>
    </form>

    <div class="login-link">
        <p>Already have an account? <a href="userlogin.jsp">Login here</a></p>
    </div>
</div>

</body>
</html>
