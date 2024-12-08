<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Users</title>
    <style>
        /* General styling */
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 20px;
        }

        h3 {
            text-align: center;
            font-size: 28px;
            color: #333;
            text-transform: uppercase;
            margin-bottom: 30px;
        }

        /* Table styling */
        table {
            width: 100%;
            max-width: 1500px;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            font-size: 16px;
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
            font-weight: 600;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
            cursor: pointer;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            th, td {
                padding: 10px;
                font-size: 14px;
            }

            h3 {
                font-size: 24px;
            }
        }

        @media (max-width: 480px) {
            table, th, td {
                display: block;
                width: 100%;
            }

            th, td {
                text-align: right;
                padding: 10px;
                font-size: 14px;
                border-bottom: 1px solid #ddd;
            }

            th::before, td::before {
                content: attr(data-label);
                float: left;
                font-weight: bold;
                text-transform: uppercase;
            }

            th {
                display: none; /* Hide table headers */
            }

            tr {
                margin-bottom: 15px;
                display: block;
                border: 1px solid #ddd;
            }
        }
    </style>
</head>
<body>
    
    <h3><u>View All USERS</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Date of Birth</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Verification Status</th>
            <th>Verify</th>
            
            <th>Delete</th>
        </tr>
        <c:forEach items="${userlist}" var="user">
            <tr>
        
                <td data-label="Id"><c:out value="${user.id}"/></td>
                <td data-label="Name"><c:out value="${user.name}"/></td>
                <td data-label="Gender"><c:out value="${user.gender}"/></td>
                <td data-label="DateOfBirth"><c:out value="${user.dateofbirth}"/></td>
                <td data-label="Email"><c:out value="${user.email}"/></td>
                <td data-label="PhoneNumber"><c:out value="${user.phonenumber}"/></td>
                <td>
                    <c:choose>
                        <c:when test="${user.verified}">
                            <span class="badge badge-success">Verified</span>
                        </c:when>
                        <c:otherwise>
                            <span class="badge badge-danger">Not Verified</span>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <c:if test="${!user.verified}">
                        <a href="verifyuser?id=${user.id}" class="btn btn-success">Verify</a>
                    </c:if>
                </td>
               
                <td>
                    <a href="deleteuser?id=${user.id}" class="btn btn-danger" 
                       onclick="return confirm('Are you sure you want to delete this user?');">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
