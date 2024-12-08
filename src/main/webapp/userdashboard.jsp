<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Borrower Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
        }
        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #343a40;
            color: #fff;
            padding-top: 20px;
            position: fixed;
        }
        .sidebar a, .dropdown-item {
            color: #ddd;
            padding: 15px;
            text-decoration: none;
            display: block;
        }
        .sidebar a:hover, .dropdown-item:hover {
            background-color: #495057;
        }
        .content {
            margin-left: 250px;
            padding: 20px;
            width: 100%;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .card h5 {
            font-weight: bold;
        }
        .row > .col-md-4 {
            display: flex;
        }
    </style>
</head>
<body>

    <!-- Include the Navigation Bar -->
    <%@ include file="usernav.jsp" %>

    <div class="content">
        <div class="row">
            <!-- Loan Requests Card -->
            <div class="col-md-4 d-flex">
                <div class="card p-4 mb-4 w-100 h-100">
                    <h5>Investments</h5>
                    <p>Investment involves using your money to purchase assets—such as stocks, bonds, mutual funds, or real estate.</p>
                    <a href="loanrequest" class="btn btn-primary">New Investments</a>
                </div>
            </div>

            <!-- Approved Loans Card -->
            <div class="col-md-4 d-flex">
                <div class="card p-4 mb-4 w-100 h-100">
                    <h5>Your Investments</h5>
                    <p>A record of past investments you’ve made, including the types of assets you invested in, the amount invested, and the returns or losses that resulted.</p>
                    <a href="loanrequestuserid" class="btn btn-success">Check your Investments</a>
                </div>
            </div>

            <!-- Payment History Card -->
            <div class="col-md-4 d-flex">
                <div class="card p-4 mb-4 w-100 h-100">
                    <h5>History</h5>
                    <p>Progress toward financial goals, identifying patterns, and learning from successes and mistakes.</p>
                    <a href="#" class="btn btn-warning">Check Payments</a>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
