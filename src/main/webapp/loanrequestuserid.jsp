<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Loan Requests</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Your Loan Requests</h2>
    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Loan Amount</th>
            <th>Purpose</th>
            <th>Loan Term</th>
            <th>Annual Interest</th>
            <th>Request Date</th>
            <th>Annual Income</th>
            <th>Status</th>
            <th>AddMoreDetails</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="loan" items="${loanrequestlist}">
            <tr>
                <td>${loan.id}</td>
                <td>${loan.name}</td>
                <td>${loan.loanAmount}</td>
                <td>${loan.purpose}</td>
                <td>${loan.loanTerm}</td>
                <td>${loan.annualInterest}</td>
                <td>${loan.requestDate}</td>
                <td>${loan.annualIncome}</td>
                <td>
                    <c:choose>
                        <c:when test="${loan.status}">
                            <span class="badge badge-success">Approved</span>
                        </c:when>
                        <c:otherwise>
                            <span class="badge badge-warning">Pending</span>
                        </c:otherwise>
                    </c:choose>
                </td>
           
            <td>
                    <a href="addmoredetails.jsp?loanId=${loan.id}" class="btn btn-primary btn-sm">Add Details</a>
              </td>
               </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
