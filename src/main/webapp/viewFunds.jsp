<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Mutual Funds</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Light blue background */
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background-color: #ffffff; /* White background */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        .header {
            background-color: #007acc; /* Blue header */
            color: white;
            text-align: center;
            padding: 15px;
        }
        .header h1 {
            margin: 0;
        }
        .table-container {
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #dddddd;
        }
        th {
            background-color: #007acc;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #e0f7ff;
        }
        .risk-low {
            color: green;
        }
        .risk-medium {
            color: orange;
        }
        .risk-high {
            color: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Available Mutual Funds for Investment</h1>
        </div>
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Fund Name</th>
                        <th>Company</th>
                        <th>Shares (in Units)</th>
                        <th>Interest Rate (%)</th>
                        <th>Risk Level</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Equity Growth Fund</td>
                        <td>ABC Investments</td>
                        <td>500</td>
                        <td>12.5</td>
                        <td class="risk-high">High</td>
                    </tr>
                    <tr>
                        <td>Balanced Wealth Fund</td>
                        <td>XYZ Mutuals</td>
                        <td>800</td>
                        <td>8.0</td>
                        <td class="risk-medium">Medium</td>
                    </tr>
                    <tr>
                        <td>Secure Income Fund</td>
                        <td>SecureInvest Ltd.</td>
                        <td>1000</td>
                        <td>6.0</td>
                        <td class="risk-low">Low</td>
                    </tr>
                    <tr>
                        <td>Global Equity Fund</td>
                        <td>WorldWide Mutuals</td>
                        <td>600</td>
                        <td>10.0</td>
                        <td class="risk-medium">Medium</td>
                    </tr>
                    <tr>
                        <td>Dynamic Bond Fund</td>
                        <td>FlexiInvest</td>
                        <td>750</td>
                        <td>7.5</td>
                        <td class="risk-low">Low</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
