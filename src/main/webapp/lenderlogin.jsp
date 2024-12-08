<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Advisor Login</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        /* Form Container */
        .form-container {
            width: 100%;
            max-width: 480px;
            background: #ffffff;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
            transition: transform 0.3s ease-in-out;
            text-align: center;
        }

        .form-container:hover {
            transform: scale(1.02);
        }

        /* Heading */
        .form-container h2 {
            color: #333;
            font-size: 28px;
            font-weight: 600;
            margin-bottom: 30px;
        }

        /* Form Groups */
        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            display: block;
            color: #495057;
            font-size: 16px;
            font-weight: 500;
            margin-bottom: 8px;
        }

        /* Input Fields */
        .form-group input {
            width: 100%;
            padding: 14px;
            border: 2px solid #ced4da;
            border-radius: 8px;
            font-size: 16px;
            color: #495057;
            background-color: #f8f9fa;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        /* Focus States for Input Fields */
        .form-group input:focus {
            border-color: #80bdff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.2);
            outline: none;
        }

        /* Submit Button */
        .form-group button {
            width: 100%;
            padding: 14px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .form-group button:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        /* Register Link */
        .register-link {
            margin-top: 25px;
        }

        .register-link p {
            font-size: 16px;
            color: #6c757d;
        }

        .register-link a {
            color: #007bff;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        .register-link a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
    </style>
</head>
<body>
<%@ include file="mainnav.jsp" %>
<div class="form-container">
    <h2>Advisor Login</h2>
    <form action="/checkadvisorlogin" method="post">
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" maxlength="50" required>
        </div>
        
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" maxlength="20" required>
        </div>
        
        <div class="form-group">
            <button type="submit">Login</button>
        </div>
    </form>

    <div class="register-link">
        <p>Don’t have an account? <a href="advisorregister.jsp">Register here</a></p>
    </div>
</div>

</body>
</html>
