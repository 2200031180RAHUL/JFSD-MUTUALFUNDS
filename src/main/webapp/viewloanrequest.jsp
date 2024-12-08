<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View All Loan Requests</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<%@include file="lendernav.jsp" %>
<body>
<div class="container mt-5">
    <h2 class="text-center">All Loan Requests</h2>
    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>UserId</th>
            <th>Loan Amount</th>
            <th>Purpose</th>
            <th>Loan Term</th>
            <th>Annual Interest</th>
            <th>Request Date</th>
            <th>Annual Income</th>
            <th>Status</th>
             <th>Verification Status</th>
             <th>Delete</th>
             <th>View More Details</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="loan" items="${loanrequestlist}">
       
            <tr>
                <td>${loan.id}</td>
                <td>${loan.name}</td>
                 <td>${loan.userId}</td>
                <td>${loan.loanAmount}</td>
                <td>${loan.purpose}</td>
                <td>${loan.loanTerm}</td>
                <td>${loan.annualInterest}</td>
                <td>${loan.requestDate}</td>
                <td>${loan.annualIncome}</td>
                
                    <td>
                    <c:choose>
                        <c:when test="${loan.status}">
                            <span class="badge badge-success">Verified</span>
                        </c:when>
                        <c:otherwise>
                            <span class="badge badge-danger">Not Verified</span>
                        </c:otherwise>
                    </c:choose>
                </td>
               <td>
             <c:if test="${!loan.status}">
             <a href="verifyloan?id=${loan.id}" class="btn btn-success">Verify</a> <!-- Corrected link -->
            </c:if>
         </td>
        <td>
      <a href="deleteloan?id=${loan.id}" class="btn btn-danger" 
         onclick="return confirm('Are you sure you want to delete this user?');">
        Delete
    </a>
</td>
        <td>
          <a href="viewmoredetails?UserId=${loan.userId}" class="btn btn-info">View More Details</a>
          </td>
               
            </tr>
          
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
