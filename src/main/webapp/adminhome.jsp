<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        /* Global styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Sidebar styles */
        .sidebar {
            height: 100vh;
            width: 250px;
            background-color: #343a40;
            padding: 20px;
            position: fixed;
            transition: width 0.3s;
            overflow: auto; /* Allow scrolling if content overflows */
        }

        .sidebar h2 {
            color: #ffffff;
            text-align: center;
            margin-bottom: 30px;
            font-size: 24px;
        }

        .sidebar a {
            display: block;
            color: #b7b9bc;
            padding: 12px 15px;
            margin-bottom: 15px;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .sidebar a:hover {
            background-color: #007bff;
            color: white;
        }

        /* Dropdown styles */
        .dropdown {
            position: relative;
        }

        .dropdown-toggle {
            display: block;
            color: #b7b9bc;
            padding: 12px 15px; /* Increased padding for better touch area */
            margin-bottom: 15px;
            text-decoration: none;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.1); /* Slight background color for contrast */
            transition: background 0.3s;
        }

        .dropdown-toggle:hover {
            background-color: rgba(255, 255, 255, 0.2); /* Highlight on hover */
        }

        .dropdown-content {
            display: none;
            position: absolute;
            left: 0;
            background-color: #ffffff;
            min-width: 220px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            z-index: 1;
            border-radius: 5px; /* Rounded corners */
            margin-top: 5px; /* Space between toggle and dropdown */
        }

        .dropdown-content a {
            color: #007bff;
            padding: 12px 15px; /* Increased padding for better spacing */
            text-decoration: none;
            display: block;
            transition: background 0.3s;
        }

        .dropdown-content a:hover {
            background-color: #e7f3ff; /* Light blue background on hover */
            color: #0056b3; /* Darker text color on hover */
        }

        .dropdown:hover .dropdown-content {
            display: block; /* Show dropdown on hover */
        }

        /* Main content styles */
        .main {
            margin-left: 250px;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        /* Card styles */
		.dashboard-cards {
		    display: flex;
		    flex-wrap: wrap;
		    justify-content: space-around;
		    margin: 0 -15px;
		}

		.card {
		    background: white;
		    border-radius: 10px;
		    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
		    padding: 30px; /* Increased padding for larger content area */
		    margin: 15px;
		    width: 300px; /* Increased width */
		    transition: transform 0.3s, box-shadow 0.3s;
		    text-align: center;
		}

		.card:hover {
		    transform: translateY(-5px); /* Slight lift effect on hover */
		    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
		}

		.card h3 {
		    color: #007bff;
		    margin-bottom: 15px; /* Increased margin for spacing */
		    font-size: 20px; /* Adjusted font size */
		}

		.card p {
		    margin-bottom: 20px; /* Increased spacing below paragraph */
		    font-size: 16px; /* Adjusted font size */
		    color: #666;
		}

		.btn {
		    background-color: #007bff;
		    color: white;
		    padding: 12px 20px; /* Adjusted padding for larger buttons */
		    border: none;
		    border-radius: 5px;
		    text-decoration: none;
		    transition: background-color 0.3s;
		    font-size: 16px; /* Slightly larger font */
		}

		.btn:hover {
		    background-color: #0056b3;
		}


        /* Responsive adjustments */
        @media (max-width: 768px) {
            .sidebar {
                width: 200px;
            }

            .main {
                margin-left: 200px;
            }

            .dashboard-cards {
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 90%;
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>Bond Funds</h2>
        <a href="#">Dashboard</a>
        <div class="dropdown">
            <a href="#" class="dropdown-toggle">Manage Users</a>
            <div class="dropdown-content">
                <a href="viewAllUsers.jsp">View All Users</a>
                <a href="updateUser.jsp">Update User</a>
                <a href="deleteUser.jsp">Delete User</a>
            </div>
        </div>
        <a href="#">Manage Funds</a>
        <a href="#">Manage Fund Advisors</a>
        <a href="#">Feedback and Reviews</a>
    </div>

    <div class="main">
        <h1>Admin Dashboard</h1>
        <div class="dashboard-cards">
            <div class="card">
                <h3>Manage Users</h3>
                <p>View and manage all registered users in the system.</p>
                <a href="viewallusers" class="btn">View Users</a>
            </div>
            <div class="card">
                <h3>Manage Funds</h3>
                <p>View and manage all registered funds in the system.</p>
                <a href="viewFunds.jsp" class="btn">View Funds</a>
            </div>
            <div class="card">
                <h3>Manage Advisors</h3>
                <p>View and manage all registered fund advisors.</p>
                <a href="viewAdvisors.jsp" class="btn">View Advisors</a>
            </div>
        </div>
    </div>
</body>
</html>
